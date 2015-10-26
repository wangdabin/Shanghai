hive  -e  "
use ods;
create table  ODS_BUS_CAMPAIGN_FEEDBACK_D
(
    ACCT_MONTH        string    comment  'ACCT_MONTH',
    DAY_ID            string    comment  'DAY_ID',
    CAMPAIGNID        string    comment  'CAMPAIGNID',
    MSISDN            string    comment  'MSISDN',
    PRODUCT_ID        string    comment  'PRODUCT_ID',
    RESULT            string    comment  'RESULT',
    CONTACTTIME       string    comment  'CONTACTTIME',
    CHANNEL_TYPE      string    comment  'CHANNEL_TYPE',
    SEX               string    comment  'SEX',
    AGE               int       comment  'AGE',
    REASON            string    comment  'REASON'
   
)
comment '[MASTER_FIELD:B域,LEVEL:ODS层,DATA_FIELD:营业域,DATASUB_FIELD:ODS_BUS_CAMPAIGN_FEEDBACK_D]'
PARTITIONED BY (MONTH_PART STRING comment '月份分区',DAY_PART STRING comment '日期分区')
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\001' 
STORED AS RCFILE;
"