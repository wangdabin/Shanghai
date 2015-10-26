hive  -e  "
use ods;
create table    ODS_CHL_PAY_TRANSACTION_D    
(

  PTSEQNO            string comment   'PTSEQNO',
  PTTRANSCODE        string comment   'PTTRANSCODE',
  PTTRANSTIME        string comment   'PTTRANSTIME',
  PTSYSTEMTIME       string comment   'PTSYSTEMTIME',
  PTENDTIME          string comment   'PTENDTIME',
  PTSETTLEMENTTIME   string comment   'PTSETTLEMENTTIME',
  PTORGSYSTEM        string comment   'PTORGSYSTEM',
  PTORGSSN           string comment   'PTORGSSN',
  PTATSSN            string comment   'PTATSSN',
  PTHHSSN            string comment   'PTHHSSN',
  PTDECARDTYPE       string comment   'PTDECARDTYPE',
  PTDECARDNO         string comment   'PTDECARDNO',
  PTCRCARDTYPE       string comment   'PTCRCARDTYPE',
  PTCRCARDNO         string comment   'PTCRCARDNO',
  PTAMOUNT           string comment   'PTAMOUNT',
  PTBALANCE          string comment   'PTBALANCE',
  PTREVFLAG          string comment   'PTREVFLAG',
  PTREVSYSTEM        string comment   'PTREVSYSTEM',
  PTOLDSEQNO         string comment   'PTOLDSEQNO',
  PTRESCODE          string comment   'PTRESCODE',
  PTADDIDATA         string comment   'PTADDIDATA',
  PTTRANSSTATUS      string comment   'PTTRANSSTATUS',
  INSERT_DATE        string comment   'INSERT_DATE',
  ACCT_MONTH         string comment   'ACCT_MONTH',
   DAY_ID            string comment   'DAY_ID'
)
comment '[MASTER_FIELD:B域,LEVEL:ODS层,DATA_FIELD:渠道域,DATASUB_FIELD:ODS_CHL_PAY_TRANSACTION_D]'
PARTITIONED BY (MONTH_PART STRING comment '月份分区',DAY_PART STRING comment '日期分区')
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\001' 
STORED AS RCFILE;
"