hive  -e  "
use ods;
create table  ODS_MRT_T_TZ_M   
(

      ACCT_MONTH   string   comment   'ACCT_MONTH',
      SVCNUM   string   comment   'SVCNUM',
      FLAG   string   comment   'FLAG',
      INSERT_TIME   string   comment   'INSERT_TIME',
      MO_CONFIG   string   comment   'MO_CONFIG',
      CLUB_NAME   string   comment   'CLUB_NAME',
      MO_ID   string   comment   'MO_ID',
      ACTIVITY_ID   string   comment   'ACTIVITY_ID',
      DELIVER_ID   string   comment   'DELIVER_ID',
      RETURN_MSG   string   comment   'RETURN_MSG',
      TZ_ID   string   comment   'TZ_ID',
      STATUS   string   comment   'STATUS',
      TZ_STATUS   string   comment   'TZ_STATUS',
      SUBSCRBID   string   comment   'SUBSCRBID',
      UPDATE_TIME   string   comment   'UPDATE_TIME',
      UPDATOR   string   comment   'UPDATOR'
            )
comment '[MASTER_FIELD:B域,LEVEL:ODS层,DATA_FIELD:市场营销域,DATASUB_FIELD:ODS_MRT_T_TZ_M]'
PARTITIONED BY (MONTH_PART STRING comment '月份分区')
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\001' 
STORED AS RCFILE;
"