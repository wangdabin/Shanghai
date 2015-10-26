CREATE TABLE ODS_PRD_GRP_PM_PRODUCT_M  (
ACCT_MONTH      STRING COMMENT 'ACCT_MONTH',    
PRODUCT_ID      STRING COMMENT 'PRODUCT_ID',    
PRODUCT_NAME    STRING COMMENT 'PRODUCT_NAME',  
PRODUCT_DESC    STRING COMMENT 'PRODUCT_DESC',  
PRODUCT_DETAIL  STRING COMMENT 'PRODUCT_DETAIL',
PRODUCT_TYPE    STRING COMMENT 'PRODUCT_TYPE',  
BRAND_ID        STRING COMMENT 'BRAND_ID',      
CREATE_TIME     STRING COMMENT 'CREATE_TIME',   
INSERT_DATE     STRING COMMENT 'INSERT_DATE'    
    
)
COMMENT ''
PARTITIONED BY (MONTH_PART STRING COMMENT '月份分区',
DAY_PART STRING COMMENT '日期分区')
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\001' 
STORED AS RCFILE;