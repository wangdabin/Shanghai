hive  -e  "
use ods;
create table  ODS_M_U_BI_INF_CONT_M  
(

      ACCT_MONTH   string   comment   '统计账期',
      USER_NO   string   comment   '用户编号',
      DEVICE_NUMBER   string   comment   '用户号码',
      QUERY_LAB   string   comment   '"当月查询接触次数分档 0: 当月查询接触次数0次
1: 当月查询接触次数1-4次
5: 当月查询接触次数5-19次
20: 当月查询接触次数20次以上
"',
      CONSULT_LAB   string   comment   '当月咨询接触次数分档  同上',
      BUSINESS_LAB   string   comment   '当月业务办理接触次数分档  同上',
      TROUBLE_LAB   string   comment   '当月故障申告接触次数分档 同上',
      COMPLAINT_LAB   string   comment   '当月投诉接触次数分档 同上',
      OTHER_LAB   string   comment   '当月其他接触次数分档 同上',
      THR_QUERY_LAB   string   comment   '近3月查询接触次数分档 同上',
      THR_CONSULT_LAB   string   comment   '近3月咨询接触次数分档 同上',
      THR_BUSINESS_LAB   string   comment   '近3月业务办理接触次数分档 同上',
      THR_TROUBLE_LAB   string   comment   '近3月故障申告接触次数分档 同上',
      THR_COMPLAINT_LAB   string   comment   '近3月投诉接触次数分档 同上',
      THR_OTHER_LAB   string   comment   '近3月其他接触次数分档 同上',
      SIX_QUERY_LAB   string   comment   '近6月查询接触次数分档 同上',
      SIX_CONSULT_LAB   string   comment   '近6月咨询接触次数分档 同上',
      SIX_BUSINESS_LAB   string   comment   '近6月业务办理接触次数分档 同上',
      SIX_TROUBLE_LAB   string   comment   '近6月故障申告接触次数分档 同上',
      SIX_COMPLAINT_LAB   string   comment   '近6月投诉接触次数分档 同上',
      SIX_OTHER_LAB   string   comment   '近6月其他接触次数分档 同上 ',
      YEAR_QUERY_LAB   string   comment   '近1年查询接触次数分档 同上',
      YEAR_CONSULT_LAB   string   comment   '近1年咨询接触次数分档 同上',
      YEAR_BUSINESS_LAB   string   comment   '近1年业务办理接触次数分档 同上',
      YEAR_TROUBLE_LAB   string   comment   '近1年故障申告接触次数分档 同上',
      YEAR_COMPLAINT_LAB   string   comment   '近1年投诉接触次数分档 同上',
      YEAR_OTHER_LAB   string   comment   '近1年其他接触次数分档 同上',
      INSERT_DATE   string   comment   'INSERT_DATE'
            )
comment '[MASTER_FIELD:B域,LEVEL:ODS层,DATA_FIELD:其它域,DATASUB_FIELD:ODS_M_U_BI_INF_CONT_M]'
PARTITIONED BY (MONTH_PART STRING comment '月份分区')
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\001' 
STORED AS RCFILE;