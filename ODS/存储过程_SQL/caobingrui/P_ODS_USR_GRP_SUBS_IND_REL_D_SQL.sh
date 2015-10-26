#/bin/bash

#业务逻辑输入参数，此处很重要，需要根据实际业务情况认真设定！！！！ 
v_month=$1
v_day=$2

echo "
insert overwrite table ODS.ODS_USR_GRP_SUBS_IND_REL_D partition (month_part = '$v_month',day_part = '$v_day') 
    SELECT 
'$v_month',
'$v_day',
member_subs_id,
industry_type_id,
industry_kind_id,
industry_kind_name,
busisn,
oper_user,
in_date,
remark
FROM SRC.GRP_SUBS_IND_REL
    where 1=1;
"


