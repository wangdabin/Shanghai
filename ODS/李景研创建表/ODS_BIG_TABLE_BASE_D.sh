CREATE TABLE ODS_BIG_TABLE_BASE_D(
ACCT_DATE        STRING COMMENT '����',                                                     
OWNER            STRING COMMENT '�����û���',                                               
TABLE_NAME       STRING COMMENT '����',                                                     
TABLE_DESC       STRING COMMENT '������',                                                   
TABLESPACE_NAME  STRING COMMENT '��ռ䣨���ʹ�õģ�',                                     
TABLE_SIZE       FLOAT  COMMENT '���С��G��',                                              
PARTITION_NUM    INT    COMMENT '����������0��ʾ���Ƿ�����',                              
MIN_PARTITION    STRING COMMENT '��һ������',                                               
MAX_PARTITION    STRING COMMENT '���һ������',                                             
CREATED          STRING COMMENT '����ʱ��',                                                 
TABLE_TYPE       STRING COMMENT '������� D���ձ�   M���±�   TEMP����ʱ��   MID���м��  ',
TABLE_USER       STRING COMMENT 'ά����',                                                   
KEEP_DATE        STRING COMMENT '������ʱ�䣨���ñ���Ĭ��Ϊ 29991231��',                  
PARTITION_MONTH  INT    COMMENT '�����������ٸ������ݣ��£�',                             
IS_NEW           STRING COMMENT '�Ƿ����µĴ���1G��',                                     
IS_USE           STRING COMMENT '0��ʾ�Ѿ��ϳ��ı� ������ʾ����',                           
NOTE             STRING COMMENT '��ע',                                                     
NEW_DATE         STRING COMMENT '�¼ӱ������(����⵽�����1G������)'                             
)
COMMENT ''
PARTITIONED BY (MONTH_PART STRING COMMENT '�·ݷ���',
DAY_PART STRING COMMENT '���ڷ���')
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\001' 
STORED AS RCFILE;