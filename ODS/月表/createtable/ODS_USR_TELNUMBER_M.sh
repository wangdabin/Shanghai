hive  -e  "
use ods;
create table  ODS_USR_TELNUMBER_M  
(

      ACCT_MONTH   string   comment   'ACCT_MONTH',
      ID   string   comment   'ID',
      AREA_CODE   string   comment   'AREA_CODE',
      TELE_NUMBER   string   comment   'TELE_NUMBER',
      TELE_NUMBER_HEAD_ID   string   comment   'TELE_NUMBER_HEAD_ID',
      EXCH_ID   string   comment   'EXCH_ID',
      TELE_NUMBER_TYPE_ID   string   comment   'TELE_NUMBER_TYPE_ID',
      TELE_NUMBER_LEVEL_ID   string   comment   'TELE_NUMBER_LEVEL_ID',
      PORT_ID   string   comment   'PORT_ID',
      PRE_REUSE_NUMBER   int   comment   'PRE_REUSE_NUMBER',
      REUSE_NUMBER   int   comment   'REUSE_NUMBER',
      ORGANIZE_ID   string   comment   'ORGANIZE_ID',
      CONT_STATE   string   comment   'CONT_STATE',
      KEEP_STATE   string   comment   'KEEP_STATE',
      STATE   string   comment   'STATE',
      REMARKS   string   comment   'REMARKS',
      DEL_FLAG   string   comment   'DEL_FLAG',
      IS_LOCKED   string   comment   'IS_LOCKED',
      KEEP_DATE   string   comment   'KEEP_DATE',
      BUSINESS_TYPE   string   comment   'BUSINESS_TYPE',
      BUSINESS_DETAIL_TYPE   string   comment   'BUSINESS_DETAIL_TYPE',
      BUSINESS_AREA_ID   string   comment   'BUSINESS_AREA_ID'
                  )
comment '[MASTER_FIELD:B域,LEVEL:ODS层,DATA_FIELD:用户域,DATASUB_FIELD:ODS_USR_TELNUMBER_M ]'
PARTITIONED BY (MONTH_PART STRING comment '月份分区')
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\001' 
STORED AS RCFILE;