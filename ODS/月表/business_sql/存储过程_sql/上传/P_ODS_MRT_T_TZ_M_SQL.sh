#/bin/bash

#业务逻辑输入参数，此处很重要，需要根据实际业务情况认真设定！！！！ 
v_month=$1

echo "
insert overwrite table ODS.ODS_MRT_T_TZ_M partition (month_part='$v_month') 
    SELECT 
'$v_month',  
SVCNUM,
FLAG,
INSERT_TIME,
MO_CONFIG,
CLUB_NAME,
MO_ID,
ACTIVITY_ID,
DELIVER_ID,
RETURN_MSG,
TZ_ID,
STATUS,
TZ_STATUS,
SUBSCRBID,
UPDATE_TIME,
UPDATOR
FROM SRC.T_TZ;
"



