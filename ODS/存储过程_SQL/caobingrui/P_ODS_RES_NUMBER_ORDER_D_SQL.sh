#/bin/bash

#业务逻辑输入参数，此处很重要，需要根据实际业务情况认真设定！！！！ 
v_month=$1
v_day=$2

echo "
insert overwrite table ODS.ODS_RES_NUMBER_ORDER_D partition (month_part = '$v_month',day_part = '$v_day') 
    SELECT 
'$v_month',
'$v_day',
order_unique_id,
svc_number,
number_status,
bms_accept_id,
order_id,
order_channel,
order_seq_id,
product_id,
min_fee,
onnet_time,
deposit_fee,
region_id,
county_id,
office_id,
num_rule,
user_name,
cert_type,
cert_num,
contact_num,
active_time,
inactive_time,
create_time,
prov_product_id,
scheme_id,
old_number_status,
reserved1,
prov_code,
city_code,
county_code,
service_status_type,
opt_product_id,
opt_product_name,
first_mon_bill_mode
FROM SRC.RES_NUMBER_ORDER
    where  f_date_to_char(f_char_to_date(create_time,'yyyy-MM-dd'),'yyyyMMdd')<=concat('$v_month','$v_day');;
"



