hive -e "use src;
CREATE TABLE TAB_NET_GRID(
NET_GRID_ID                STRING,
NET_GRID_NAME              STRING,
NET_GRID_PHYSICAL_TYPE     STRING,
COUNTY_ID                  STRING,
DISTRICT_ID                STRING,
INDUSTRY_ID                STRING,
LIST_LEVEL                 STRING,
NET_GRID_BUSINESS_TYPE     STRING,
AREA_SIZE                  STRING,
AREA_DESC                  STRING,
STATUS                     STRING,
CREATOR                    STRING,
CREATE_DATE                STRING,
UPDATOR                    STRING,
UPDATE_DATE                STRING
)
COMMENT 'Íø¸ñÂë±í'
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\001' 
STORED AS TEXTFILE;"