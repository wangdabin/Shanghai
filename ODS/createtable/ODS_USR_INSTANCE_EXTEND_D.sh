hive  -e  "
use ods;
create table    ODS_USR_INSTANCE_EXTEND_D    
(
  ACCT_MONTH               string  comment  'ACCT_MONTH',
  DAY_ID                   string  comment  'DAY_ID',
  PRODUCT_INSTANCE_ID      string  comment  'PRODUCT_INSTANCE_ID',
  BUSNIESS_COMPLETE_DATE   string  comment  'BUSNIESS_COMPLETE_DATE',
  INTEGRAL_BILL            float  comment  'INTEGRAL_BILL',
  PRINT_LAST_DATE          string  comment  'PRINT_LAST_DATE',
  EKEY_STATE               string  comment  'EKEY_STATE',
  BESPEAK_CODE             string  comment  'BESPEAK_CODE',
   PI_ATTR                 string  comment  'PI_ATTR'
)
comment '[MASTER_FIELD:B域,LEVEL:ODS层,DATA_FIELD:用户域,DATASUB_FIELD:ODS_USR_INSTANCE_EXTEND_D]'
PARTITIONED BY (MONTH_PART STRING comment '月份分区',DAY_PART STRING comment '日期分区')
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\001' 
STORED AS RCFILE;
"
