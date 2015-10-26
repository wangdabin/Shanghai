#/bin/bash

#业务逻辑输入参数，此处很重要，需要根据实际业务情况认真设定！！！！ 
v_month=$1

echo "
insert overwrite table ODS.ODS_CUS_TCT_YEAR_RESET_M partition (month_part='$v_month') 
    SELECT 
'$v_month', 
USER_NO,
YEAR,
CREDIT_VALUE,
OPERATE_DATE,
IS_RESTORE,
CALCULATE_MONTH
FROM SRC.TCT_CREDIT_YEAR_RESET;
"


