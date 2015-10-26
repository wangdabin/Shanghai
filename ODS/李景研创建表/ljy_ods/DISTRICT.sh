hive -e "use src;
CREATE TABLE DISTRICT(
DISTRICT_ID          STRING,
NAME                 STRING,
DISTRICT_TYPE_ID     STRING,
BUSINESS_AREA_ID     STRING,
PARENT_DISTRICT_ID   STRING,
AREA_CODE            STRING,
STATE                STRING,
REMARKS              STRING,
OMS_ID               STRING,
SHORT_NAME           STRING,
DISTRICT_CODE        STRING
)
COMMENT '���������'
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\001' 
STORED AS TEXTFILE;"