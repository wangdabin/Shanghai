#/bin/bash

#业务逻辑输入参数，此处很重要，需要根据实际业务情况认真设定！！！！ 
v_month=$1

echo "
insert overwrite table ODS.ODS_USR_SUBS_PRE_ALL_M partition (month_part='$v_month') 
    SELECT 
'$v_month',  
RESERVED2,
BMS_ACCEPT_ID,
COUNTY_ID,
OFFICE_ID,
OPERATOR_ID,
CREATE_TIME,
BUSI_ID
FROM SRC.USER_SUBS_PRE_ALL;
"


