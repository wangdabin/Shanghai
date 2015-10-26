#/bin/bash

#业务逻辑输入参数，此处很重要，需要根据实际业务情况认真设定！！！！ 
v_month=$1
v_day=$2

echo "
insert overwrite table ods.ods_pxg_test partition (month_part = '$v_month',day_part = '$v_day')   
select
'$v_month',
'$v_day',
id ,
name ,
age 
from src.pxg_test
where 1=1;"

