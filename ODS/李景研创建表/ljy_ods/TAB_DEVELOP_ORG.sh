hive -e "use src;
CREATE TABLE TAB_DEVELOP_ORG(
ORG_ID           STRING,
ORG_NAME         STRING,
AREAID           STRING,
ORG_CODE         STRING,
BILL_CODE        STRING
)
COMMENT '��'
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\001' 
STORED AS TEXTFILE;"