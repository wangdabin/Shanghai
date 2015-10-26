#/bin/bash

#业务逻辑输入参数，此处很重要，需要根据实际业务情况认真设定！！！！ 
v_month=$1
v_day=$2
                   
echo "
insert overwrite table ODS.ODS_USR_CBSS_B2CUSER_D partition (month_part = '$v_month',day_part = '$v_day') 
    SELECT 
u_id,
subscription_id,
status,
service_num,
sim,
sim_flag,
num_flag,
create_time,
trans_time,
chg_time,
region_id,
office_id,
operator_id,
service_type,
subs_uid,
'$v_month',
'$v_day'
FROM SRC.CBSS_B2CUSER
    where 1=1;
"


