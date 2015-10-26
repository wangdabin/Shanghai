hive -e "use src;
CREATE TABLE CARD_PARAM_CARD_TYPE_D(
CARD_KIND                  string,
CARD_TYPE                  string,
CARD_NAME                  string,
CAN_CHANGE_EXP_DATE        string,
MAX_CHANGE_EXP_DATE_TIMES  string,
MAX_CHANGE_EXP_DATE_DAYS   string,
CARD_ID_LENGTH             string,
CARD_PREFIX_LENGTH         string,
SEQUENCE                   string,
SCOPESTART                 string,
SCOPEEND                   string,
HASVALUE                   string,
HASDATE                    string,
CAN_SELL                   string,
INTERFACE_CAN_SELL         string,
CAN_DISCOUNT               string,
CARD_CAPACITY              string,
ACTIVE_PLAT                string,
CARD_FROM                  string,
IS_PRE_INPUT               string,
INSERT_DATE                string
)
COMMENT '1.1.67	卡类型定义'
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\001' 
STORED AS TEXTFILE;"