CREATE TABLE ODS_PRD_ZB_ACTION_PLAN_D   (
ACCT_MONTH        string comment 'ACCT_MONTH',     
DAY_ID            string comment 'DAY_ID',         
ACTPLANID         string comment 'ACTPLANID',      
OP_TYPE           string comment 'OP_TYPE',        
ACTPLANDESCRIBE   string comment 'ACTPLANDESCRIBE',
ACTPROTPER        string comment 'ACTPROTPER',     
PRODUCTID         string comment 'PRODUCTID',      
RESOURCESTYPE     string comment 'RESOURCESTYPE',  
RESOURCESRELE     string comment 'RESOURCESRELE',  
RESOURCESBRAND    string comment 'RESOURCESBRAND', 
RESOURCESMODEL    string comment 'RESOURCESMODEL', 
RESOURCESFEE      string comment 'RESOURCESFEE',   
ALLOWANCEFEE      string comment 'ALLOWANCEFEE',   
STOREDFEE         string comment 'STOREDFEE',      
PRESENTEDFEE      string comment 'PRESENTEDFEE',   
THAWPRO           string comment 'THAWPRO',        
THAWMON           string comment 'THAWMON',        
TOTALSALEFEE      string comment 'TOTALSALEFEE',   
MONTHLOWESTFEE    string comment 'MONTHLOWESTFEE', 
DEPFEE            string comment 'DEPFEE',         
LOCAL_SCHEME_ID   string comment 'LOCAL_SCHEME_ID',
SCHEMEID          string comment 'SCHEMEID'        
  
)
COMMENT ''
PARTITIONED BY (MONTH_PART STRING COMMENT '月份分区',
DAY_PART STRING COMMENT '日期分区')
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\001' 
STORED AS RCFILE;