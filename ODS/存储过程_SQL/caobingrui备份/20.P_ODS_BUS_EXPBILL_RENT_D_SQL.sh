#/bin/bash

#业务逻辑输入参数，此处很重要，需要根据实际业务情况认真设定！！！！ 
v_month=$1
v_day=$2

echo "
insert overwrite table ODS.ODS_BUS_EXPBILL_RENT_D partition (month_part = '$v_month',day_part = '$v_day') 
    SELECT 
'$v_month',
'$v_day',
c1,
c2,
c3,
c4,
c5,
c6,
c7,
c8,
c9,
c10,
c11,
c12,
c13,
c14,
c15,
c16,
c17
FROM SRC.EXPBILL_RENT
    where 1=1;
"

