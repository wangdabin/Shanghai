hive  -e  "
use ods;
create table  ODS_CHL_ZB_AI_MOD_CONFIG_M  
(

      ACCT_MONTH   string   comment   'ACCT_MONTH',
      MOD_ID   string   comment   'MOD_ID',
      MOD_LOCAL_CODE   string   comment   'MOD_LOCAL_CODE',
      EDITION_ID   string   comment   'EDITION_ID',
      MOD_FILE_ID   string   comment   'MOD_FILE_ID',
      MOD_NAME   string   comment   'MOD_NAME',
      EFF_DATE   string   comment   'EFF_DATE',
      EXP_DATE   string   comment   'EXP_DATE',
      STATE   string   comment   'STATE',
      COMM_OBJ_TYPE   string   comment   'COMM_OBJ_TYPE',
      PAY_CHNL_ID   string   comment   'PAY_CHNL_ID',
      OPERATION_OBJ_TYPE   string   comment   'OPERATION_OBJ_TYPE',
      MOD_TYPE   string   comment   'MOD_TYPE',
      COMM_TYPE   string   comment   'COMM_TYPE',
      DEPT_ID   string   comment   'DEPT_ID',
      COMMENTS   string   comment   'COMMENTS',
      IS_MODEL   string   comment   'IS_MODEL',
      MODEL_SCOPE   string   comment   'MODEL_SCOPE',
      MODEL_MOD_ID   string   comment   'MODEL_MOD_ID',
      CAL_START_TIME_UNIT   string   comment   'CAL_START_TIME_UNIT',
      CAL_START_TIME   string   comment   'CAL_START_TIME',
      MOD_LEVEL   string   comment   'MOD_LEVEL',
      BATCH_NO   string   comment   'BATCH_NO',
      PROVINCE_CODE   string   comment   'PROVINCE_CODE',
      CITY_CODE   string   comment   'CITY_CODE',
      CREATE_STAFF_ID   string   comment   'CREATE_STAFF_ID',
      CREATE_TIME   string   comment   'CREATE_TIME',
      UPDATE_STAFF_ID   string   comment   'UPDATE_STAFF_ID',
      UPDATE_TIME   string   comment   'UPDATE_TIME',
      BUSI_LIMIT_MONTH   string   comment   'BUSI_LIMIT_MONTH'
            )
comment '[MASTER_FIELD:B域,LEVEL:ODS层,DATA_FIELD:渠道域,DATASUB_FIELD:ODS_CHL_ZB_AI_MOD_CONFIG_M]'
PARTITIONED BY (MONTH_PART STRING comment '月份分区')
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\001' 
STORED AS RCFILE;
"