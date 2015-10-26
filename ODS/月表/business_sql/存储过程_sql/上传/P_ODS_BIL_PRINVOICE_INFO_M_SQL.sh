#/bin/bash

#业务逻辑输入参数，此处很重要，需要根据实际业务情况认真设定！！！！ 
v_month=$1

echo "
insert overwrite table ODS.ODS_BIL_PRINVOICE_INFO_M partition (month_part='$v_month') 
    SELECT 
'$v_month',
province_order_id,
taxpayer_code,
region_id,
cycle_month_start,
cycle_month_end,
source_type,
office_id,
invoice_item_list,
total_fee,
create_time,
order_id,
http_result,
rece_fee_name,
extra_info1,
extra_info2,
extra_info3,
prt_order_id,
depart_name,
user_id,
account_id,
operator_id
FROM SRC.BMS_VAT_PRINTINVOICE_INFO_M
where f_date_to_char(f_char_to_date(create_time,'yyyy-MM-dd HH:mm:ss'),'yyyyMM')='$v_month';"



