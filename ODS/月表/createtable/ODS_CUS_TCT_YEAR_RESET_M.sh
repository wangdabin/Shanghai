hive  -e  "
use ods;
create table  ODS_CUS_TCT_YEAR_RESET_M  
(

      ACCT_MONTH   string   comment   'ACCT_MONTH',
      USER_NO   string   comment   'USER_NO',
      YEAR   string   comment   'YEAR',
      CREDIT_VALUE   decimal(20,3)   comment   'CREDIT_VALUE',
      OPERATE_DATE   string   comment   'OPERATE_DATE',
      IS_RESTORE   string   comment   'IS_RESTORE',
      CALCULATE_MONTH   string   comment   'CALCULATE_MONTH'
            )
comment '[MASTER_FIELD:B域,LEVEL:ODS层,DATA_FIELD:客户域,DATASUB_FIELD:ODS_CUS_TCT_YEAR_RESET_M]'
PARTITIONED BY (MONTH_PART STRING comment '月份分区')
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\001' 
STORED AS RCFILE;
"