hive  -e  "
use ods;
create table   ODS_PRD_LARGE_TEXT_RECORD_D    
(
 
  ACCT_MONTH     string    comment  'ACCT_MONTH',
  DAY_ID         string    comment  'DAY_ID',
  RECORD_ID      string    comment  'RECORD_ID',
  TEXT_RECORD    string    comment  'TEXT_RECORD',
  STAFF_ID       string    comment  'STAFF_ID',
  STATE          string    comment  'STATE',
  STATE_DATE     string    comment  'STATE_DATE',
  DEL_FLAG       string    comment  'DEL_FLAG',
  REMARKS        string    comment  'REMARKS'
)
comment '[MASTER_FIELD:B域,LEVEL:ODS层,DATA_FIELD:产品域,DATASUB_FIELD:ODS_PRD_LARGE_TEXT_RECORD_D]'
PARTITIONED BY (MONTH_PART STRING comment '月份分区',DAY_PART STRING comment '日期分区')
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\001' 
STORED AS RCFILE;
"
