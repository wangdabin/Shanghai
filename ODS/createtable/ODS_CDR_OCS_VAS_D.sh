hive  -e  "
use ods;
create table   ODS_CDR_OCS_VAS_D   
(

  ACCT_MONTH                string       comment       'ACCT_MONTH',
  DAY_ID                    string       comment       'DAY_ID',
  SYS_SVC_TYPE              string       comment       'SYS_SVC_TYPE',
  SEQ_NO                    string       comment       'SEQ_NO',
  CDR_TIME                  string       comment       'CDR_TIME',
  MSG_ID                    string       comment       'MSG_ID',
  SP_ID                     string       comment       'SP_ID',
  SERVICE_ID                string       comment       'SERVICE_ID',
  CP_ID                     string       comment       'CP_ID',
  CNT_ID                    string       comment       'CNT_ID',
  ACCESS_NO                 string       comment       'ACCESS_NO',
  SERVICE_TYPE              string       comment       'SERVICE_TYPE',
  SRC_DEV_TYPE              string       comment       'SRC_DEV_TYPE',
  SRC_DEV_ID                string       comment       'SRC_DEV_ID',
  CDR_TYPE                  string       comment       'CDR_TYPE',
  PRODUCT_ID                string       comment       'PRODUCT_ID',
  SPC_PRODUCT_ID            string       comment       'SPC_PRODUCT_ID',
  SP_PRODUCT_ID             string       comment       'SP_PRODUCT_ID',
  ORDER_METHOD_ID           string       comment       'ORDER_METHOD_ID',
  PUSH_ID                   string       comment       'PUSH_ID',
  OAMDN                     string       comment       'OAMDN',
  DAMDN                     string       comment       'DAMDN',
  FAMDN                     string       comment       'FAMDN',
  USER_TYPE                 string       comment       'USER_TYPE',
  START_TIME                string       comment       'START_TIME',
  END_TIME                  string       comment       'END_TIME',
  CALL_DURATION             int          comment       'CALL_DURATION',
  INPUT_OCTETS              int          comment       'INPUT_OCTETS',
  OUTPUT_OCTETS             int          comment       'OUTPUT_OCTETS',
  FEE_POINT                 string       comment       'FEE_POINT',
  BILL_TYPE                 string       comment       'BILL_TYPE',
  IFEE1                     string       comment       'IFEE1',
  RESV1                     string       comment       'RESV1',
  RESV2                     string       comment       'RESV2',
  IMSI                      string       comment       'IMSI',
  ISRATE                    string       comment       'ISRATE',
  FILE_TYPE                 string       comment       'FILE_TYPE',
  FILE_NO                   string       comment       'FILE_NO',
  SERVICE_NUMBER            string       comment       'SERVICE_NUMBER',
  PART_ID                   string       comment       'PART_ID',
  ACCT_ID                   string       comment       'ACCT_ID',
  SUB_ID                    string       comment       'SUB_ID',
  SVC_TYPE                  string       comment       'SVC_TYPE',
  REGION_ID                 string       comment       'REGION_ID',
  USAGE_TYPE                string       comment       'USAGE_TYPE',
  USAGE_CASE                string       comment       'USAGE_CASE',
  USAGE_CLASS               string       comment       'USAGE_CLASS',
  CLASS_OF_SRV_CODE         string       comment       'CLASS_OF_SRV_CODE',
  CFEE                      float        comment       'CFEE',
  LFEE                      float        comment       'LFEE',
  IFEE                      float       comment        'IFEE',
  MFEE                      float       comment        'MFEE',
  TFEE                      float       comment        'TFEE',
  DIS_CFEE                  float       comment        'DIS_CFEE',
  DIS_LFEE                  float       comment        'DIS_LFEE',
  DIS_IFEE                  float       comment        'DIS_IFEE',
  CFEE_TIMES                float       comment        'CFEE_TIMES',
  LFEE_TIMES                float       comment        'LFEE_TIMES',
  IFEE_TIMES                float       comment        'IFEE_TIMES',
  MFEE_TIMES                float       comment        'MFEE_TIMES',
  TFEE_TIMES                float       comment        'TFEE_TIMES',
  CFEE_SUBJECT              string      comment        'CFEE_SUBJECT',
  LFEE_SUBJECT              string      comment        'LFEE_SUBJECT',
  IFEE_SUBJECT              string      comment        'IFEE_SUBJECT',
  MFEE_SUBJECT              string      comment        'MFEE_SUBJECT',
  TFEE_SUBJECT              string      comment        'TFEE_SUBJECT',
  PACKAGE_ID                string      comment        'PACKAGE_ID',
  PRODUCT_CLASS             string      comment        'PRODUCT_CLASS',
  RAW_FILENAME              string      comment        'RAW_FILENAME',
  LATE_LINK                 string      comment        'LATE_LINK',
  CAL_TIME                  string      comment        'CAL_TIME',
  AUDI_STR                  string      comment        'AUDI_STR',
  VARIAN_STR                string      comment        'VARIAN_STR',
  RERATE_CNT                int         comment        'RERATE_CNT',
  TIMESTAMP                 string      comment        'TIMESTAMP',
  STOP_CAUSE                string      comment        'STOP_CAUSE',
  OCS_SERIAL_NO             string      comment        'OCS_SERIAL_NO',
  HOST_ID                   string      comment        'HOST_ID',
  OCS_SRV_TYPE              string      comment        'OCS_SRV_TYPE',
  CUST_ID                   string      comment        'CUST_ID',
  BRAND                     string      comment        'BRAND',
  RAW_HOST                  string      comment        'RAW_HOST',
  BALANCE_INFO              string      comment        'BALANCE_INFO',
  BEARER_CAPABILITY         string      comment        'BEARER_CAPABILITY',
  CALLING_PARTY             string      comment        'CALLING_PARTY',
  CALLED_PARTY              string      comment        'CALLED_PARTY',
  RAW_CALLING_PARTY         string      comment        'RAW_CALLING_PARTY',
  RAW_CALLED_PARTY          string      comment        'RAW_CALLED_PARTY',
  BALANCE_VALUE             float       comment        'BALANCE_VALUE',
  EXP_DATE                  string      comment        'EXP_DATE',
  TOTAL_USED                int         comment        'TOTAL_USED',
  CASH_USED                 int         comment        'CASH_USED',
  GIFT_USED                 int         comment        'GIFT_USED',
   INSERT_DATE              string      comment        'INSERT_DATE'
)
comment '[MASTER_FIELD:B域,LEVEL:ODS层,DATA_FIELD:详单域,DATASUB_FIELD:ODS_CDR_OCS_VAS_D]'
PARTITIONED BY (MONTH_PART STRING comment '月份分区',DAY_PART STRING comment '日期分区')
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\001' 
STORED AS RCFILE;
"