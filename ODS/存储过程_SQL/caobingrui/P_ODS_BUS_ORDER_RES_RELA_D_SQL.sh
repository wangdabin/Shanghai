#/bin/bash

#业务逻辑输入参数，此处很重要，需要根据实际业务情况认真设定！！！！ 
v_month=$1
v_day=$2

echo "
insert overwrite table ODS.ODS_BUS_ORDER_RES_RELA_D partition (month_part = '$v_month',day_part = '$v_day') 
    SELECT 
'$v_month',
'$v_day',
id,
order_id,
task_id,
business_complete_date,
billing_date,
proc_content,
state,
create_date,
remarks
FROM SRC.D_BILLING_ORDER_RES_RELAT
    where 1=1;
"



