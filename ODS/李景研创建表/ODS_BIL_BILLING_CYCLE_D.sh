CREATE TABLE ODS_BIL_BILLING_CYCLE_D(
ACCT_MONTH               string comment 'ACCT_MONTH',           
DAY_ID                   string comment 'DAY_ID',               
BILLING_CYCLE_ID         string comment 'BILLING_CYCLE_ID',     
BILLING_CYCLE_TYPE_ID    string comment 'BILLING_CYCLE_TYPE_ID',
BEG_DATE                 string comment 'BEG_DATE',             
END_DATE                 string comment 'END_DATE',             
OUT_ACCT_FLAG            string comment 'OUT_ACCT_FLAG',        
OUT_ACCT_LOCK            string comment 'OUT_ACCT_LOCK',        
STATE                    string comment 'STATE',                
STATE_DATE               string comment 'STATE_DATE',           
END_SHOW_DATE            string comment 'END_SHOW_DATE'           
)
COMMENT ''
PARTITIONED BY (MONTH_PART STRING COMMENT '月份分区',
DAY_PART STRING COMMENT '日期分区')
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\001' 
STORED AS RCFILE;
 