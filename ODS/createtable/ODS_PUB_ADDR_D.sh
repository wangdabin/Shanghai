hive  -e  "
use ods;
create table  ODS_PUB_ADDR_D 
(
 ACCT_MONTH      string  comment  'ACCT_MONTH',
  DAY_ID         string  comment  'DAY_ID',
  ADDR_ID        string  comment  'ADDR_ID',
  DISTRICT_ID    string  comment  'DISTRICT_ID',
  ROAD_ID        string  comment  'ROAD_ID',
  LOCATION_ID    string  comment  'LOCATION_ID',
  ADDR_DESC      string  comment  'ADDR_DESC',
  STATE          string  comment  'STATE',
  REMARKS        string  comment  'REMARKS',
   EXCH_ID       string  comment  'EXCH_ID'
)
comment '[MASTER_FIELD:B域,LEVEL:ODS层,DATA_FIELD:公共域,DATASUB_FIELD:ODS_PUB_ADDR_D]'
PARTITIONED BY (MONTH_PART STRING comment '月份分区',DAY_PART STRING comment '日期分区')
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\001' 
STORED AS RCFILE;
"