CREATE TABLE ODS_CHL_CHANNEL_RELATION_D(
ACCT_MONTH           STRING COMMENT 'ACCT_MONTH',       
DAY_ID               STRING COMMENT 'DAY_ID',           
CHANNEL_ID           STRING COMMENT 'CHANNEL_ID',       
AREA_ID              STRING COMMENT 'AREA_ID',          
COUNTY_ID            STRING COMMENT 'COUNTY_ID',        
DEPT_ID              STRING COMMENT 'DEPT_ID',          
CHNL_CODE            STRING COMMENT 'CHNL_CODE',        
CITY_CODE            STRING COMMENT 'CITY_CODE',        
MANAGER_AREA_CODE    STRING COMMENT 'MANAGER_AREA_CODE',
MANAGER_DEPT_CODE    STRING COMMENT 'MANAGER_DEPT_CODE'     
)
COMMENT ''
PARTITIONED BY (MONTH_PART STRING COMMENT '月份分区',
DAY_PART STRING COMMENT '日期分区')
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\001' 
STORED AS RCFILE;