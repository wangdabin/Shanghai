hive  -e  "
use ods;
create table  ODS_RES_EVENHAND_CHARGE_4G_M  
(

      ACCT_MONTH   string   comment   '月份',
      PROVINCE_NO   string   comment   '省份',
      AREA_NO   string   comment   '地市',
      CITY_NO   string   comment   '区县',
      CHANNEL_NO   string   comment   '渠道编码',
      AGENT_NAME   string   comment   '代理商',
      IS_GROUP   string   comment   '集团客户标识',
      GROUP_TYPE   string   comment   '集团应用类别',
      GROUP_NAME   string   comment   '集团客户名称',
      GROUP_ID   string   comment   '集团ID',
      GROUP_LEVEL   string   comment   '集团级别',
      OPERATOR_ID   string   comment   '操作员工号',
      OPERATOR_NAME   string   comment   '操作员姓名',
      CHANNEL_TYPE   string   comment   '渠道类型',
      ORDER_ID   string   comment   '订单标识',
      FANXIAO_ORDER   string   comment   '返销订单',
      SERVICE_NUMBER   string   comment   '服务号码',
      TELE_TYPE   string   comment   '业务类型',
      TELE_SUBTYPE   string   comment   '业务子类型',
      SUBS_TYPE   string   comment   '订单类型',
      SUBS_STATUS   string   comment   '订单状态',
      USER_NAME   string   comment   '用户名称',
      CERT_ID   string   comment   '证件号码',
      EXPENSES_AMOUNT   decimal(20,3)   comment   '营业受理金额',
      DEPOSIT_AMOUNT   decimal(20,3)   comment   '押金金额',
      TOSAVE_AMOUNT   decimal(20,3)   comment   '预存金额',
      COMPLETED_TIME   string   comment   '竣工时间',
      RECEIVABLE_AMOUNT   decimal(20,3)   comment   '应收金额',
      SOLID_AMOUNT   decimal(20,3)   comment   '实收金额',
      REDUCTION_COST   decimal(20,3)   comment   '减免费用',
      PAY_SIGN   string   comment   '预付费标志',
      FIRST_PATTERN   string   comment   '首账单模式',
      GUARANTEE_TYPE   string   comment   '担保类型',
      PROTO_ID   string   comment   '协议编码',
      ORG_NAME   string   comment   '单位名称',
      CREDIT_NAME   string   comment   '信贷模式名称',
      AGREEMENT_RATE   string   comment   '协议费率',
      PRODUCT_ID   string   comment   '主产品套餐编码',
      PRODUCT_NAME   string   comment   '主产品套餐名称',
      ACTIVITIES_CODE   string   comment   '活动编码',
      ACTIVITIES_NAME   string   comment   '活动名称',
      USIM_ID   string   comment   'USIM号',
      TERMINAL_ID   string   comment   '终端串号',
      HJYS_ID   string   comment   '换机原损串号',
      TERMINAL_TYPE   string   comment   '终端类型',
      TERMINAL_BRAND_ID   string   comment   '终端品牌编码',
      TERMINAL_BRAND_NAME   string   comment   '终端品牌名称',
      TERMINAL_TYPE_ID   string   comment   '终端型号编码',
      TERMINAL_TYPE_NAME   string   comment   '终端型号名称',
      TERMINAL_MODEL_ID   string   comment   '终端机型编码',
      TERMINAL_MODEL   string   comment   '终端机型',
      REPLENISHMENT_SIGN   string   comment   '铺货标志',
      ACTIVITIES_SUBSIDIES   decimal(20,3)   comment   '活动终端补贴',
      ACTIVITIES_PHONE   decimal(20,3)   comment   '活动预存话费',
      TERMINAL_PARAGRAPH   decimal(20,3)   comment   '终端款',
      TERMINAL_PRICE   decimal(20,3)   comment   '成本价',
      MARKET_RETAIL   decimal(20,3)   comment   '市场零售价',
      LINE_LONG   string   comment   '活动协议期限',
      GDS_ID   string   comment   '国代商编码',
      GDS_NAME   string   comment   '国代商名称',
      CREA_DATE   string   comment   '受理时间',
      RECOMMEND_NAME   string   comment   '推荐人姓名',
      RECOMMEND_ID   string   comment   '推荐人ID',
      RECOMMEND_CODE   string   comment   '推荐人编码',
      DEPARTMENT_CODE   string   comment   '推荐人部门编码',
      DEPARTMENT_NAME   string   comment   '推荐人部门名称'
                  )
comment '[MASTER_FIELD:B域,LEVEL:ODS层,DATA_FIELD:资源域,DATASUB_FIELD:4G终端成本]'
PARTITIONED BY (MONTH_PART STRING comment '月份分区')
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\001' 
STORED AS RCFILE;
"
