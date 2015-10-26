hive  -e  "
use ods;
create table  ODS_RES_NUMBER_ORDER_M  
(

      ACCT_MONTH   string   comment   'ACCT_MONTH',
      ORDER_UNIQUE_ID   string   comment   'ORDER_UNIQUE_ID',
      SVC_NUMBER   string   comment   'SVC_NUMBER',
      NUMBER_STATUS   string   comment   'NUMBER_STATUS',
      BMS_ACCEPT_ID   string   comment   'BMS_ACCEPT_ID',
      ORDER_ID   string   comment   'ORDER_ID',
      ORDER_CHANNEL   string   comment   'ORDER_CHANNEL',
      ORDER_SEQ_ID   string   comment   'ORDER_SEQ_ID',
      PRODUCT_ID   string   comment   'PRODUCT_ID',
      MIN_FEE   decimal(20,3)   comment   'MIN_FEE',
      ONNET_TIME   decimal(20,3)   comment   'ONNET_TIME',
      DEPOSIT_FEE   decimal(20,3)   comment   'DEPOSIT_FEE',
      REGION_ID   string   comment   'REGION_ID',
      COUNTY_ID   string   comment   'COUNTY_ID',
      OFFICE_ID   string   comment   'OFFICE_ID',
      NUM_RULE   string   comment   'NUM_RULE',
      USER_NAME   string   comment   'USER_NAME',
      CERT_TYPE   string   comment   'CERT_TYPE',
      CERT_NUM   string   comment   'CERT_NUM',
      CONTACT_NUM   string   comment   'CONTACT_NUM',
      ACTIVE_TIME   string   comment   'ACTIVE_TIME',
      INACTIVE_TIME   string   comment   'INACTIVE_TIME',
      CREATE_TIME   string   comment   'CREATE_TIME',
      PROV_PRODUCT_ID   string   comment   'PROV_PRODUCT_ID',
      SCHEME_ID   string   comment   'SCHEME_ID',
      OLD_NUMBER_STATUS   string   comment   'OLD_NUMBER_STATUS',
      RESERVED1   string   comment   'RESERVED1',
      PROV_CODE   string   comment   'PROV_CODE',
      CITY_CODE   string   comment   'CITY_CODE',
      COUNTY_CODE   string   comment   'COUNTY_CODE',
      SERVICE_STATUS_TYPE   string   comment   'SERVICE_STATUS_TYPE',
      OPT_PRODUCT_ID   string   comment   'OPT_PRODUCT_ID',
      OPT_PRODUCT_NAME   string   comment   'OPT_PRODUCT_NAME',
      FIRST_MON_BILL_MODE   string   comment   'FIRST_MON_BILL_MODE'
                  )
comment '[MASTER_FIELD:B域,LEVEL:ODS层,DATA_FIELD:资源域,DATASUB_FIELD:ODS_RES_NUMBER_ORDER_M]'
PARTITIONED BY (MONTH_PART STRING comment '月份分区')
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\001' 
STORED AS RCFILE;
"