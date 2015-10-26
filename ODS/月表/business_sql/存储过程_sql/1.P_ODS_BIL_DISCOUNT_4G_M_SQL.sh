#/bin/bash

#业务逻辑输入参数，此处很重要，需要根据实际业务情况认真设定！！！！ 
v_month=$1

echo "
insert overwrite table ODS.ODS_BIL_DISCOUNT_4G_M partition (month_part='$v_month') 
    SELECT 
'$v_month',  
subscription_id,
service_num,
discount_fee/1000,
operate_time,
svc_type,
bill_month,
par_value/1000,
status
FROM SRC.BMS_AGENT_DISCOUNT_BI_4G;
"


