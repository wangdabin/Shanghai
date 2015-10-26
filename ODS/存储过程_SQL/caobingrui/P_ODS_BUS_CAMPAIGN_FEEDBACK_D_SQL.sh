#/bin/bash

#业务逻辑输入参数，此处很重要，需要根据实际业务情况认真设定！！！！ 
v_month=$1
v_day=$2

echo "
insert overwrite table ODS.ODS_BUS_CAMPAIGN_FEEDBACK_D  partition(month_part = '$v_month',day_part = '$v_day') 
    SELECT 
'$v_month',
'$v_day',
campaignid,
msisdn,
product_id,
result,
contacttime,
channel_type,
sex,
age,
reason
FROM SRC.SH_BMS_CAMPAIGN_FEEDBACK
    where 1=1;
"
