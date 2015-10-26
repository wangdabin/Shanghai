#/bin/bash

#业务逻辑输入参数，此处很重要，需要根据实际业务情况认真设定！！！！ 
v_month=$1
v_day=$2

echo "
insert overwrite table ODS.ODS_CUS_UCS_GROUP_D partition (month_part = '$v_month',day_part = '$v_day') 
    SELECT 
'$v_month',
'$v_day',
subs_unique_id,
group_id,
contract_id,
account_id,
customer_id,
service_num,
service_type,
service_status,
status_chg_date,
status_chg_type,
last_service_status,
last_status_chg_date,
last_status_chg_type,
user_name,
user_addr,
user_passwd,
create_date,
active_date,
inactive_date,
normalize_date,
remark,
guarantor_id,
region_id,
county_id,
office_id,
operator_id,
rele_office_id,
rele_county_id,
acct_type,
credit_value,
join_date,
brand_id,
pending_busi,
pending_accept_id,
crm2_grp_iid2,
inert_date
FROM SRC.UCS_GROUP
    where 1=1;
"


