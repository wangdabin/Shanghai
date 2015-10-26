CREATE TABLE ODS_PUB_TAB_COUNTY_D  (
ACCT_MONTH       string comment 'ACCT_MONTH',    
DAY_ID           string comment 'DAY_ID',        
COUNTYID         string comment 'COUNTYID',      
AREAID           string comment 'AREAID',        
COUNTYNAME       string comment 'COUNTYNAME',    
COUNTYID_SHORT   string comment 'COUNTYID_SHORT',
HQ_COUNTYID      string comment 'HQ_COUNTYID'    
)
COMMENT ''
PARTITIONED BY (MONTH_PART STRING COMMENT '月份分区',
DAY_PART STRING COMMENT '日期分区')
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\001' 
STORED AS RCFILE;