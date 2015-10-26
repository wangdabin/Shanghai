#/bin/bash

#业务逻辑输入参数，此处很重要，需要根据实际业务情况认真设定！！！！ 
v_month=$1
v_day=$2

echo "
insert overwrite table ODS.ODS_PUB_ADDR_D partition (month_part = '$v_month',day_part = '$v_day') 
    SELECT 
'$v_month',
'$v_day',
addr_id,
district_id,
road_id,
location_id,
addr_desc,
state,
remarks,
exch_id
FROM SRC.ADDR
    where 1=1;
"

