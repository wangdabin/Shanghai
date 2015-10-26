hive  -e  "
use ods;
create table    ODS_USR_CBSS_B2CUSER_D    
(
  U_ID                string  comment  'U_ID',
  SUBSCRIPTION_ID     string  comment  'SUBSCRIPTION_ID',
  STATUS              string  comment  '1 已生效订单 0 预约为生效订单 4 失效订单 2 测试',
  SERVICE_NUM         string  comment  'SERVICE_NUM',
  SIM                 string  comment  'SIM',
  SIM_FLAG            string  comment  'SIM_FLAG',
  NUM_FLAG            string  comment  'NUM_FLAG',
  CREATE_TIME         string  comment  'CREATE_TIME',
  TRANS_TIME          string  comment  'TRANS_TIME',
  CHG_TIME            string  comment  'CHG_TIME',
  REGION_ID           string  comment  'REGION_ID',
  OFFICE_ID           string  comment  'OFFICE_ID',
  OPERATOR_ID         string  comment  'OPERATOR_ID',
  SERVICE_TYPE        string  comment  'SERVICE_TYPE',
  SUBS_UID            string  comment  'SUBS_UID',
  ACCT_MONTH          string  comment  'ACCT_MONTH',
   DAY_ID             string  comment  'DAY_ID'
)
comment '[MASTER_FIELD:B域,LEVEL:ODS层,DATA_FIELD:用户域,DATASUB_FIELD:ODS_USR_CBSS_B2CUSER_D]'
PARTITIONED BY (MONTH_PART STRING comment '月份分区',DAY_PART STRING comment '日期分区')
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\001' 
STORED AS RCFILE;
"
