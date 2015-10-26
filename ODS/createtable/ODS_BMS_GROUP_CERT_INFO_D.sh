hive  -e  "
use ods;
create table  ODS_BMS_GROUP_CERT_INFO_D   
(
  ACCT_MONTH                    string  comment  'ACCT_MONTH',
  DAY_ID                        string  comment  'DAY_ID',
  GROUPCERTINFO_UNIQE_ID        string  comment  'GROUPCERTINFO_UNIQE_ID',
  SUBSCRIPTION_ID               string  comment  'SUBSCRIPTION_ID',
  SERVICE_TYPE                  string  comment  'SERVICE_TYPE',
  USER_NAME                     string  comment  'USER_NAME',
  USER_TYPE                     string  comment  'USER_TYPE',
  CERT_NUM                      string  comment  'CERT_NUM',
  CERT_TYPE                     string  comment  'CERT_TYPE',
  CERT_ADDR                     string  comment  'CERT_ADDR',
  EXPIRE_DATE                   string  comment  'EXPIRE_DATE',
  FINAL_USE_NAME                string  comment  'FINAL_USE_NAME',
  FINAL_CERT_NUM                string  comment  'FINAL_CERT_NUM',
  FINAL_CERT_TYPE               string  comment  'FINAL_CERT_TYPE',
  FINAL_CERT_ADDR               string  comment  'FINAL_CERT_ADDR',
  FINAL_EXPIRE_DATE             string  comment  'FINAL_EXPIRE_DATE',
  FINAL_COMPANY_NAME            string  comment  'FINAL_COMPANY_NAME',
  DEVICE_ID                     string  comment  'DEVICE_ID',
  INSERT_TIME                   string  comment  'INSERT_TIME',
  ACTIVE_TIME                   string  comment  'ACTIVE_TIME',
  INACTIVE_TIME                 string  comment  'INACTIVE_TIME',
  OPERATOR_ID                   string  comment  'OPERATOR_ID'
)
comment '[MASTER_FIELD:B域,LEVEL:ODS层,DATA_FIELD:其它域,DATASUB_FIELD:ODS_BMS_GROUP_CERT_INFO_D]'
PARTITIONED BY (MONTH_PART STRING comment '月份分区',DAY_PART STRING comment '日期分区')
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\001' 
STORED AS RCFILE;
"