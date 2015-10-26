hive  -e  "
use ods;
create table   ODS_USR_GRP_SUBS_IND_REL_D    
(

  ACCT_MONTH             string  comment  'ACCT_MONTH',
  DAY_ID                 string  comment  'DAY_ID',
  MEMBER_SUBS_ID         string  comment  'MEMBER_SUBS_ID',
  INDUSTRY_TYPE_ID       string  comment  'INDUSTRY_TYPE_ID',
  INDUSTRY_KIND_ID       string  comment  'INDUSTRY_KIND_ID',
  INDUSTRY_KIND_NAME     string  comment  'INDUSTRY_KIND_NAME',
  BUSISN                 string  comment  'BUSISN',
  OPER_USER              string  comment  'OPER_USER',
  IN_DATE                string  comment  'IN_DATE',
  REMARK                 string  comment  'REMARK'
)
comment '[MASTER_FIELD:B域,LEVEL:ODS层,DATA_FIELD:用户域,DATASUB_FIELD:ODS_USR_GRP_SUBS_IND_REL_D]'
PARTITIONED BY (MONTH_PART STRING comment '月份分区',DAY_PART STRING comment '日期分区')
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\001' 
STORED AS RCFILE;
"
