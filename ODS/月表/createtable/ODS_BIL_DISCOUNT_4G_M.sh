hive  -e  "
use ods;
create table  ODS_BIL_DISCOUNT_4G_M  
(
      ACCT_MONTH   string   comment   '统计账期',    
      SUBSCRIPTION_ID   string   comment   '用户编号',
      SERVICE_NUM   string   comment   '号码',
      DISCOUNT_FEE   decimal(20,3)   comment   '减收费',
      OPERATE_TIME   string   comment   '操作时间',
      SVC_TYPE   string   comment   '类型',
      BILL_MONTH   string   comment   '账月',
      PAR_VALUE   decimal(20,3)   comment   '原始面额',
      STATUS   string   comment   '返销标志 1：返销'
      )
comment '[MASTER_FIELD:B域,LEVEL:ODS层,DATA_FIELD:账务域,DATASUB_FIELD:ODS_BIL_DISCOUNT_4G_M]'
PARTITIONED BY (MONTH_PART STRING comment '月份分区')
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\001' 
STORED AS RCFILE;
"