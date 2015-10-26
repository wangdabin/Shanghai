hive -e "use src;
CREATE TABLE BILLING_CYCLE(
BILLING_CYCLE_ID           string,
BILLING_CYCLE_TYPE_ID      string,
BEG_DATE                   string,
END_DATE                   string,
OUT_ACCT_FLAG              string,
OUT_ACCT_LOCK              string,
STATE                      string,
STATE_DATE                 string,
END_SHOW_DATE              string
)
COMMENT 'нч'
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\001' 
STORED AS TEXTFILE;"