#/bin/bash

#业务逻辑输入参数，此处很重要，需要根据实际业务情况认真设定！！！！ 
v_month=$1
v_day=$2

echo "
insert overwrite table ODS.ODS_BUS_SO_SERVICE_ORDER_D partition (month_part = '$v_month',day_part = '$v_day') 
    SELECT 
'$v_month',
'$v_day',
id,
so_sub_order_id,
service_id,
service_table_code,
state,
remarks,
del_flag
FROM SRC.SO_SERVICE_ORDER
    where 1=1;
"










