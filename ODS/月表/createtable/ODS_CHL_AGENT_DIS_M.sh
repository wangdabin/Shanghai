hive  -e  "
use ods;
create table  ODS_CHL_AGENT_DIS_M  
(

      ACCT_MONTH   string   comment   '按账期抽取，而不是自然月',
      SUBSCRIPTION_ID   string   comment   'SUBSCRIPTION_ID',
      SERVICE_NUM   string   comment   'SERVICE_NUM',
      DISCOUNT_FEE   decimal(20,3)   comment   'DISCOUNT_FEE',
      OPERATE_TIME   string   comment   'OPERATE_TIME',
      SVC_TYPE   string   comment   'SVC_TYPE',
      INSERT_TIME   string   comment   '从B侧抽取时间',
      FLAG   string   comment   'FLAG',
      ACTIVATED_MONTH   string   comment   'ACTIVATED_MONTH',
      PAR_VALUE   decimal(20,3)   comment   'PAR_VALUE'
            )
comment '[MASTER_FIELD:B域,LEVEL:ODS层,DATA_FIELD:渠道域,DATASUB_FIELD:ODS_CHL_AGENT_DIS_M]'
PARTITIONED BY (MONTH_PART STRING comment '月份分区')
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\001' 
STORED AS RCFILE;
"