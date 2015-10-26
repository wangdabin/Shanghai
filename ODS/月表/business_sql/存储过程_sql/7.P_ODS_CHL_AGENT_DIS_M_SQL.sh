#/bin/bash

#业务逻辑输入参数，此处很重要，需要根据实际业务情况认真设定！！！！ 
v_month=$1

echo "
insert overwrite table ODS.ODS_CHL_AGENT_DIS_M partition (month_part='$v_month') 
    SELECT 
'$v_month',  
SUBSCRIPTION_ID,
SERVICE_NUM,
DISCOUNT_FEE,
OPERATE_TIME,
SVC_TYPE,
INSERT_TIME,
'0',
NULL,
PAR_VALUE,
FROM SRC.BMS_AGENT_DISCOUNT_BI;
"
