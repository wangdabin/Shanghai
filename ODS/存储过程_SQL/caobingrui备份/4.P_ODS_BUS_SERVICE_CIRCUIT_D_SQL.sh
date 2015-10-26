#/bin/bash

#业务逻辑输入参数，此处很重要，需要根据实际业务情况认真设定！！！！ 
v_month=$1
v_day=$2

echo "
insert overwrite table ODS.ODS_BUS_SERVICE_CIRCUIT_D  partition (month_part = '$v_month',day_part = '$v_day') 
    SELECT 
'$v_month',
'$v_day',
service_id,
order_circuit_id,
order_id,
a_client_addr,
a_eqpt_type,
band,
count,
link_type,
z_client_addr,
z_eqpt_type,
ip_design,
state,
create_date,
remarks,
request_type,
cust_ip_addr_mask,
as_num,
router_protocol,
z_band,
bi_dir_pvc_band,
circuit_no,
billing_number,
e1_number_desc
FROM SRC.D_OMS_SERVICE_CIRCUIT_INFO
    where 1=1;
"


