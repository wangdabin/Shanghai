#/bin/bash

#业务逻辑输入参数，此处很重要，需要根据实际业务情况认真设定！！！！ 
v_month=$1

echo "
insert overwrite table ODS.ODS_CDR_BGDT_G_M partition (month_part='$v_month') 
    SELECT 
'$v_month',  
subscription_id,
service_num,
discount_fee,
operate_time,
svc_type,
bill_month,
par_value,
status
FROM SRC.DR_BGDT_G_M;
"


