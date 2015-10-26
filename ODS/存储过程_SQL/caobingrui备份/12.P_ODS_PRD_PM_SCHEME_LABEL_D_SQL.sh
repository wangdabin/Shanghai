#/bin/bash

#业务逻辑输入参数，此处很重要，需要根据实际业务情况认真设定！！！！ 
v_month=$1
v_day=$2

echo "
insert overwrite table ODS.ODS_PRD_PM_SCHEME_LABEL_D partition (month_part = '$v_month',day_part = '$v_day') 
    SELECT 
'$v_month',
'$v_day',
scheme_id,
scheme_label_id,
scheme_label_value,
create_time,
change_time,
op_operator_id,
re_desc
FROM SRC.PM_SCHEME_LABEL
    where 1=1;
"

