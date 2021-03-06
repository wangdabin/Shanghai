CREATE TABLE ODS_PUB_SYS_SVC_TYPE_D(
ACCT_MONTH                 STRING COMMENT 'ACCT_MONTH',           
DAY_ID                     STRING COMMENT 'DAY_ID',               
SVC_TYPE                   STRING COMMENT 'SVC_TYPE',             
SVC_TYPE_NAME              STRING COMMENT 'SVC_TYPE_NAME',        
NET_TYPE_CODE              STRING COMMENT 'NET_TYPE_CODE',        
NET_CLASS_CODE             STRING COMMENT 'NET_CLASS_CODE',       
CLASS_OF_SERVICE_CODE      STRING COMMENT 'CLASS_OF_SERVICE_CODE',
SVC_CATA                   STRING COMMENT 'SVC_CATA',             
SERIALNO_TYPE              STRING COMMENT 'SERIALNO_TYPE',        
STAT_TYPE                  STRING COMMENT 'STAT_TYPE',            
STAT_TYPE_DESC             STRING COMMENT 'STAT_TYPE_DESC'        
)
COMMENT ''
PARTITIONED BY (MONTH_PART STRING COMMENT '月份分区',
DAY_PART STRING COMMENT '日期分区')
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\001' 
STORED AS RCFILE;