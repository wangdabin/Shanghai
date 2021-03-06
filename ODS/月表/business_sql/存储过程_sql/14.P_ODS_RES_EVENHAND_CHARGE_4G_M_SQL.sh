#/bin/bash

#业务逻辑输入参数，此处很重要，需要根据实际业务情况认真设定！！！！ 
v_month=$1

echo "
insert overwrite table ODS.ODS_RES_EVENHAND_CHARGE_4G_M partition (month_part='$v_month') 
    SELECT 
'$v_month',
trim(PROVINCE_NO),
trim(AREA_NO),
trim(CITY_NO),
trim(CHANNEL_NO),
trim(AGENT_NAME),
trim(IS_GROUP),
trim(GROUP_TYPE),
trim(GROUP_NAME),
trim(GROUP_ID),
trim(GROUP_LEVEL),
trim(OPERATOR_ID),
trim(OPERATOR_NAME),
trim(CHANNEL_TYPE),
trim(ORDER_ID),
trim(FANXIAO_ORDER),
trim(SERVICE_NUMBER),
trim(TELE_TYPE),
trim(TELE_SUBTYPE),
trim(SUBS_TYPE),
trim(SUBS_STATUS),
trim(USER_NAME),
trim(CERT_ID),
trim(EXPENSES_AMOUNT),
trim(DEPOSIT_AMOUNT),
trim(TOSAVE_AMOUNT),
trim(COMPLETED_TIME),
trim(RECEIVABLE_AMOUNT),
trim(SOLID_AMOUNT),
trim(REDUCTION_COST),
trim(PAY_SIGN),
trim(FIRST_PATTERN),
trim(GUARANTEE_TYPE),
trim(PROTO_ID),
trim(ORG_NAME),
trim(CREDIT_NAME),
trim(AGREEMENT_RATE),
trim(PRODUCT_ID),
trim(PRODUCT_NAME),
trim(ACTIVITIES_CODE),
trim(ACTIVITIES_NAME),
trim(USIM_ID),
trim(TERMINAL_ID),
trim(HJYS_ID),
trim(TERMINAL_TYPE),
trim(TERMINAL_BRAND_ID),
trim(TERMINAL_BRAND_NAME),
trim(TERMINAL_TYPE_ID),
trim(TERMINAL_TYPE_NAME),
trim(TERMINAL_MODEL_ID),
trim(TERMINAL_MODEL),
trim(REPLENISHMENT_SIGN),
trim(ACTIVITIES_SUBSIDIES),
trim(ACTIVITIES_PHONE),
trim(TERMINAL_PARAGRAPH),
trim(TERMINAL_PRICE),
trim(MARKET_RETAIL),
trim(LINE_LONG),
trim(GDS_ID),
trim(GDS_NAME),
trim(CREA_DATE),
trim(RECOMMEND_NAME),
trim(RECOMMEND_ID),
trim(RECOMMEND_CODE),
trim(DEPARTMENT_CODE),
trim(DEPARTMENT_NAME)
FROM SRC.SRC_RES_EVENHAND_CHARGE_4G_M T
where T.ACCT_MONTH='$v_month';
"
