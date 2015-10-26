#/bin/bash

#业务逻辑输入参数，此处很重要，需要根据实际业务情况认真设定！！！！ 
v_month=$1
v_day=$2

echo "
insert overwrite table ODS.ODS_BIL_ACC_SUBJECT_D partition (month_part = '$v_month',day_part = '$v_day') 
    SELECT 
'$v_month',
'$v_day',
subject_id,
subject_name,
subject_desc,
display_unit,
unit_name,
subject_type,
subject_attr,
subject_mode,
operator_id,
office_id,
create_time
FROM SRC.ACC_SUBJECT
    where 1=1;
"
