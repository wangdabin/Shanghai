#!/bin/bash
###################################################################
#*名称 --%@NAME:P_ODS_BUS_SERVICE_CIRCUIT_D
#*功能描述 --%@COMMENT: 无
#*执行周期 --%@PERIOD:日
#*参数 --%@PARAM:V_DATE 帐期 YYYYMMDD
#*参数 --%@PARAM:V_MONTH 月份 YYYYMM
#*参数 --%@PARAM:V_DAY 当天 DD
#*创建人 --%@CREATOR: BATCH 
#*迁移人 --%@MOVER:曹丙瑞
#*创建时间 --%@CREATED_TIME: 2014-03-18 
#*层次---%@LEVEL:ODS层 
#*主题域---%@MASTER_FIELD:营业域
#*备注 --%@REMARK: 重建数据仓库批量创建过程
#*修改记录 --%@MODIFY: 暂无
#*所属于实体--%@ENTITY: 
#*来源表 --%@FROM:SRC.D_OMS_SERVICE_CIRCUIT_INFO
#*目标表 --%@TO:ODS.ODS_BUS_SERVICE_CIRCUIT_D
####################################################################

#读取日期参数
v_date=$1

#指定此脚本目标数据表，此变量很重要，请必须正确填写!!!!!
table_name='ODS_BUS_SERVICE_CIRCUIT_D'

#指定此脚本名称，此变量很重要，请必须正确填写!!!!!
typeset -u v_procname
v_procname='P_'$table_name
echo $v_procname
#指定此脚本所属数据库名称(等同于oracle中用户名)，此变量很重要，请必须正确填写!!!!!
typeset -u v_pkg='ods'

echo $v_pkg


#定义记录数据记录条数的变量
rowline=0

#切分数据账期，此变量很重要，请必须正确填写!!!!!
v_month=`echo $v_date |cut -c 1-6`
v_day=`echo $v_date |cut -c 7-8`


#################读取配置文件信息####################
#指定配置文件存放位置，此变量非常重要，请必须填写!!!!!!
typeset -l v_pkg=$v_pkg
config_file="/shbigdata/"$v_pkg"/config/execshell.config"
echo $config_file

typeset -u v_pkg=$v_pkg
#读取HIVE脚本执行日志存放目录
log_file_directory=`awk -F= '{if($1 =="log_file_directory") print $2}' $config_file`


#指定输出日志目录，用于记录hive脚本执行信息
v_logfile=$log_file_directory$v_procname'.log'

#读取ORACLE客户端环境变量，并加载，此处export后边的ORACLE_SID、ORACLE_BASE、ORACLE_HOME、PATH、LD_LIBRARY_PATH需要大写
oracle_sid=`awk -F= '{if($1 =="oracle_sid") print $2}' $config_file`
export ORACLE_SID=$oracle_sid

oracle_base=`awk -F= '{if($1 =="oracle_base") print $2}' $config_file`
export ORACLE_BASE=$oracle_base

oracle_home=`awk -F= '{if($1 =="oracle_home") print $2}' $config_file`
export ORACLE_HOME=$oracle_home

export PATH=$PATH:$HOME/bin:$oracle_home/bin
export LD_LIBRARY_PATH=$oracle_home/lib:/usr/lib

#读取ORACLE日志过程的名称、所属用户，以及TNS名称
ora_log_user=`awk -F= '{if($1 =="ora_log_user") print $2}' $config_file`
ora_log_user_passwd=`awk -F= '{if($1 =="ora_log_user_passwd") print $2}' $config_file`
ora_log_tns=`awk -F= '{if($1 =="ora_log_tns") print $2}' $config_file`
insert_log_prc=`awk -F= '{if($1 =="insert_log_prc") print $2}' $config_file`
update_log_prc=`awk -F= '{if($1 =="update_log_prc") print $2}' $config_file`


#执行日志插入过程
v_insert_log_sql="EXECUTE DECLARE BEGIN $ora_log_user.$insert_log_prc('$v_date','$v_pkg','$v_procname','12',sysdate); END;"

pram_database_config=`sqlplus -S $ora_log_user/$ora_log_user_passwd@$ora_log_tns << !
$v_insert_log_sql
exit
!`

#插入数据,此处代码为业务逻辑，需要根据实际情况修改!!!!!!!!
#读取业务脚本存放目录
business_sql_directory=`awk -F= '{if($1 =="business_sql_directory") print $2}' $config_file`

#此处需要指定对应SQL脚本中的输入参数，非常重要，必须准确填写!!!!!!!
v_sql=`sh $business_sql_directory$v_procname'_SQL.sh' $v_month $v_day`

#Hive调用业务逻辑脚本，进行数据加工作业
hive -e "
use $v_pkg;
$v_sql
" 2>&1 |tee $v_logfile >>/dev/null

#获取sql执行结果信息
  v_result=`cat $v_logfile | grep -s "FAILED" | awk -F ":" '{print $1}'` >>/dev/null



#判断数据是否导出成功
if [ "$v_result" != "FAILED" ]; then
     v_retcode='SUCCESS'
     v_retinfo='结束'
  else
     v_retcode='FAIL'
     v_retinfo=`cat $v_logfile | grep -s "FAILED"` >>/dev/null
 fi


#统计原数据库中记录数，此处需要指定数据库名、表名、查询的分区，此处必须正确修改!!!!!!!!
v_sql="select count(1) coun from $v_pkg.$table_name where month_part = '$v_month' and day_part = '$v_day'"

echo $v_sql

rowline=`hive -e  "$v_sql "
exit
!`


#对ORACLE日志表进行日志更新操作
v_update_log_sql="EXECUTE DECLARE BEGIN $ora_log_user.$update_log_prc('$v_date','$v_pkg','$v_procname','$v_retcode','$v_retinfo',sysdate,$rowline); END;"

#读取ORACLE数据库字符集
charset=`awk -F= '{if($1 =="charset") print $2}' $config_file`
export NLS_LANG="AMERICAN_AMERICA."$charset

pram_database_config=`sqlplus -S $ora_log_user/$ora_log_user_passwd@$ora_log_tns << !
$v_update_log_sql
exit
!`

