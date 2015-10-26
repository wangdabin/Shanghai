hive  -e  "
use ods;
create table  ODS_CHL_ZB_AGENT_DEV_AREA_M  
(
  ACCT_MONTH          string comment     'ACCT_MONTH',
  BSS_SYS_CODE        string comment     'BSS_SYS_CODE',
  CHNL_CODE           string comment     'CHNL_CODE',
  MANAGER_AREA_CODE   string comment     'MANAGER_AREA_CODE',
  MANAGER_DEPT_CODE   string comment     'MANAGER_DEPT_CODE',
  DEV_CODE            string comment     'DEV_CODE',
   CHNL_NAME          string comment     'CHNL_NAME'
)
comment '[MASTER_FIELD:B域,LEVEL:ODS层,DATA_FIELD:渠道域,DATASUB_FIELD:ODS_CHL_ZB_AGENT_DEV_AREA_M]'
PARTITIONED BY (MONTH_PART STRING comment '月份分区')
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\001' 
STORED AS RCFILE;
"