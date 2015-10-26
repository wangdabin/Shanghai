hive -e "use src;
CREATE TABLE AI_MOD_CONFIG(
MOD_ID           string,
MOD_TYPE         string,
SVC_ID           string,
MOD_NAME         string,
EFF_DATE         string,
EXP_DATE         string,
MOD_PRIORITY     string,
PRIORITY         string,
AREA_ID          string,
MOD_STATE        string,
COMMENTS         string,
SUB_SYSTEM_ID    string,
CREATOR          string,
CREATE_TIME      string,
UPDATOR          string,
UPDATE_TIME      string,
STATE            string,
VERIFY_ID        string
)
COMMENT '抽取佣金数据'
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\001' 
STORED AS TEXTFILE;"