#/bin/bash

#业务逻辑输入参数，此处很重要，需要根据实际业务情况认真设定！！！！ 
v_month=$1

echo "
insert overwrite table ODS.ODS_RES_EVENHAND_CHARGE_4G_M partition (month_part='$v_month') 
    SELECT 
'$v_month',
NULL,
NULL,
NULL,
trim(CHANNEL_NO),
trim(AGENT_NAME),
trim(IS_GROUP),
NULL,
NULL,
NULL,
NULL,
trim(OPERATOR_ID),
trim(OPERATOR_NAME),
trim(CHANNEL_TYPE),
trim(ORDER_ID),
trim(FANXIAO_ORDER),
trim(SERVICE_NUMBER),
trim(TELE_TYPE),
NULL,
trim(SUBS_TYPE),
NULL,
trim(USER_NAME),
trim(CERT_ID),
trim(EXPENSES_AMOUNT),
trim(DEPOSIT_AMOUNT),
TOSAVE_AMOUNT,
trim(COMPLETED_TIME),
trim(RECEIVABLE_AMOUNT),
trim(SOLID_AMOUNT),
trim(REDUCTION_COST),
trim(PAY_SIGN),
NULL,
trim(GUARANTEE_TYPE),
NULL,
NULL,
NULL,
NULL,
trim(PRODUCT_ID),
trim(PRODUCT_NAME),
trim(ACTIVITIES_CODE),
trim(ACTIVITIES_NAME),
NULL,
trim(TERMINAL_ID),
NULL,
trim(TERMINAL_TYPE),
trim(TERMINAL_BRAND_ID),
trim(TERMINAL_BRAND_NAME),
trim(TERMINAL_TYPE_ID),
trim(TERMINAL_TYPE_NAME),
trim(TERMINAL_MODEL_ID),
trim(TERMINAL_MODEL),
trim(REPLENISHMENT_SIGN),
ACTIVITIES_SUBSIDIES,
ACTIVITIES_PHONE,
TERMINAL_PARAGRAPH,
TERMINAL_PRICE,
MARKET_RETAIL,
LINE_LONG,
NULL,
NULL,
trim(CREA_DATE),
NULL,
NULL,
NULL,
NULL,
NULL
FROM SRC.SRC_RES_EVENHAND_CHARGE_4G_M T
where T.ACCT_MONTH='$v_month';
"






