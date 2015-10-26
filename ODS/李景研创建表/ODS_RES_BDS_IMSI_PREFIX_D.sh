CREATE TABLE ODS_RES_BDS_IMSI_PREFIX_D(
ACCT_MONTH          string comment 'ACCT_MONTH',       
DAY_ID              string comment 'DAY_ID',           
LOWER_IMSI_PREFIX   string comment 'LOWER_IMSI_PREFIX',
UPPER_IMSI_PREFIX   string comment 'UPPER_IMSI_PREFIX',
LOCAL_NET           string comment 'LOCAL_NET',        
AREA_CODE           string comment 'AREA_CODE',        
DEALER_CODE         string comment 'DEALER_CODE',      
SERVICE_CLASS       string comment 'SERVICE_CLASS',    
USER_TYPE           string comment 'USER_TYPE',        
EFF_DATE            string comment 'EFF_DATE',         
EXP_DATE            string comment 'EXP_DATE',         
COMMENTS            string comment 'COMMENTS'          
)
COMMENT '������Ӫ�̱���ӳ���'
PARTITIONED BY (MONTH_PART STRING COMMENT '�·ݷ���',
DAY_PART STRING COMMENT '���ڷ���')
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\001' 
STORED AS RCFILE;
