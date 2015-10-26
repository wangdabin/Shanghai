#/bin/bash

#业务逻辑输入参数，此处很重要，需要根据实际业务情况认真设定！！！！ 
v_month=$1
v_day=$2

echo "
insert overwrite table ODS.ODS_USR_UCS_SUBS_OBJECT_D partition (month_part = '$v_month',day_part = '$v_day') 
    SELECT 
'$v_month',
'$v_day',
subs_object_uid,
subs_scheme_id,
subscription_id,
service_type,
object_sell_serial,
object_id,
object_type,
object_esn,
object_sell_price,
object_cost_price,
object_status,
create_time,
active_time,
inactive_time,
region_id,
county_id,
office_id,
operator_id,
object_memo
FROM SRC.UCS_SUBS_OBJECT
    where 1=1;
"

