hive -e "use src;
CREATE TABLE SHUCRM2O_TAB_DEVELOP_ORG(
ORG_ID         STRING,
ORG_NAME       STRING,
AREAID         STRING,
ORG_CODE       STRING,
BILL_CODE      STRING
)
COMMENT '�º���������'
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\001' 
STORED AS TEXTFILE;"