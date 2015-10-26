hive  -e  "
use ods;
create table   ODS_USR_UCS_SUBS_OBJECT_D   
(
  ACCT_MONTH                string  comment  'ACCT_MONTH',
  DAY_ID                    string  comment  'DAY_ID',
  SUBS_OBJECT_UID           string  comment  'SUBS_OBJECT_UID',
  SUBS_SCHEME_ID            string  comment  'SUBS_SCHEME_ID',
  SUBSCRIPTION_ID           string  comment  'SUBSCRIPTION_ID',
  SERVICE_TYPE              string  comment  'SERVICE_TYPE',
  OBJECT_SELL_SERIAL        string  comment  'OBJECT_SELL_SERIAL',
  OBJECT_ID                 string  comment  'OBJECT_ID',
  OBJECT_TYPE               string  comment  'OBJECT_TYPE',
  OBJECT_ESN                string  comment  'OBJECT_ESN',
  OBJECT_SELL_PRICE         float  comment  'OBJECT_SELL_PRICE',
  OBJECT_COST_PRICE         float  comment  'OBJECT_COST_PRICE',
  OBJECT_STATUS             string  comment  'OBJECT_STATUS',
  CREATE_TIME               string  comment  'CREATE_TIME',
  ACTIVE_TIME               string  comment  'ACTIVE_TIME',
  INACTIVE_TIME             string  comment  'INACTIVE_TIME',
  REGION_ID                 string  comment  'REGION_ID',
  COUNTY_ID                 string  comment  'COUNTY_ID',
  OFFICE_ID                 string  comment  'OFFICE_ID',
  OPERATOR_ID               string  comment  'OPERATOR_ID',
   OBJECT_MEMO              string  comment  'OBJECT_MEMO'
)
comment '[MASTER_FIELD:B域,LEVEL:ODS层,DATA_FIELD:用户域,DATASUB_FIELD:ODS_USR_UCS_SUBS_OBJECT_D]'
PARTITIONED BY (MONTH_PART STRING comment '月份分区',DAY_PART STRING comment '日期分区')
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\001' 
STORED AS RCFILE;
"