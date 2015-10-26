hive  -e  "
use ods;
create table   ODS_USR_UCS_SUBS_RELA_D    
(

  ACCT_MONTH              string  comment  'ACCT_MONTH',
  DAY_ID                  string  comment  'DAY_ID',
  SUBSCRIPTION_ID1        string  comment  '主卡',
  SUBSCRIPTION_ID2        string  comment  '副卡',
  RELA                    string  comment  'RELA',	
  OTHER_VALUE	          string  comment  'OTHER_VALUE',
  SERVICE_NUM1	          string  comment  'SERVICE_NUM1',	
  SERVICE_NUM2	          string  comment  'SERVICE_NUM2',	
  CREATE_TIME	          string  comment  'CREATE_TIME',		
  ACTIVE_TIME	          string  comment  'ACTIVE_TIME',		
  INACTIVE_TIME	          string  comment  'INACTIVE_TIME',		
  ABS_ACTIVE_TIME         string  comment  'ABS_ACTIVE_TIME',		
  ABS_INACTIVE_TIME       string  comment  'ABS_INACTIVE_TIME',		
  REGION_ID               string  comment  'REGION_ID',		
  COUNTY_ID               string  comment  'COUNTY_ID',		
  OFFICE_ID               string  comment  'OFFICE_ID',		
  OPERATOR_ID             string  comment  'OPERATOR_ID',		
  STATUS                  string  comment  'STATUS'		
)
comment '[MASTER_FIELD:B域,LEVEL:ODS层,DATA_FIELD:用户域,DATASUB_FIELD:ODS_USR_UCS_SUBS_RELA_D]'
PARTITIONED BY (MONTH_PART STRING comment '月份分区',DAY_PART STRING comment '日期分区')
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\001' 
STORED AS RCFILE;
"