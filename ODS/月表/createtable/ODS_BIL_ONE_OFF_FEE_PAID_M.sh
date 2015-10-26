hive  -e  "
use ods;
create table  ODS_BIL_ONE_OFF_FEE_PAID_M  
(

      ACCT_MONTH   string   comment   'ACCT_MONTH',
      SERIAL_CODE   string   comment   'SERIAL_CODE',
      BMS_ACCEPT_ID   string   comment   'BMS_ACCEPT_ID',
      CYCLE_MONTH   string   comment   'CYCLE_MONTH',
      ACCOUNT_ID   string   comment   'ACCOUNT_ID',
      SUBSCRIPTION_ID   string   comment   'SUBSCRIPTION_ID',
      SVC_TYPE   string   comment   'SVC_TYPE',
      SUBJECT_ID   string   comment   'SUBJECT_ID',
      TRANS_FEE   decimal(20,3)   comment   'TRANS_FEE',
      RELE_FLAG   string   comment   'RELE_FLAG',
      CREATE_TIME   string   comment   'CREATE_TIME',
      REGION_ID   string   comment   'REGION_ID',
      OPERATOR_ID   string   comment   'OPERATOR_ID',
      OFFICE_ID   string   comment   'OFFICE_ID',
      COUNTY_ID   string   comment   'COUNTY_ID',
      OP_REGION_ID   string   comment   'OP_REGION_ID',
      REMARK   string   comment   'REMARK'
           )
comment '[MASTER_FIELD:B域,LEVEL:ODS层,DATA_FIELD:账务域,DATASUB_FIELD:ODS_BIL_ONE_OFF_FEE_PAID_M]'
PARTITIONED BY (MONTH_PART STRING comment '月份分区')
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\001' 
STORED AS RCFILE;
"