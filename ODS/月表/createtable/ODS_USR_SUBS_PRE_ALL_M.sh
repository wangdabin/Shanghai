hive  -e  "
use ods;
create table  ODS_USR_SUBS_PRE_ALL_M 
(

      ACCT_MONTH   string   comment   'ACCT_MONTH',
      RESERVED2   string   comment   'RESERVED2',
      BMS_ACCEPT_ID   string   comment   'BMS_ACCEPT_ID',
      COUNTY_ID   string   comment   'COUNTY_ID',
      OFFICE_ID   string   comment   'OFFICE_ID',
      OPERATOR_ID   string   comment   'OPERATOR_ID',
      CREATE_TIME   string   comment   'CREATE_TIME',
      BUSI_ID   string   comment   'BUSI_ID'
                  )
comment '[MASTER_FIELD:B域,LEVEL:ODS层,DATA_FIELD:用户域,DATASUB_FIELD:ODS_USR_SUBS_PRE_ALL_M]'
PARTITIONED BY (MONTH_PART STRING comment '月份分区')
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\001' 
STORED AS RCFILE;
"