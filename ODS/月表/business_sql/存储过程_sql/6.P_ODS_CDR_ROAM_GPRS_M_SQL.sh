#/bin/bash

#业务逻辑输入参数，此处很重要，需要根据实际业务情况认真设定！！！！ 
v_month=$1

echo "
insert overwrite table ODS.ODS_CDR_ROAM_GPRS_M partition (month_part='$v_month') 
    SELECT 
'$v_month',  
DAY_ID,
BILL_MONTH,
SVC_TYPE,
SUBSCRIPTION_ID,
MDN,
OCT
FROM SRC.ROAM_GPRS;
"


