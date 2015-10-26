CREATE TABLE ODS_USR_SMZ_JT_D(
PROCESS_TIME         STRING COMMENT '发起方填写服务请求时间',
PROVINCE_CODE        STRING COMMENT '省分代码',              
EPARCHY_CODE         STRING COMMENT '地市编码',              
ACCESS_TYPE          STRING COMMENT '接入类型',              
AGENT_ID             STRING COMMENT '发展人编码',            
CHANNEL_ID           STRING COMMENT '归属渠道编码',          
CHANNEL_NAME         STRING COMMENT '归属渠道名称',          
CHANNEL_CODE         STRING COMMENT '归属渠道类型编码',      
OPER_TIME            STRING COMMENT '返档时间',              
ICCID_NUMBER         STRING COMMENT 'ICCID号码',             
CUST_NUMBER          STRING COMMENT '返档号码',              
CUST_NAME            STRING COMMENT '客户姓名',              
CERT_TYPE_CODE       STRING COMMENT '证件类型',              
CERT_CODE            STRING COMMENT '证件号码',              
CERT_ADDR            STRING COMMENT '证件地址',              
OPERATION_STATUS     STRING COMMENT '订单处理状态',          
PROVINCE_ORDER_ID    STRING COMMENT '省分订单ID',            
ORDER_ID             STRING COMMENT '总部订单ID',            
ERROR_COD            STRING COMMENT '失败错误码',            
PARA_ID              STRING COMMENT '保留字段ID',            
PARA_VALUE           STRING COMMENT '保留字段值',            
INSERT_DATE          STRING COMMENT '插入时间'               
         
)
COMMENT ''
PARTITIONED BY (MONTH_PART STRING COMMENT '月份分区',
DAY_PART STRING COMMENT '日期分区')
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\001' 
STORED AS RCFILE;
 