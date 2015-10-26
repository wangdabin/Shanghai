CREATE TABLE ODS_PUB_TAB_NET_GRID_D (
ACCT_MONTH               STRING COMMENT 'ACCT_MONTH',            
DAY_ID                   STRING COMMENT 'DAY_ID',                
NET_GRID_ID              STRING COMMENT 'NET_GRID_ID',           
NET_GRID_NAME            STRING COMMENT 'NET_GRID_NAME',         
NET_GRID_PHYSICAL_TYPE   STRING COMMENT 'NET_GRID_PHYSICAL_TYPE',
COUNTY_ID                STRING COMMENT 'COUNTY_ID',             
DISTRICT_ID              STRING COMMENT 'DISTRICT_ID',           
INDUSTRY_ID              STRING COMMENT 'INDUSTRY_ID',           
LIST_LEVEL               STRING COMMENT 'LIST_LEVEL',            
NET_GRID_BUSINESS_TYPE   STRING COMMENT 'NET_GRID_BUSINESS_TYPE',
AREA_SIZE                FLOAT  COMMENT 'AREA_SIZE',             
AREA_DESC                STRING COMMENT 'AREA_DESC',             
STATUS                   STRING COMMENT 'STATUS',                
CREATOR                  STRING COMMENT 'CREATOR',               
CREATE_DATE              STRING COMMENT 'CREATE_DATE',           
UPDATOR                  STRING COMMENT 'UPDATOR',               
UPDATE_DATE              STRING COMMENT 'UPDATE_DATE'            
    
)
COMMENT ''
PARTITIONED BY (MONTH_PART STRING COMMENT '月份分区',
DAY_PART STRING COMMENT '日期分区')
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\001' 
STORED AS RCFILE;