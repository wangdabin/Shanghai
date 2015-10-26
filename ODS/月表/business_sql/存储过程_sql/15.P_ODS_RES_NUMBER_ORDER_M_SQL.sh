#/bin/bash

#业务逻辑输入参数，此处很重要，需要根据实际业务情况认真设定！！！！ 
v_month=$1

echo "
insert overwrite table ODS.ODS_RES_NUMBER_ORDER_M partition (month_part='$v_month') 
    SELECT 
'$v_month',  
ORDER_UNIQUE_ID,
SVC_NUMBER,
NUMBER_STATUS,
BMS_ACCEPT_ID,
ORDER_ID,
ORDER_CHANNEL,
ORDER_SEQ_ID,
PRODUCT_ID,
MIN_FEE,
ONNET_TIME,
DEPOSIT_FEE,
REGION_ID,
COUNTY_ID,
OFFICE_ID,
NUM_RULE,
USER_NAME,
CERT_TYPE,
CERT_NUM,
CONTACT_NUM,
ACTIVE_TIME,
INACTIVE_TIME,
CREATE_TIME,
PROV_PRODUCT_ID,
SCHEME_ID,
OLD_NUMBER_STATUS,
RESERVED1,
PROV_CODE,
CITY_CODE,
COUNTY_CODE,
SERVICE_STATUS_TYPE,
OPT_PRODUCT_ID,
OPT_PRODUCT_NAME,
FIRST_MON_BILL_MODE
FROM ODS.ODS_RES_NUMBER_ORDER_D T
where T.ACCT_MONTH='$v_month' and T.DAY_ID=f_date_to_char(f_last_day(f_char_to_date($v_month,'yyyyMM')),'dd');
"


