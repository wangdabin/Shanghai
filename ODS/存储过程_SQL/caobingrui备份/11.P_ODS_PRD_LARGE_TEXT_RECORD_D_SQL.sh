#/bin/bash

#业务逻辑输入参数，此处很重要，需要根据实际业务情况认真设定！！！！ 
v_month=$1
v_day=$2

echo "
insert overwrite table ODS.ODS_PRD_LARGE_TEXT_RECORD_D partition (month_part = '$v_month',day_part = '$v_day') 
    SELECT 
'$v_month',
'$v_day',
record_id,
text_record,
staff_id,
state,
state_date,
del_flag,
remarks
FROM SRC.SO_LARGE_TEXT_RECORD
    where 1=1;
"

