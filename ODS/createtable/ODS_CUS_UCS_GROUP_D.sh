hive  -e  "
use ods;
create table     ODS_CUS_UCS_GROUP_D    
(

 
  ACCT_MONTH                string comment     'ACCT_MONTH',
  DAY_ID                    string comment     'DAY_ID',
  SUBS_UNIQUE_ID            string comment     'SUBS_UNIQUE_ID',
  GROUP_ID                  string comment     'GROUP_ID',
  CONTRACT_ID               string comment     'CONTRACT_ID',
  ACCOUNT_ID                string comment     'ACCOUNT_ID',
  CUSTOMER_ID               string comment     'CUSTOMER_ID',
  SERVICE_NUM               string comment     'SERVICE_NUM',
  SERVICE_TYPE              string comment     'SERVICE_TYPE',
  SERVICE_STATUS            string comment     'SERVICE_STATUS',
  STATUS_CHG_DATE           string comment     'STATUS_CHG_DATE',
  STATUS_CHG_TYPE           string comment     'STATUS_CHG_TYPE',
  LAST_SERVICE_STATUS       string comment      'LAST_SERVICE_STATUS',
  LAST_STATUS_CHG_DATE      string comment      'LAST_STATUS_CHG_DATE',
  LAST_STATUS_CHG_TYPE      string comment      'LAST_STATUS_CHG_TYPE',
  USER_NAME                 string comment       'USER_NAME',
  USER_ADDR                 string comment     'USER_ADDR',
  USER_PASSWD               string comment     'USER_PASSWD',
  CREATE_DATE               string comment     'CREATE_DATE',
  ACTIVE_DATE               string comment     'ACTIVE_DATE',
  INACTIVE_DATE             string comment     'INACTIVE_DATE',
  NORMALIZE_DATE            string comment     'NORMALIZE_DATE',
  REMARK                    string comment     'REMARK',
  GUARANTOR_ID              string comment     'GUARANTOR_ID',
  REGION_ID                 string comment     'REGION_ID',
  COUNTY_ID                 string comment     'COUNTY_ID',
  OFFICE_ID                 string comment     'OFFICE_ID',
  OPERATOR_ID               string comment     'OPERATOR_ID',
  RELE_OFFICE_ID            string comment     'RELE_OFFICE_ID',
  RELE_COUNTY_ID            string comment     'RELE_COUNTY_ID',
  ACCT_TYPE                 string comment     'ACCT_TYPE',
  CREDIT_VALUE              string comment     'CREDIT_VALUE',
  JOIN_DATE                 string comment     'JOIN_DATE',
  BRAND_ID                  string comment     'BRAND_ID',
  PENDING_BUSI              string comment     'PENDING_BUSI',
  PENDING_ACCEPT_ID         string comment     'PENDING_ACCEPT_ID',
  CRM2_GRP_IID2             string comment     'CRM2_GRP_IID2',
   INERT_DATE               string comment     'INERT_DATE'
)
comment '[MASTER_FIELD:B域,LEVEL:ODS层,DATA_FIELD:客户域,DATASUB_FIELD:ODS_CUS_UCS_GROUP_D]'
PARTITIONED BY (MONTH_PART STRING comment '月份分区',DAY_PART STRING comment '日期分区')
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\001' 
STORED AS RCFILE;
"
