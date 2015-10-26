#/bin/bash

#业务逻辑输入参数，此处很重要，需要根据实际业务情况认真设定！！！！ 
v_month=$1
v_day=$2

echo "
insert overwrite table ODS.ODS_CHL_PAY_TRANSACTION_D partition (month_part = '$v_month',day_part = '$v_day') 
    SELECT 
ptseqno,
pttranscode,
pttranstime,
ptsystemtime,
ptendtime,
ptsettlementtime,
ptorgsystem,
ptorgssn,
ptatssn,
pthhssn,
ptdecardtype,
ptdecardno,
ptcrcardtype,
ptcrcardno,
ptamount,
ptbalance,
ptrevflag,
ptrevsystem,
ptoldseqno,
ptrescode,
ptaddidata,
pttransstatus,
insert_date,
'$v_month',
'$v_day'
FROM SRC.TAB_PAY_TRANSACTION
    where 1=1;
"

