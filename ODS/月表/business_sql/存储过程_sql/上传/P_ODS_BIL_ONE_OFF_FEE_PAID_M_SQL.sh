#/bin/bash

#业务逻辑输入参数，此处很重要，需要根据实际业务情况认真设定！！！！ 
v_month=$1

echo "
insert overwrite table ODS.ODS_BIL_ONE_OFF_FEE_PAID_M partition (month_part='$v_month') 
    SELECT 
'$v_month', 
serial_code,
bms_accept_id,
cycle_month,
account_id,
subscription_id,
svc_type,
subject_id,
trans_fee,
rele_flag,
create_time,
region_id,
operator_id,
office_id,
county_id,
op_region_id,
remark
FROM SRC.ACC_ONE_OFF_FEE_PAID;"


