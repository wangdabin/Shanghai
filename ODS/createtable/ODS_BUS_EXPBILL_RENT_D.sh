hive  -e  "
use ods;
create table   ODS_BUS_EXPBILL_RENT_D    
(
 
  ACCT_MONTH     string  comment    'ACCT_MONTH',
  DAY_ID         string  comment    'DAY_ID',
  C1             string  comment    'C1',
  C2             string  comment    'C2',
  C3             string  comment    'C3',
  C4             string  comment    'C4',
  C5             string  comment    'C5',
  C6             string  comment    'C6',
  C7             string  comment    'C7',
  C8             string  comment    'C8',
  C9             string  comment    'C9',
  C10            string  comment    'C10',
  C11            string  comment    'C11',
  C12            string  comment    'C12',
  C13            string  comment    'C13',
  C14            string  comment    'C14',
  C15            string  comment    'C15',
  C16            string  comment    'C16',
  C17            string  comment    'C17'
)
comment '[MASTER_FIELD:B域,LEVEL:ODS层,DATA_FIELD:营业域,DATASUB_FIELD:ODS_BUS_EXPBILL_RENT_D]'
PARTITIONED BY (MONTH_PART STRING comment '月份分区',DAY_PART STRING comment '日期分区')
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\001' 
STORED AS RCFILE;
"