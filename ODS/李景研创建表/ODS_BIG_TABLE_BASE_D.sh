CREATE TABLE ODS_BIG_TABLE_BASE_D(
ACCT_DATE        STRING COMMENT '账期',                                                     
OWNER            STRING COMMENT '所属用户域',                                               
TABLE_NAME       STRING COMMENT '表名',                                                     
TABLE_DESC       STRING COMMENT '表描述',                                                   
TABLESPACE_NAME  STRING COMMENT '表空间（最近使用的）',                                     
TABLE_SIZE       FLOAT  COMMENT '表大小（G）',                                              
PARTITION_NUM    INT    COMMENT '分区个数（0表示不是分区表）',                              
MIN_PARTITION    STRING COMMENT '第一个分区',                                               
MAX_PARTITION    STRING COMMENT '最后一个分区',                                             
CREATED          STRING COMMENT '创建时间',                                                 
TABLE_TYPE       STRING COMMENT '表的类型 D：日表   M：月表   TEMP：临时表   MID：中间表  ',
TABLE_USER       STRING COMMENT '维护人',                                                   
KEEP_DATE        STRING COMMENT '表保留的时间（永久保留默认为 29991231）',                  
PARTITION_MONTH  INT    COMMENT '分区表保留多少个月数据（月）',                             
IS_NEW           STRING COMMENT '是否当天新的大于1G表',                                     
IS_USE           STRING COMMENT '0表示已经废除的表 其它表示在用',                           
NOTE             STRING COMMENT '备注',                                                     
NEW_DATE         STRING COMMENT '新加表的账期(被检测到表大于1G的账期)'                             
)
COMMENT ''
PARTITIONED BY (MONTH_PART STRING COMMENT '月份分区',
DAY_PART STRING COMMENT '日期分区')
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\001' 
STORED AS RCFILE;