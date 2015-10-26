hive  -e  "
use ods;
create table  ODS_CDR_ROAM_GPRS_M 
(
      ACCT_MONTH   string   comment   'ACCT_MONTH',
      DAY_ID   string   comment   'DAY_ID',
      BILL_MONTH   string   comment   'BILL_MONTH',
      SVC_TYPE   string   comment   'SVC_TYPE',
      SUBSCRIPTION_ID   string   comment   'SUBSCRIPTION_ID',
      MDN   string   comment   'MDN',
      OCT   decimal(20,3)   comment   'OCT'
            )
comment '[MASTER_FIELD:B域,LEVEL:ODS层,DATA_FIELD:详单域,DATASUB_FIELD:ODS_CDR_ROAM_GPRS_M]'
PARTITIONED BY (MONTH_PART STRING comment '月份分区')
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\001' 
STORED AS RCFILE;
"