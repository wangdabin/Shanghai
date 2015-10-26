hive  -e  "
use ods;
create table  ODS_BIL_PRINVOICE_INFO_M 
(

      ACCT_MONTH   string   comment   'ACCT_MONTH',
      PROVINCE_ORDER_ID   string   comment   'PROVINCE_ORDER_ID',
      TAXPAYER_CODE   string   comment   'TAXPAYER_CODE',
      REGION_ID   string   comment   'REGION_ID',
      CYCLE_MONTH_START   string   comment   'CYCLE_MONTH_START',
      CYCLE_MONTH_END   string   comment   'CYCLE_MONTH_END',
      SOURCE_TYPE   string   comment   'SOURCE_TYPE',
      OFFICE_ID   string   comment   'OFFICE_ID',
      INVOICE_ITEM_LIST   string   comment   'INVOICE_ITEM_LIST',
      TOTAL_FEE   string   comment   'TOTAL_FEE',
      CREATE_TIME   string   comment   'CREATE_TIME',
      ORDER_ID   string   comment   'ORDER_ID',
      HTTP_RESULT   string   comment   'HTTP_RESULT',
      RECE_FEE_NAME   string   comment   'RECE_FEE_NAME',
      EXTRA_INFO1   string   comment   'EXTRA_INFO1',
      EXTRA_INFO2   string   comment   'EXTRA_INFO2',
      EXTRA_INFO3   string   comment   'EXTRA_INFO3',
      PRT_ORDER_ID   string   comment   'PRT_ORDER_ID',
      DEPART_NAME   string   comment   'DEPART_NAME',
      USER_ID   string   comment   'USER_ID',
      ACCOUNT_ID   string   comment   'ACCOUNT_ID',
      OPERATOR_ID   string   comment   'OPERATOR_ID'
            )
comment '[MASTER_FIELD:B域,LEVEL:ODS层,DATA_FIELD:账务域,DATASUB_FIELD:ODS_BIL_PRINVOICE_INFO_M]'
PARTITIONED BY (MONTH_PART STRING comment '月份分区')
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\001' 
STORED AS RCFILE;
"