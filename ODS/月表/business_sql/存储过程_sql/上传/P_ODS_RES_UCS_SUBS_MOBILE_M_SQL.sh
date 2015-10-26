#/bin/bash

#业务逻辑输入参数，此处很重要，需要根据实际业务情况认真设定！！！！ 
v_month=$1

echo "
insert overwrite table ODS.ODS_RES_UCS_SUBS_MOBILE_M partition (month_part='$v_month') 
    SELECT 
'$v_month',  
SUBS_MOBILE_ID,
SUBS_SCHEME_ID,
SUBSCRIPTION_ID,
SERVICE_TYPE,
MOBILE_ID,
MOBILE_SELL_SERIAL,
MOBILE_ESN,
MOBILE_SELL_PRICE,
MOBILE_COST_PRICE,
MOBILE_MODEL,
MOBILE_CHANNEL,
MOBILE_COLOR,
CREATE_TIME,
ACTIVE_TIME,
INACTIVE_TIME,
REGION_ID,
COUNTY_ID,
OFFICE_ID,
OPERATOR_ID,
MOBILE_RELE
FROM ODS.ODS_RES_UCS_SUBS_MOBILE_D T
where T.ACCT_MONTH='$v_month'  and T.DAY_ID=f_date_to_char(f_last_day(f_char_to_date('$v_month','yyyyMM')),'dd');
"


