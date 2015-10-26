#/bin/bash

#业务逻辑输入参数，此处很重要，需要根据实际业务情况认真设定！！！！ 
v_month=$1


echo "
insert overwrite table ODS.ODS_CHL_ZB_AGENT_DEV_AREA_M partition (month_part = '$v_month') 
    SELECT 
'$v_month',
bss_sys_code,
chnl_code,
manager_area_code,
manager_dept_code,
dev_code,
chnl_name
FROM SRC.ZB_AGENT_CHANNEL_DEV_AREA
    where 1=1;
"


