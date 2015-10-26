hive  -e  "
use ods;
create table   ODS_BUS_SERVICE_CIRCUIT_D    
(

      ACCT_MONTH           string   comment   'ACCT_MONTH',
      DAY_ID               string   comment   'DAY_ID',
      SERVICE_ID           string   comment   'SERVICE_ID',
      ORDER_CIRCUIT_ID     string   comment   'ORDER_CIRCUIT_ID',
      ORDER_ID             string   comment   'ORDER_ID',
      A_CLIENT_ADDR        string   comment   'A_CLIENT_ADDR',
      A_EQPT_TYPE          string   comment   'A_EQPT_TYPE',
      BAND                 string   comment   'BAND',
      COUNT                bigint   comment   'COUNT',
      LINK_TYPE            string   comment   'LINK_TYPE',
      Z_CLIENT_ADDR        string   comment   'Z_CLIENT_ADDR',
      Z_EQPT_TYPE          string   comment   'Z_EQPT_TYPE',
      IP_DESIGN            string   comment   'IP_DESIGN',
      STATE                string   comment   'STATE',
      CREATE_DATE          string   comment   'CREATE_DATE',
      REMARKS              string   comment   'REMARKS',
      REQUEST_TYPE         string   comment   'REQUEST_TYPE',
      CUST_IP_ADDR_MASK    string   comment   'CUST_IP_ADDR_MASK',
      AS_NUM               string   comment   'AS_NUM',
      ROUTER_PROTOCOL      string   comment   'ROUTER_PROTOCOL',
      Z_BAND               string   comment   'Z_BAND',
      BI_DIR_PVC_BAND      string   comment   'BI_DIR_PVC_BAND',
      CIRCUIT_NO           string   comment    'CIRCUIT_NO',
      BILLING_NUMBER       string   comment    'BILLING_NUMBER',
      E1_NUMBER_DESC       string   comment    'E1_NUMBER_DESC'
)
comment '[MASTER_FIELD:B域,LEVEL:ODS层,DATA_FIELD:营业域,DATASUB_FIELD:ODS_BUS_SERVICE_CIRCUIT_D]'
PARTITIONED BY (MONTH_PART STRING comment '月份分区',DAY_PART STRING comment '日期分区')
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\001' 
STORED AS RCFILE;
"