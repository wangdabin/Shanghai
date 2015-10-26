hive  -e  "
use ods;
create table  ODS_PUB_MAT_DELIVER_INFO_M  
(

      ACCT_MONTH   string   comment   'ACCT_MONTH',
      UNIQU_DELIVER_ID   string   comment   'UNIQU_DELIVER_ID',
      BARCODE   string   comment   'BARCODE',
      BATCH_ID   string   comment   'BATCH_ID',
      STATUS   string   comment   'STATUS',
      REFUSE_REASON   string   comment   'REFUSE_REASON',
      AREA_ID   string   comment   'AREA_ID',
      CREATE_TIME   string   comment   'CREATE_TIME',
      SCANNER   string   comment   'SCANNER',
      CHECK_DATE   string   comment   'CHECK_DATE',
      CHECKER   string   comment   'CHECKER',
      DRAW_DEADLINE   string   comment   'DRAW_DEADLINE',
      RESUBMIT_DATE   string   comment   'RESUBMIT_DATE',
      REMARK   string   comment   'REMARK',
      REFUSE_TYPE   string   comment   'REFUSE_TYPE',
      SCAN_DATE   string   comment   'SCAN_DATE',
      ARCHIVE_CODE   string   comment   'ARCHIVE_CODE',
      INFORMATION_ATTRIBUTE   string   comment   'INFORMATION_ATTRIBUTE',
      ARCHIVE_OPERATOR   string   comment   'ARCHIVE_OPERATOR',
      ARCHIVE_DATE   string   comment   'ARCHIVE_DATE',
      REVIEW_OPERATOR   string   comment   'REVIEW_OPERATOR',
      REVIEW_DATE   string   comment   'REVIEW_DATE',
      TRIM_OPERATOR   string   comment   'TRIM_OPERATOR',
      TRIM_DATE   string   comment   'TRIM_DATE',
      SYSTEM   string   comment   'SYSTEM',
      COUNTY_ID   string   comment   'COUNTY_ID',
      LABEL_TYPE   string   comment   'LABEL_TYPE'
            )
comment '[MASTER_FIELD:B域,LEVEL:ODS层,DATA_FIELD:公共域,DATASUB_FIELD:ODS_PUB_MAT_DELIVER_INFO_M]'
PARTITIONED BY (MONTH_PART STRING comment '月份分区')
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\001' 
STORED AS RCFILE;