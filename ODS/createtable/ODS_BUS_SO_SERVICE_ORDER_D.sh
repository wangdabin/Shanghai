hive  -e  "
use ods;
create table   ODS_BUS_SO_SERVICE_ORDER_D
(

     ACCT_MONTH             string   comment  'ACCT_MONTH',
     DAY_ID                 string   comment  'DAY_ID',
     ID                     string   comment  'ID',
     SO_SUB_ORDER_ID        string   comment  'SO_SUB_ORDER_ID',
     SERVICE_ID             string   comment  'SERVICE_ID',
     SERVICE_TABLE_CODE     string   comment  'SERVICE_TABLE_CODE',
     STATE                  string   comment  'STATE',
     REMARKS                string   comment  'REMARKS',
     DEL_FLAG               string   comment  'DEL_FLAG'
)
comment '[MASTER_FIELD:B域,LEVEL:ODS层,DATA_FIELD:营业域,DATASUB_FIELD:ODS_BUS_SO_SERVICE_ORDER_D]'
PARTITIONED BY (MONTH_PART STRING comment '月份分区',DAY_PART STRING comment '日期分区')
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\001' 
STORED AS RCFILE;
"