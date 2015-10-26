hive  -e  "
use ods;
create table   ODS_BUS_ORDER_RES_RELA_D 
(

     ACCT_MONTH               string    comment    'ACCT_MONTH',
     DAY_ID                   string    comment    'DAY_ID',
     ID                       string    comment    'ID',
     ORDER_ID                 string    comment    'ORDER_ID',
     TASK_ID                  string    comment    'TASK_ID',
     BUSINESS_COMPLETE_DATE   string    comment    'BUSINESS_COMPLETE_DATE',
     BILLING_DATE             string    comment    'BILLING_DATE',
     PROC_CONTENT             string    comment     'PROC_CONTENT',
     STATE                    string    comment     'STATE',
     CREATE_DATE              string    comment      'CREATE_DATE',
     REMARKS                  string    comment      'REMARKS'
)
comment '[MASTER_FIELD:B域,LEVEL:ODS层,DATA_FIELD:营业域,DATASUB_FIELD:ODS_BUS_ORDER_RES_RELA_D]'
PARTITIONED BY (MONTH_PART STRING comment '月份分区',DAY_PART STRING comment '日期分区')
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\001' 
STORED AS RCFILE;
"