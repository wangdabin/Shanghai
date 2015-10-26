#/bin/bash

#业务逻辑输入参数，此处很重要，需要根据实际业务情况认真设定！！！！ 
v_month=$1
v_day=$2

echo "
insert overwrite table ODS.ODS_BMS_GROUP_CERT_INFO_D partition (month_part = '$v_month',day_part = '$v_day') 
    SELECT 
'$v_month',
'$v_day',
groupcertinfo_uniqe_id,
subscription_id,
service_type,
user_name,
user_type,
cert_num,
cert_type,
cert_addr,
expire_date,
final_use_name,
final_cert_num,
final_cert_type,
final_cert_addr,
final_expire_date,
final_company_name,
device_id,
insert_time,
active_time,
inactive_time,
operator_id
FROM SRC.BMS_GROUP_CERT_INFO
    where 1=1;
"


