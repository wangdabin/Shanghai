hive -e "use src;
CREATE TABLE BMS_SUBJECT_DEF(
SUBJECT_ID          STRING,
SUBJECT_NAME        STRING,
SUBJECT_TYPE        STRING,
SUBJECT_SUBTYPE     STRING,
SUBJECT_TYPE_DESC   STRING,
TRANS_FLAG          STRING,
ACC_SUBJECT_ID      STRING
)
COMMENT '营业费用项码表'
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\001' 
STORED AS TEXTFILE;"