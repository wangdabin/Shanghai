CREATE TABLE ODS_USR_SMZ_JT_D(
PROCESS_TIME         STRING COMMENT '������д��������ʱ��',
PROVINCE_CODE        STRING COMMENT 'ʡ�ִ���',              
EPARCHY_CODE         STRING COMMENT '���б���',              
ACCESS_TYPE          STRING COMMENT '��������',              
AGENT_ID             STRING COMMENT '��չ�˱���',            
CHANNEL_ID           STRING COMMENT '������������',          
CHANNEL_NAME         STRING COMMENT '������������',          
CHANNEL_CODE         STRING COMMENT '�����������ͱ���',      
OPER_TIME            STRING COMMENT '����ʱ��',              
ICCID_NUMBER         STRING COMMENT 'ICCID����',             
CUST_NUMBER          STRING COMMENT '��������',              
CUST_NAME            STRING COMMENT '�ͻ�����',              
CERT_TYPE_CODE       STRING COMMENT '֤������',              
CERT_CODE            STRING COMMENT '֤������',              
CERT_ADDR            STRING COMMENT '֤����ַ',              
OPERATION_STATUS     STRING COMMENT '��������״̬',          
PROVINCE_ORDER_ID    STRING COMMENT 'ʡ�ֶ���ID',            
ORDER_ID             STRING COMMENT '�ܲ�����ID',            
ERROR_COD            STRING COMMENT 'ʧ�ܴ�����',            
PARA_ID              STRING COMMENT '�����ֶ�ID',            
PARA_VALUE           STRING COMMENT '�����ֶ�ֵ',            
INSERT_DATE          STRING COMMENT '����ʱ��'               
         
)
COMMENT ''
PARTITIONED BY (MONTH_PART STRING COMMENT '�·ݷ���',
DAY_PART STRING COMMENT '���ڷ���')
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\001' 
STORED AS RCFILE;
 