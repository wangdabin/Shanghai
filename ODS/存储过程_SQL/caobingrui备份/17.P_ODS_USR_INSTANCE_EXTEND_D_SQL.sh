#/bin/bash

#业务逻辑输入参数，此处很重要，需要根据实际业务情况认真设定！！！！ 
v_month=$1
v_day=$2

echo "
insert overwrite table ODS.ODS_USR_INSTANCE_EXTEND_D partition (month_part = '$v_month',day_part = '$v_day') 
    SELECT 
'$v_month',
'$v_day',
product_instance_id,
busniess_complete_date,
integral_bill,
print_last_date,
ekey_state,
bespeak_code,
pi_attr
FROM SRC.PRODUCT_INSTANCE_EXTEND
    where 1=1;
"

