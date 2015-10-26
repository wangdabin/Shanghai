hive -e "use src;
CREATE TABLE CHANNEL_TYPE_DEFINE(  
CHANNEL_TYPE            STRING COMMNET  'CHANNEL_TYPE',       
TYPE_NAME               STRING COMMNET  'TYPE_NAME',          
ZB_CHANNEL_TYPE         STRING COMMNET  'ZB_CHANNEL_TYPE',    
ZB_TYPE_NAME            STRING COMMNET  'ZB_TYPE_NAME',       
ZB_CHANNEL_SUB_TYPE     STRING COMMNET  'ZB_CHANNEL_SUB_TYPE',
ZB_CHANNEL_SUB_NAME     STRING COMMNET  'ZB_CHANNEL_SUB_NAME',
CHANNEL_SUB_TYPE        STRING COMMNET  'CHANNEL_SUB_TYPE',   
SUB_TYPE_NAME           STRING COMMNET  'SUB_TYPE_NAME'        
)
COMMENT '本地渠道类型表'
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\001' 
STORED AS TEXTFILE;"