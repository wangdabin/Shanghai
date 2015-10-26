hive  -e  "
use ods;
create table   ODS_PUB_TRAFFIC_D   
(
 
  ACCT_MONTH    string  comment  'ACCT_MONTH',
  DAY_ID        string  comment  'DAY_ID',
  C1            string  comment  'C1',
  C2            string  comment  'C2',
  C3            string  comment  'C3',
  C4            string  comment  'C4'
)
comment '[MASTER_FIELD:B域,LEVEL:ODS层,DATA_FIELD:公共域,DATASUB_FIELD:ODS_PUB_TRAFFIC_D]'
PARTITIONED BY (MONTH_PART STRING comment '月份分区',DAY_PART STRING comment '日期分区')
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\001' 
STORED AS RCFILE;
"