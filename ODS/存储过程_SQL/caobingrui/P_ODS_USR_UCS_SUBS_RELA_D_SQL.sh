#/bin/bash

#业务逻辑输入参数，此处很重要，需要根据实际业务情况认真设定！！！！ 
v_month=$1
v_day=$2

echo "
insert overwrite table ODS.ODS_USR_UCS_SUBS_RELA_D partition (month_part = '$v_month',day_part = '$v_day') 
    SELECT 
'$v_month',
'$v_day',
subscription_id1,
subscription_id2,
rela,
other_value,
service_num1,
service_num2,
create_time,
active_time,
inactive_time,
abs_active_time,
abs_inactive_time,
region_id,
county_id,
office_id,
operator_id,
status
FROM SRC.UCS_SUBS_RELA
    where 1=1;
"

