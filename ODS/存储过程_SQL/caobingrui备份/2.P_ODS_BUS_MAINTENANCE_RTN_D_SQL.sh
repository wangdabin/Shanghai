#/bin/bash

#业务逻辑输入参数，此处很重要，需要根据实际业务情况认真设定！！！！ 
v_month=$1
v_day=$2
                 
echo "
insert overwrite table ODS.ODS_BUS_MAINTENANCE_RTN_D partition (month_part = '$v_month',day_part = '$v_day') 
    SELECT 
'$v_month',
'$v_day',
 id,
order_id,
task_id,
circuit_no,
circuit_notes,
userip_r,
linkip_cnc_r,
linkip_cust_r,
linkip_cust_nr,
userip_nr,
primary_dep,
second_dep,
design_man,
design_time,
state,
create_date,
remarks,
order_circuit_id,
circuit_complete_time,
billing_number,
e1_number_desc,
construct_contact_man,
construct_contact_tel
FROM SRC.D_MAINTENANCE_ORDER_RTN
    where 1=1;
"




 