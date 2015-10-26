CREATE TABLE ODS_M_U_PROCESS_ACT_D(
SERIALNO                       STRING COMMENT 'SERIALNO',                     
SRID                           STRING COMMENT 'SRID',                    
SRTYPEID                       STRING COMMENT 'SRTYPEID',                
ORIGINALSRTYPEID               STRING COMMENT 'ORIGINALSRTYPEID',        
ADVISEDSRTYPEID                STRING COMMENT 'ADVISEDSRTYPEID',         
COMPLAINPHENOMENA              STRING COMMENT 'COMPLAINPHENOMENA',       
COMPLAINREASON                 STRING COMMENT 'COMPLAINREASON',          
VDNID                          STRING COMMENT 'VDNID',                   
ACCEPTSTAFFNO                  STRING COMMENT 'ACCEPTSTAFFNO',           
ACCEPTMODE                     STRING COMMENT 'ACCEPTMODE',              
CALLERNO                       STRING COMMENT 'CALLERNO',                
CALLEDNO                       STRING COMMENT 'CALLEDNO',                
ORIGINALCALLEDNO               STRING COMMENT 'ORIGINALCALLEDNO',        
LANGUAGEID                     STRING COMMENT 'LANGUAGEID',              
SERVICECITY                    STRING COMMENT 'SERVICECITY',             
SUBSCITY                       STRING COMMENT 'SUBSCITY',                
ACCEPTCITY                     STRING COMMENT 'ACCEPTCITY',              
SUBSNAME                       STRING COMMENT 'SUBSNAME',                
SUBSLEVEL                      STRING COMMENT 'SUBSLEVEL',               
SUBSBRAND                      STRING COMMENT 'SUBSBRAND',               
CUSTID                         STRING COMMENT 'CUSTID',                  
SUBSNUMBER                     STRING COMMENT 'SUBSNUMBER',              
CONTACTPERSON                  STRING COMMENT 'CONTACTPERSON',           
CONTACTMODE                    STRING COMMENT 'CONTACTMODE',             
IDTYPE                         STRING COMMENT 'IDTYPE',                  
IDNUMBER                       STRING COMMENT 'IDNUMBER',                
CONTACTPHONE1                  STRING COMMENT 'CONTACTPHONE1',           
CONTACTPHONE2                  STRING COMMENT 'CONTACTPHONE2',           
FAXNO                          STRING COMMENT 'FAXNO',                   
EMAIL                          STRING COMMENT 'EMAIL',                   
ADDRESS                        STRING COMMENT 'ADDRESS',                 
CUSTMANAGERNO                  STRING COMMENT 'CUSTMANAGERNO',           
MOBILETYPE                     STRING COMMENT 'MOBILETYPE',              
SPNO                           STRING COMMENT 'SPNO',                    
SPACCESSMODE                   STRING COMMENT 'SPACCESSMODE',            
FAULTLOCATION                  STRING COMMENT 'FAULTLOCATION',           
TITLE                          STRING COMMENT 'TITLE',                   
SERVICECONTENT                 STRING COMMENT 'SERVICECONTENT',          
OPERSTATUS                     STRING COMMENT 'OPERSTATUS',              
HANDLINGSTATUS                 STRING COMMENT 'HANDLINGSTATUS',          
CONTACTCHANNEL                 STRING COMMENT 'CONTACTCHANNEL',          
TERMINALTYPE                   STRING COMMENT 'TERMINALTYPE',            
QCSTAFFNO                      STRING COMMENT 'QCSTAFFNO',               
SUBSCOMPLAINCITY               STRING COMMENT 'SUBSCOMPLAINCITY',        
IMPACTID                       STRING COMMENT 'IMPACTID',                
PRIORITYID                     STRING COMMENT 'PRIORITYID',              
SERVICELEVEL                   STRING COMMENT 'SERVICELEVEL',            
URGENTID                       STRING COMMENT 'URGENTID',                
SATISFYID                      STRING COMMENT 'SATISFYID',               
DISSATISFIEDREASON             STRING COMMENT 'DISSATISFIEDREASON',      
FEEDBACKMODE                   STRING COMMENT 'FEEDBACKMODE',            
RESPONSIBILITYTYPE             STRING COMMENT 'RESPONSIBILITYTYPE',      
RESPONSIBILITYREASON           STRING COMMENT 'RESPONSIBILITYREASON',    
RESPONSIBILITYDEPT             STRING COMMENT 'RESPONSIBILITYDEPT',      
RESOLVEDEGREE                  STRING COMMENT 'RESOLVEDEGREE',           
REDOTIMES                      int    COMMENT 'REDOTIMES',               
FEEDBACKTIMES                  int    COMMENT 'FEEDBACKTIMES',           
UNSUCCESSFEEDBACKTIMES         int    COMMENT 'UNSUCCESSFEEDBACKTIMES',  
REASSIGNTIMES                  int    COMMENT 'REASSIGNTIMES',           
DELAYTIMES                     int    COMMENT 'DELAYTIMES',              
DELAYDURATION                  bigint COMMENT 'DELAYDURATION',           
TOTALTIMEOUTDURATION           bigint COMMENT 'TOTALTIMEOUTDURATION',    
FAULTOCCTIME                   STRING COMMENT 'FAULTOCCTIME',            
ACCEPTTIME                     STRING COMMENT 'ACCEPTTIME',              
EXPECTEDFEEDBACKTIME           STRING COMMENT 'EXPECTEDFEEDBACKTIME',    
ACTUALFEEDBACKTIME             STRING COMMENT 'ACTUALFEEDBACKTIME',      
QCFLAG                         STRING COMMENT 'QCFLAG',                  
FEEDBACKSUCFLAG                STRING COMMENT 'FEEDBACKSUCFLAG',         
REPEATFLAG                     STRING COMMENT 'REPEATFLAG',              
FRONTREPLYFLAG                 STRING COMMENT 'FRONTREPLYFLAG',          
APPENDNOTESFLAG                STRING COMMENT 'APPENDNOTESFLAG',         
CALLBACKFLAG                   STRING COMMENT 'CALLBACKFLAG',            
RETURNFLAG                     STRING COMMENT 'RETURNFLAG',              
DIRECTFLAG                     STRING COMMENT 'DIRECTFLAG',              
REPEATEDHANDLINGFLAG           STRING COMMENT 'REPEATEDHANDLINGFLAG',    
UPGRADEFLAG                    STRING COMMENT 'UPGRADEFLAG',             
DIFFICULTYFLAG                 STRING COMMENT 'DIFFICULTYFLAG',          
REFUNDMENTFLAG                 STRING COMMENT 'REFUNDMENTFLAG',          
URGEFLAG                       STRING COMMENT 'URGEFLAG',                
CUSTORMERVISITFLAG             STRING COMMENT 'CUSTORMERVISITFLAG',      
CUSTORMERVISITSTATUS           STRING COMMENT 'CUSTORMERVISITSTATUS',    
REFUNDMENTTYPE                 STRING COMMENT 'REFUNDMENTTYPE',          
EXPECTEDREFUNDMENTAMOUNT       float  COMMENT 'EXPECTEDREFUNDMENTAMOUNT',
FACTREFUNDMENTAMOUNT           float  COMMENT 'FACTREFUNDMENTAMOUNT',    
PUBDYNACHAR001                 STRING COMMENT 'PUBDYNACHAR001',          
PUBDYNACHAR002                 STRING COMMENT 'PUBDYNACHAR002',          
PUBDYNACHAR003                 STRING COMMENT 'PUBDYNACHAR003',          
PUBDYNACHAR004                 STRING COMMENT 'PUBDYNACHAR004',          
PUBDYNACHAR005                 STRING COMMENT 'PUBDYNACHAR005',          
PUBDYNACHAR006                 STRING COMMENT 'PUBDYNACHAR006',          
PUBDYNACHAR007                 STRING COMMENT 'PUBDYNACHAR007',          
PUBDYNACHAR008                 STRING COMMENT 'PUBDYNACHAR008',          
PUBDYNACHAR009                 STRING COMMENT 'PUBDYNACHAR009',          
PUBDYNACHAR010                 STRING COMMENT 'PUBDYNACHAR010',          
PUBDYNACHAR011                 STRING COMMENT 'PUBDYNACHAR011',          
PUBDYNACHAR012                 STRING COMMENT 'PUBDYNACHAR012',          
PUBDYNACHAR013                 STRING COMMENT 'PUBDYNACHAR013',          
PUBDYNACHAR014                 STRING COMMENT 'PUBDYNACHAR014',          
PUBDYNACHAR015                 STRING COMMENT 'PUBDYNACHAR015',          
PUBDYNACHAR016                 STRING COMMENT 'PUBDYNACHAR016',          
PUBDYNACHAR017                 STRING COMMENT 'PUBDYNACHAR017',          
PUBDYNACHAR018                 STRING COMMENT 'PUBDYNACHAR018',          
PUBDYNACHAR019                 STRING COMMENT 'PUBDYNACHAR019',          
PUBDYNACHAR020                 STRING COMMENT 'PUBDYNACHAR020',          
DEVDYNACHAR001                 STRING COMMENT 'DEVDYNACHAR001',          
DEVDYNACHAR002                 STRING COMMENT 'DEVDYNACHAR002',          
DEVDYNACHAR003                 STRING COMMENT 'DEVDYNACHAR003',          
DEVDYNACHAR004                 STRING COMMENT 'DEVDYNACHAR004',          
DEVDYNACHAR005                 STRING COMMENT 'DEVDYNACHAR005',          
DEVDYNACHAR006                 STRING COMMENT 'DEVDYNACHAR006',          
DEVDYNACHAR007                 STRING COMMENT 'DEVDYNACHAR007',          
DEVDYNACHAR008                 STRING COMMENT 'DEVDYNACHAR008',          
DEVDYNACHAR010                 STRING COMMENT 'DEVDYNACHAR010',          
DEVDYNACHAR009                 STRING COMMENT 'DEVDYNACHAR009',          
PRIVATEDYNACHAR001             STRING COMMENT 'PRIVATEDYNACHAR001',      
PRIVATEDYNACHAR002             STRING COMMENT 'PRIVATEDYNACHAR002',      
PRIVATEDYNACHAR003             STRING COMMENT 'PRIVATEDYNACHAR003',      
PRIVATEDYNACHAR004             STRING COMMENT 'PRIVATEDYNACHAR004',      
PRIVATEDYNACHAR005             STRING COMMENT 'PRIVATEDYNACHAR005',      
PRIVATEDYNACHAR006             STRING COMMENT 'PRIVATEDYNACHAR006',      
PRIVATEDYNACHAR007             STRING COMMENT 'PRIVATEDYNACHAR007',      
PRIVATEDYNACHAR008             STRING COMMENT 'PRIVATEDYNACHAR008',      
PRIVATEDYNACHAR009             STRING COMMENT 'PRIVATEDYNACHAR009',      
PRIVATEDYNACHAR011             STRING COMMENT 'PRIVATEDYNACHAR011',      
PRIVATEDYNACHAR012             STRING COMMENT 'PRIVATEDYNACHAR012',      
PRIVATEDYNACHAR013             STRING COMMENT 'PRIVATEDYNACHAR013',      
PRIVATEDYNACHAR014             STRING COMMENT 'PRIVATEDYNACHAR014',      
PRIVATEDYNACHAR015             STRING COMMENT 'PRIVATEDYNACHAR015',      
PRIVATEDYNACHAR016             STRING COMMENT 'PRIVATEDYNACHAR016',      
PRIVATEDYNACHAR017             STRING COMMENT 'PRIVATEDYNACHAR017',      
PRIVATEDYNACHAR018             STRING COMMENT 'PRIVATEDYNACHAR018',      
PRIVATEDYNACHAR019             STRING COMMENT 'PRIVATEDYNACHAR019',      
PRIVATEDYNACHAR020             STRING COMMENT 'PRIVATEDYNACHAR020',      
PRIVATEDYNACHAR021             STRING COMMENT 'PRIVATEDYNACHAR021',      
PRIVATEDYNACHAR022             STRING COMMENT 'PRIVATEDYNACHAR022',      
PRIVATEDYNACHAR023             STRING COMMENT 'PRIVATEDYNACHAR023',      
PRIVATEDYNACHAR024             STRING COMMENT 'PRIVATEDYNACHAR024',      
PRIVATEDYNACHAR025             STRING COMMENT 'PRIVATEDYNACHAR025',      
PRIVATEDYNACHAR026             STRING COMMENT 'PRIVATEDYNACHAR026',      
PRIVATEDYNACHAR027             STRING COMMENT 'PRIVATEDYNACHAR027',      
PRIVATEDYNACHAR028             STRING COMMENT 'PRIVATEDYNACHAR028',      
PRIVATEDYNACHAR029             STRING COMMENT 'PRIVATEDYNACHAR029',      
PRIVATEDYNACHAR030             STRING COMMENT 'PRIVATEDYNACHAR030',      
PRIVATEDYNACHAR031             STRING COMMENT 'PRIVATEDYNACHAR031',      
PRIVATEDYNACHAR032             STRING COMMENT 'PRIVATEDYNACHAR032',      
PRIVATEDYNACHAR033             STRING COMMENT 'PRIVATEDYNACHAR033',      
PRIVATEDYNACHAR034             STRING COMMENT 'PRIVATEDYNACHAR034',      
PRIVATEDYNACHAR035             STRING COMMENT 'PRIVATEDYNACHAR035',      
PRIVATEDYNACHAR036             STRING COMMENT 'PRIVATEDYNACHAR036',      
PRIVATEDYNACHAR037             STRING COMMENT 'PRIVATEDYNACHAR037',      
PRIVATEDYNACHAR038             STRING COMMENT 'PRIVATEDYNACHAR038',      
PRIVATEDYNACHAR039             STRING COMMENT 'PRIVATEDYNACHAR039',      
PRIVATEDYNACHAR040             STRING COMMENT 'PRIVATEDYNACHAR040',      
PRIVATEDYNACHAR041             STRING COMMENT 'PRIVATEDYNACHAR041',      
PRIVATEDYNACHAR042             STRING COMMENT 'PRIVATEDYNACHAR042',      
PRIVATEDYNACHAR043             STRING COMMENT 'PRIVATEDYNACHAR043',      
PRIVATEDYNACHAR044             STRING COMMENT 'PRIVATEDYNACHAR044',      
PRIVATEDYNACHAR045             STRING COMMENT 'PRIVATEDYNACHAR045',      
PRIVATEDYNACHAR046             STRING COMMENT 'PRIVATEDYNACHAR046',      
PRIVATEDYNACHAR047             STRING COMMENT 'PRIVATEDYNACHAR047',      
PRIVATEDYNACHAR048             STRING COMMENT 'PRIVATEDYNACHAR048',      
PRIVATEDYNACHAR049             STRING COMMENT 'PRIVATEDYNACHAR049',      
PRIVATEDYNACHAR050             STRING COMMENT 'PRIVATEDYNACHAR050',      
DELETEFLAG                     STRING COMMENT 'DELETEFLAG',              
CLOSEDATE                      STRING COMMENT 'CLOSEDATE',               
ARCHIVEDATE                    STRING COMMENT 'ARCHIVEDATE',             
MAINSERIALNO                   STRING COMMENT 'MAINSERIALNO',            
PRIVATEDYNACHAR010             STRING COMMENT 'PRIVATEDYNACHAR010',      
PROCESSNAME                    STRING COMMENT 'PROCESSNAME',             
PRIORITY                       STRING COMMENT 'PRIORITY',                
CREATOR                        STRING COMMENT 'CREATOR',                 
TEMPLATEID                     STRING COMMENT 'TEMPLATEID',              
TEMPLATEVERSION                STRING COMMENT 'TEMPLATEVERSION',         
PROCESSSTATE                   STRING COMMENT 'PROCESSSTATE',            
STARTTIME                      STRING COMMENT 'STARTTIME',               
COMPLETEDTIME                  STRING COMMENT 'COMPLETEDTIME',           
LASTUPDATETIME                 STRING COMMENT 'LASTUPDATETIME',          
CREATETIME                     STRING COMMENT 'CREATETIME',              
OVERTIME                       STRING COMMENT 'OVERTIME',                
ALARMTIME                      STRING COMMENT 'ALARMTIME',               
PARENTPROCESSINSTID            STRING COMMENT 'PARENTPROCESSINSTID',     
PARENTNODEINSTID               STRING COMMENT 'PARENTNODEINSTID',        
PROCESSTYPE                    STRING COMMENT 'PROCESSTYPE',             
DEADLINETASKID                 STRING COMMENT 'DEADLINETASKID',          
ALARMLINETASKID                STRING COMMENT 'ALARMLINETASKID',         
PROCESSCMDTYPE                 STRING COMMENT 'PROCESSCMDTYPE',          
PROCESSCMDJUMPNODEID           STRING COMMENT 'PROCESSCMDJUMPNODEID',    
JUMPNODEID                     STRING COMMENT 'JUMPNODEID',              
TEAMID                         STRING COMMENT 'TEAMID',                  
SUBPROCESSTYPEINDICATOR        STRING COMMENT 'SUBPROCESSTYPEINDICATOR', 
DESCRIPTION                    STRING COMMENT 'DESCRIPTION',             
WORKORDERTYPE                  STRING COMMENT 'WORKORDERTYPE',           
EOMSSTATUS                     STRING COMMENT 'EOMSSTATUS',              
MAINFLAG                       STRING COMMENT 'MAINFLAG',                
BASETEMPLATEID                 STRING COMMENT 'BASETEMPLATEID',          
PROCESSCOLOR                   STRING COMMENT 'PROCESSCOLOR',            
SUSPENDDATE                    STRING COMMENT 'SUSPENDDATE',             
PARENTSERIALNO                 STRING COMMENT 'PARENTSERIALNO',          
PARENTACTIVITYID               STRING COMMENT 'PARENTACTIVITYID',        
FLOWTIMES                      float  COMMENT 'FLOWTIMES',               
ACCEPTSTAFFDEPT                STRING COMMENT 'ACCEPTSTAFFDEPT',         
ACCEPTORGACODE                 STRING COMMENT 'ACCEPTORGACODE',          
DEADLINETIME                   STRING COMMENT 'DEADLINETIME',            
CONTACTID                      STRING COMMENT 'CONTACTID',               
CONTACTPHONE                   STRING COMMENT 'CONTACTPHONE',            
RESPONSIBILITYPERSON           STRING COMMENT 'RESPONSIBILITYPERSON',    
UNIFORMANSWER                  STRING COMMENT 'UNIFORMANSWER',           
KNOWLEDGEKEY                   STRING COMMENT 'KNOWLEDGEKEY',            
MAINVALIDDATE                  STRING COMMENT 'MAINVALIDDATE',           
TIMERGROUPSTARTTIME            STRING COMMENT 'TIMERGROUPSTARTTIME',     
TIMERGROUPALARMTIME            STRING COMMENT 'TIMERGROUPALARMTIME',     
TIMERGROUPDEADLINETIME         STRING COMMENT 'TIMERGROUPDEADLINETIME',  
TIMERGROUPLEAVETIME            STRING COMMENT 'TIMERGROUPLEAVETIME',     
REASONTYPEID                   STRING COMMENT 'REASONTYPEID',            
ORIGINALREASONTYPEID           STRING COMMENT 'ORIGINALREASONTYPEID',    
CSVCID                         STRING COMMENT 'CSVCID',                  
CSVCJUDGEFLAG                  STRING COMMENT 'CSVCJUDGEFLAG',           
CSVCPROCESSTYPE                STRING COMMENT 'CSVCPROCESSTYPE',         
CSVCACCEPTCORP                 STRING COMMENT 'CSVCACCEPTCORP',          
CSVCDEALCORP                   STRING COMMENT 'CSVCDEALCORP',            
RESORTSRTYPEID                 STRING COMMENT 'RESORTSRTYPEID',          
AUDITSRTYPEID                  STRING COMMENT 'AUDITSRTYPEID',           
LASTWORKITEMID                 STRING COMMENT 'LASTWORKITEMID',          
FIRSTREPLYTIME                 STRING COMMENT 'FIRSTREPLYTIME',          
CANCELFLAG                     STRING COMMENT 'CANCELFLAG',              
ONSERVICEFLAG                  STRING COMMENT 'ONSERVICEFLAG',           
MOBILEMAILSERVER               STRING COMMENT 'MOBILEMAILSERVER',        
GATEWAYVALIDFLAG               STRING COMMENT 'GATEWAYVALIDFLAG',        
MTVALIDFLAG                    STRING COMMENT 'MTVALIDFLAG',             
OTHERREASON                    STRING COMMENT 'OTHERREASON',             
REGISTERFLAG                   STRING COMMENT 'REGISTERFLAG',            
COMPLAINVALIDFLAG              STRING COMMENT 'COMPLAINVALIDFLAG',       
CONTRACTFLAG                   STRING COMMENT 'CONTRACTFLAG',            
FEELIQUIDATECOMPLETEFLAG       STRING COMMENT 'FEELIQUIDATECOMPLETEFLAG',
REMOVEREQUESTVIABLEFLAG        STRING COMMENT 'REMOVEREQUESTVIABLEFLAG', 
CONTRACTENDFLAG                STRING COMMENT 'CONTRACTENDFLAG',         
REMOVETIME                     STRING COMMENT 'REMOVETIME',              
POWERVALUE                     STRING COMMENT 'POWERVALUE',              
DISPATCHTIMES                  INT    COMMENT 'DISPATCHTIMES',           
VIBRATEFLAG                    STRING COMMENT 'VIBRATEFLAG',             
PUBDYNACHAR021                 STRING COMMENT 'PUBDYNACHAR021',          
PUBDYNACHAR022                 STRING COMMENT 'PUBDYNACHAR022',          
PUBDYNACHAR023                 STRING COMMENT 'PUBDYNACHAR023',          
PUBDYNACHAR024                 STRING COMMENT 'PUBDYNACHAR024',          
PUBDYNACHAR025                 STRING COMMENT 'PUBDYNACHAR025',          
PUBDYNACHAR026                 STRING COMMENT 'PUBDYNACHAR026',          
PUBDYNACHAR027                 STRING COMMENT 'PUBDYNACHAR027',          
PUBDYNACHAR028                 STRING COMMENT 'PUBDYNACHAR028',          
PUBDYNACHAR029                 STRING COMMENT 'PUBDYNACHAR029',          
PUBDYNACHAR030                 STRING COMMENT 'PUBDYNACHAR030',          
PUBDYNACHAR031                 STRING COMMENT 'PUBDYNACHAR031',          
PUBDYNACHAR032                 STRING COMMENT 'PUBDYNACHAR032',          
PUBDYNACHAR033                 STRING COMMENT 'PUBDYNACHAR033',          
PUBDYNACHAR034                 STRING COMMENT 'PUBDYNACHAR034',          
PUBDYNACHAR035                 STRING COMMENT 'PUBDYNACHAR035',          
PUBDYNACHAR036                 STRING COMMENT 'PUBDYNACHAR036',          
PUBDYNACHAR037                 STRING COMMENT 'PUBDYNACHAR037',          
PUBDYNACHAR038                 STRING COMMENT 'PUBDYNACHAR038',          
PUBDYNACHAR039                 STRING COMMENT 'PUBDYNACHAR039',          
PUBDYNACHAR040                 STRING COMMENT 'PUBDYNACHAR040',          
PUBDYNACHAR041                 STRING COMMENT 'PUBDYNACHAR041',          
PUBDYNACHAR042                 STRING COMMENT 'PUBDYNACHAR042',          
PUBDYNACHAR043                 STRING COMMENT 'PUBDYNACHAR043',          
PUBDYNACHAR044                 STRING COMMENT 'PUBDYNACHAR044',          
PUBDYNACHAR045                 STRING COMMENT 'PUBDYNACHAR045',          
PUBDYNACHAR046                 STRING COMMENT 'PUBDYNACHAR046',          
PUBDYNACHAR047                 STRING COMMENT 'PUBDYNACHAR047',          
PUBDYNACHAR048                 STRING COMMENT 'PUBDYNACHAR048',          
PUBDYNACHAR049                 STRING COMMENT 'PUBDYNACHAR049',          
PUBDYNACHAR050                 STRING COMMENT 'PUBDYNACHAR050',          
PUBDYNACHAR051                 STRING COMMENT 'PUBDYNACHAR051',          
PUBDYNACHAR052                 STRING COMMENT 'PUBDYNACHAR052',          
PUBDYNACHAR053                 STRING COMMENT 'PUBDYNACHAR053',          
PUBDYNACHAR054                 STRING COMMENT 'PUBDYNACHAR054',          
PUBDYNACHAR055                 STRING COMMENT 'PUBDYNACHAR055',          
PUBDYNACHAR056                 STRING COMMENT 'PUBDYNACHAR056',          
PUBDYNACHAR057                 STRING COMMENT 'PUBDYNACHAR057',          
PUBDYNACHAR058                 STRING COMMENT 'PUBDYNACHAR058',          
PUBDYNACHAR059                 STRING COMMENT 'PUBDYNACHAR059',          
PUBDYNACHAR060                 STRING COMMENT 'PUBDYNACHAR060',          
PUBDYNACHAR061                 STRING COMMENT 'PUBDYNACHAR061',          
PUBDYNACHAR062                 STRING COMMENT 'PUBDYNACHAR062',          
PUBDYNACHAR063                 STRING COMMENT 'PUBDYNACHAR063',          
PUBDYNACHAR064                 STRING COMMENT 'PUBDYNACHAR064',          
PUBDYNACHAR065                 STRING COMMENT 'PUBDYNACHAR065',          
PUBDYNACHAR066                 STRING COMMENT 'PUBDYNACHAR066',          
PUBDYNACHAR067                 STRING COMMENT 'PUBDYNACHAR067',          
PUBDYNACHAR068                 STRING COMMENT 'PUBDYNACHAR068',          
PUBDYNACHAR069                 STRING COMMENT 'PUBDYNACHAR069',          
PUBDYNACHAR070                 STRING COMMENT 'PUBDYNACHAR070',          
PUBDYNACHAR071                 STRING COMMENT 'PUBDYNACHAR071',          
PUBDYNACHAR072                 STRING COMMENT 'PUBDYNACHAR072',          
PUBDYNACHAR073                 STRING COMMENT 'PUBDYNACHAR073',          
PUBDYNACHAR074                 STRING COMMENT 'PUBDYNACHAR074',          
PUBDYNACHAR075                 STRING COMMENT 'PUBDYNACHAR075',          
PUBDYNACHAR076                 STRING COMMENT 'PUBDYNACHAR076',          
PUBDYNACHAR077                 STRING COMMENT 'PUBDYNACHAR077',          
PUBDYNACHAR078                 STRING COMMENT 'PUBDYNACHAR078',          
PUBDYNACHAR079                 STRING COMMENT 'PUBDYNACHAR079',          
PUBDYNACHAR080                 STRING COMMENT 'PUBDYNACHAR080',          
PUBDYNACHAR081                 STRING COMMENT 'PUBDYNACHAR081',          
PUBDYNACHAR082                 STRING COMMENT 'PUBDYNACHAR082',          
PUBDYNACHAR083                 STRING COMMENT 'PUBDYNACHAR083',          
PUBDYNACHAR084                 STRING COMMENT 'PUBDYNACHAR084',          
PUBDYNACHAR085                 STRING COMMENT 'PUBDYNACHAR085',          
PUBDYNACHAR086                 STRING COMMENT 'PUBDYNACHAR086',          
PUBDYNACHAR087                 STRING COMMENT 'PUBDYNACHAR087',          
PUBDYNACHAR088                 STRING COMMENT 'PUBDYNACHAR088',          
PUBDYNACHAR089                 STRING COMMENT 'PUBDYNACHAR089',          
PUBDYNACHAR090                 STRING COMMENT 'PUBDYNACHAR090',          
PUBDYNACHAR091                 STRING COMMENT 'PUBDYNACHAR091',          
PUBDYNACHAR092                 STRING COMMENT 'PUBDYNACHAR092',          
PUBDYNACHAR093                 STRING COMMENT 'PUBDYNACHAR093',          
PUBDYNACHAR094                 STRING COMMENT 'PUBDYNACHAR094',          
PUBDYNACHAR095                 STRING COMMENT 'PUBDYNACHAR095',          
PUBDYNACHAR096                 STRING COMMENT 'PUBDYNACHAR096',          
PUBDYNACHAR097                 STRING COMMENT 'PUBDYNACHAR097',          
PUBDYNACHAR098                 STRING COMMENT 'PUBDYNACHAR098',          
PUBDYNACHAR099                 STRING COMMENT 'PUBDYNACHAR099',          
PRIVATEDYNACHAR051             INT    COMMENT 'PRIVATEDYNACHAR051',      
PRIVATEDYNACHAR052             INT    COMMENT 'PRIVATEDYNACHAR052',      
PRIVATEDYNACHAR053             INT    COMMENT 'PRIVATEDYNACHAR053',      
PRIVATEDYNACHAR054             INT    COMMENT 'PRIVATEDYNACHAR054',      
PRIVATEDYNACHAR055             INT    COMMENT 'PRIVATEDYNACHAR055',      
PRIVATEDYNACHAR056             INT    COMMENT 'PRIVATEDYNACHAR056',      
PRIVATEDYNACHAR057             INT    COMMENT 'PRIVATEDYNACHAR057',      
PRIVATEDYNACHAR058             INT    COMMENT 'PRIVATEDYNACHAR058',      
PRIVATEDYNACHAR059             INT    COMMENT 'PRIVATEDYNACHAR059',      
PRIVATEDYNACHAR060             INT    COMMENT 'PRIVATEDYNACHAR060',      
PRIVATEDYNACHAR061             STRING COMMENT 'PRIVATEDYNACHAR061',      
PRIVATEDYNACHAR062             STRING COMMENT 'PRIVATEDYNACHAR062',      
PRIVATEDYNACHAR063             STRING COMMENT 'PRIVATEDYNACHAR063',      
PRIVATEDYNACHAR064             STRING COMMENT 'PRIVATEDYNACHAR064',      
PRIVATEDYNACHAR065             STRING COMMENT 'PRIVATEDYNACHAR065',      
PRIVATEDYNACHAR066             STRING COMMENT 'PRIVATEDYNACHAR066',      
PRIVATEDYNACHAR067             STRING COMMENT 'PRIVATEDYNACHAR067',      
PRIVATEDYNACHAR068             STRING COMMENT 'PRIVATEDYNACHAR068',      
PRIVATEDYNACHAR069             STRING COMMENT 'PRIVATEDYNACHAR069',      
PRIVATEDYNACHAR070             STRING COMMENT 'PRIVATEDYNACHAR070',      
PRIVATEDYNACHAR071             STRING COMMENT 'PRIVATEDYNACHAR071',      
PRIVATEDYNACHAR072             STRING COMMENT 'PRIVATEDYNACHAR072',      
PRIVATEDYNACHAR073             STRING COMMENT 'PRIVATEDYNACHAR073',      
PRIVATEDYNACHAR074             STRING COMMENT 'PRIVATEDYNACHAR074',      
PRIVATEDYNACHAR075             STRING COMMENT 'PRIVATEDYNACHAR075',      
PRIVATEDYNACHAR076             STRING COMMENT 'PRIVATEDYNACHAR076',      
PRIVATEDYNACHAR077             STRING COMMENT 'PRIVATEDYNACHAR077',      
PRIVATEDYNACHAR078             STRING COMMENT 'PRIVATEDYNACHAR078',      
PRIVATEDYNACHAR079             STRING COMMENT 'PRIVATEDYNACHAR079',      
PRIVATEDYNACHAR080             STRING COMMENT 'PRIVATEDYNACHAR080',      
PRIVATEDYNACHAR081             STRING COMMENT 'PRIVATEDYNACHAR081',      
PRIVATEDYNACHAR082             STRING COMMENT 'PRIVATEDYNACHAR082',      
PRIVATEDYNACHAR083             STRING COMMENT 'PRIVATEDYNACHAR083',      
PRIVATEDYNACHAR084             STRING COMMENT 'PRIVATEDYNACHAR084',      
PRIVATEDYNACHAR085             STRING COMMENT 'PRIVATEDYNACHAR085',      
PRIVATEDYNACHAR086             STRING COMMENT 'PRIVATEDYNACHAR086',      
PRIVATEDYNACHAR087             STRING COMMENT 'PRIVATEDYNACHAR087',      
PRIVATEDYNACHAR088             STRING COMMENT 'PRIVATEDYNACHAR088',      
PRIVATEDYNACHAR089             STRING COMMENT 'PRIVATEDYNACHAR089',      
PRIVATEDYNACHAR090             STRING COMMENT 'PRIVATEDYNACHAR090',      
PRIVATEDYNACHAR091             STRING COMMENT 'PRIVATEDYNACHAR091',      
PRIVATEDYNACHAR092             STRING COMMENT 'PRIVATEDYNACHAR092',      
PRIVATEDYNACHAR093             STRING COMMENT 'PRIVATEDYNACHAR093',      
PRIVATEDYNACHAR094             STRING COMMENT 'PRIVATEDYNACHAR094',      
PRIVATEDYNACHAR095             STRING COMMENT 'PRIVATEDYNACHAR095',      
PRIVATEDYNACHAR096             STRING COMMENT 'PRIVATEDYNACHAR096',      
PRIVATEDYNACHAR097             STRING COMMENT 'PRIVATEDYNACHAR097',      
PRIVATEDYNACHAR098             STRING COMMENT 'PRIVATEDYNACHAR098',      
PRIVATEDYNACHAR099             STRING COMMENT 'PRIVATEDYNACHAR099',      
PRIVATEDYNACHAR100             STRING COMMENT 'PRIVATEDYNACHAR100',      
PUBDYNACHAR100                 STRING COMMENT 'PUBDYNACHAR100',          
PUBDYNACHAR101                 STRING COMMENT 'PUBDYNACHAR101',          
PUBDYNACHAR102                 STRING COMMENT 'PUBDYNACHAR102',          
PUBDYNACHAR103                 STRING COMMENT 'PUBDYNACHAR103',          
PUBDYNACHAR104                 STRING COMMENT 'PUBDYNACHAR104',          
PUBDYNACHAR105                 STRING COMMENT 'PUBDYNACHAR105',          
PUBDYNACHAR106                 STRING COMMENT 'PUBDYNACHAR106',          
PUBDYNACHAR107                 STRING COMMENT 'PUBDYNACHAR107',          
PUBDYNACHAR108                 STRING COMMENT 'PUBDYNACHAR108',          
PUBDYNACHAR109                 STRING COMMENT 'PUBDYNACHAR109',          
PUBDYNACHAR110                 STRING COMMENT 'PUBDYNACHAR110',          
PUBDYNACHAR111                 STRING COMMENT 'PUBDYNACHAR111',          
PUBDYNACHAR112                 STRING COMMENT 'PUBDYNACHAR112',          
PUBDYNACHAR113                 STRING COMMENT 'PUBDYNACHAR113',          
PUBDYNACHAR114                 STRING COMMENT 'PUBDYNACHAR114',          
PUBDYNACHAR115                 STRING COMMENT 'PUBDYNACHAR115',          
PUBDYNACHAR116                 STRING COMMENT 'PUBDYNACHAR116',          
PUBDYNACHAR117                 STRING COMMENT 'PUBDYNACHAR117',          
PUBDYNACHAR118                 STRING COMMENT 'PUBDYNACHAR118',          
PUBDYNACHAR119                 STRING COMMENT 'PUBDYNACHAR119',          
PUBDYNACHAR120                 STRING COMMENT 'PUBDYNACHAR120'                       
)
COMMENT ''
PARTITIONED BY (MONTH_PART STRING COMMENT '月份分区',
DAY_PART STRING COMMENT '日期分区')
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\001' 
STORED AS RCFILE;