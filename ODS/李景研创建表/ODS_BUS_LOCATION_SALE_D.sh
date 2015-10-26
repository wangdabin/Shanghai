CREATE TABLE ODS_BUS_LOCATION_SALE_D  (
ACCT_MONTH    string comment 'ACCT_MONTH', 
DAY_ID        string comment 'DAY_ID',     
ROW_ID        string comment 'ROW_ID',     
LOCATION_ID   string comment 'LOCATION_ID',
SALE_ID       string comment 'SALE_ID',    
STATE         string comment 'STATE',      
INSERT_DATE   string comment 'INSERT_DATE',
EXPIRE_DATE   string comment 'EXPIRE_DATE',
REMARKS       string comment 'REMARKS'     
      
)
COMMENT ''
PARTITIONED BY (MONTH_PART STRING COMMENT '�·ݷ���',
DAY_PART STRING COMMENT '���ڷ���')
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\001' 
STORED AS RCFILE;