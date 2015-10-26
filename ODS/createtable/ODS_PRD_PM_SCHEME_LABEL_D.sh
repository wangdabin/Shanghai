hive  -e  "
use ods;
create table   ODS_PRD_PM_SCHEME_LABEL_D 
(
 

  ACCT_MONTH             string  comment  'ACCT_MONTH',
  DAY_ID                 string  comment  'DAY_ID',
  SCHEME_ID              string  comment  'SCHEME_ID',
  SCHEME_LABEL_ID        string  comment  'SCHEME_LABEL_ID',
  SCHEME_LABEL_VALUE     string  comment  'SCHEME_LABEL_VALUE',
  CREATE_TIME            string  comment  'CREATE_TIME',
  CHANGE_TIME            string  comment  'CHANGE_TIME',
  OP_OPERATOR_ID         string  comment  'OP_OPERATOR_ID',
   RE_DESC               string  comment  'RE_DESC'
)
comment '[MASTER_FIELD:B域,LEVEL:ODS层,DATA_FIELD:产品域,DATASUB_FIELD:ODS_PRD_PM_SCHEME_LABEL_D]'
PARTITIONED BY (MONTH_PART STRING comment '月份分区',DAY_PART STRING comment '日期分区')
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\001' 
STORED AS RCFILE;
"