CREATE TABLE ODS_USR_UCS_CONTRANT_USER_D  (
ACCT_MONTH         STRING COMMENT 'ACCT_MONTH',      
DAY_ID             STRING COMMENT 'DAY_ID',          
PRODUCT_ID         STRING COMMENT 'PRODUCT_ID',      
CONTRANT_USER_ID   STRING COMMENT 'CONTRANT_USER_ID',
CUSTOMER_ID        STRING COMMENT 'CUSTOMER_ID',     
SERVICE_TYPE       STRING COMMENT 'SERVICE_TYPE',    
DOCID              STRING COMMENT 'DOCID',           
SUBSCRIPTION_ID    STRING COMMENT 'SUBSCRIPTION_ID', 
ACCOUNT_ID         STRING COMMENT 'ACCOUNT_ID',      
REGION_ID          STRING COMMENT 'REGION_ID',       
PRESENT_AMOUNT     STRING COMMENT 'PRESENT_AMOUNT',  
PAY_RULE_ID        STRING COMMENT 'PAY_RULE_ID',     
CREATE_DATE        STRING COMMENT 'CREATE_DATE',     
ACTIVE_DATE        STRING COMMENT 'ACTIVE_DATE',     
INACTIVE_DATE      STRING COMMENT 'INACTIVE_DATE',   
OPTOPERTOR_ID      STRING COMMENT 'OPTOPERTOR_ID',   
OP_REGION_ID       STRING COMMENT 'OP_REGION_ID',    
OFFICE_ID          STRING COMMENT 'OFFICE_ID',       
LAST_PAY_MONTH     STRING COMMENT 'LAST_PAY_MONTH',  
REMARK             STRING COMMENT 'REMARK'           
      
)
COMMENT ''
PARTITIONED BY (MONTH_PART STRING COMMENT '月份分区',
DAY_PART STRING COMMENT '日期分区')
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\001' 
STORED AS RCFILE;