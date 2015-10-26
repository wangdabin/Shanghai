hive  -e  "
use ods;
create table   ODS_BUS_MAINTENANCE_RTN_D
(

       ACCT_MONTH            string      comment    'ACCT_MONTH', 
       DAY_ID                string      comment    'DAY_ID',
       ID                    string      comment    'ID',
       ORDER_ID              string      comment    'ORDER_ID', 
       TASK_ID               string      comment    'TASK_ID', 
       CIRCUIT_NO            string      comment    'CIRCUIT_NO', 
       CIRCUIT_NOTES         string      comment    'CIRCUIT_NOTES', 
       USERIP_R              string      comment    'USERIP_R', 
       LINKIP_CNC_R          string      comment    'LINKIP_CNC_R', 
       LINKIP_CUST_R         string      comment    'LINKIP_CUST_R', 
       LINKIP_CUST_NR        string      comment    'LINKIP_CUST_NR', 
       USERIP_NR             string      comment    'USERIP_NR', 
       PRIMARY_DEP           string      comment    'PRIMARY_DEP', 
       SECOND_DEP            string      comment    'SECOND_DEP', 
       DESIGN_MAN            string      comment    'DESIGN_MAN', 
       DESIGN_TIME           string      comment    'DESIGN_TIME', 
       STATE                 string      comment    'STATE',
       CREATE_DATE           string      comment    'CREATE_DATE', 
       REMARKS               string      comment    'REMARKS', 
       ORDER_CIRCUIT_ID      string      comment    'ORDER_CIRCUIT_ID', 
       CIRCUIT_COMPLETE_TIME string      comment    'CIRCUIT_COMPLETE_TIME', 
       BILLING_NUMBER        string      comment    'BILLING_NUMBER', 
       E1_NUMBER_DESC        string      comment    'E1_NUMBER_DESC', 
       CONSTRUCT_CONTACT_MAN string      comment    'CONSTRUCT_CONTACT_MAN',
       CONSTRUCT_CONTACT_TEL string      comment    'CONSTRUCT_CONTACT_TEL'
   )
comment '[MASTER_FIELD:B域,LEVEL:ODS层,DATA_FIELD:营业域,DATASUB_FIELD:ODS_BUS_MAINTENANCE_RTN_D]'
PARTITIONED BY (MONTH_PART STRING comment '月份分区',DAY_PART STRING comment '日期分区')
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\001' 
STORED AS RCFILE;
"
