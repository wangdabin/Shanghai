hive  -e  "
use ods;
create table  ODS_RES_UCS_SUBS_MOBILE_M  
(

      ACCT_MONTH   string   comment   ' 账期',
      SUBS_MOBILE_ID   string   comment   'SUBS_MOBILE_ID',
      SUBS_SCHEME_ID   string   comment   '合约ID',
      SUBSCRIPTION_ID   string   comment   ' 用户编号',
      SERVICE_TYPE   string   comment   'SERVICE_TYPE',
      MOBILE_ID   string   comment   'MOBILE_ID',
      MOBILE_SELL_SERIAL   string   comment   'MOBILE_SELL_SERIAL',
      MOBILE_ESN   string   comment   ' 手机ESN号',
      MOBILE_SELL_PRICE   string   comment   'MOBILE_SELL_PRICE',
      MOBILE_COST_PRICE   string   comment   'MOBILE_COST_PRICE',
      MOBILE_MODEL   string   comment   'MOBILE_MODEL',
      MOBILE_CHANNEL   string   comment   'MOBILE_CHANNEL',
      MOBILE_COLOR   string   comment   'MOBILE_COLOR',
      CREATE_TIME   string   comment   '创建时间',
      ACTIVE_TIME   string   comment   ' 生效时间',
      INACTIVE_TIME   string   comment   '失效时间',
      REGION_ID   string   comment   'REGION_ID',
      COUNTY_ID   string   comment   'COUNTY_ID',
      OFFICE_ID   string   comment   'OFFICE_ID',
      OPERATOR_ID   string   comment   ' 操作员ID',
      MOBILE_RELE   string   comment   'MOBILE_RELE'
                  )
comment '[MASTER_FIELD:B域,LEVEL:ODS层,DATA_FIELD:资源域,DATASUB_FIELD:月手机合约表]'
PARTITIONED BY (MONTH_PART STRING comment '月份分区')
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\001' 
STORED AS RCFILE;
"