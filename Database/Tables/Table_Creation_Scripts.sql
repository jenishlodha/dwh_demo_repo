
----Department Office Expansion Plan Table Creation and Grants ----------------

  CREATE TABLE STATS.CANADA_MF_DEPT_EXP_DATE 
   (	CLIENT_OFFC_NO NUMBER(6,0) NOT NULL ENABLE, 
	DEPT_NO NUMBER(6,0) NOT NULL ENABLE, 
	OFFC_DEPT VARCHAR2(240 CHAR) NOT NULL ENABLE, 
	EXPANSION_PLAN VARCHAR2(240 CHAR) NOT NULL ENABLE, 
	CURRENT_FROM_EFF_DT DATE NOT NULL ENABLE, 
	CURRENT_TO_EFF_DT DATE NOT NULL ENABLE, 
	EXPANSION_EFF_DT DATE NOT NULL ENABLE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 81920 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE STATS ;
  
  
  
grant select on STATS.CANADA_MF_DEPT_EXP_DATE to STATS_S_ROLE ;
grant select,insert,update,delete on STATS.CANADA_MF_DEPT_EXP_DATE to STATS_ROLE ;

commit;

-----------Layer Marketing Details Hold table Creation Script -----------

  CREATE TABLE STATS.HOLD_CANSYS_LMD_MF_DATA 
   (	AC_MART_MARKETING_DETAIL_ID_C VARCHAR2(255 BYTE) NOT NULL ENABLE, 
	CLIENT_OFFICE_NO VARCHAR2(50 BYTE) NOT NULL ENABLE, 
	CLIENT_NO VARCHAR2(50 BYTE) NOT NULL ENABLE, 
	COVERAGE_TYPE_CD VARCHAR2(50 BYTE) NOT NULL ENABLE, 
	COVERAGE_ID VARCHAR2(50 BYTE) NOT NULL ENABLE, 
	COVERAGE_LINE_NM VARCHAR2(50 BYTE) NOT NULL ENABLE, 
	POLICY_NO VARCHAR2(50 BYTE) NOT NULL ENABLE, 
	RESP_CENTRE_CD VARCHAR2(50 BYTE) NOT NULL ENABLE, 
	STATUS VARCHAR2(20 BYTE), 
	FLAG VARCHAR2(3 BYTE), 
	HOLD_DATE DATE, 
	COMMENTS VARCHAR2(500 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 81920 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE STATS ;


grant select on STATS.HOLD_CANSYS_LMD_MF_DATA to STATS_S_ROLE,public ;
grant select,insert,update,delete on STATS.HOLD_CANSYS_LMD_MF_DATA to STATS_ROLE ;

-----------Account Assignment Hold table Creation Script -----------


  CREATE TABLE STATS.HOLD_CANSYS_ACCOUNT_MF_DATA 
   (	PHOENIX_COMP_NO VARCHAR2(50 BYTE) NOT NULL ENABLE, 
	EMP_NO VARCHAR2(50 BYTE) NOT NULL ENABLE, 
	STATUS VARCHAR2(20 BYTE), 
	FLAG VARCHAR2(3 BYTE), 
	HOLD_DATE DATE, 
	COMMENTS VARCHAR2(500 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 81920 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE STATS ;
  
  
  
grant select on STATS.HOLD_CANSYS_ACCOUNT_MF_DATA to STATS_S_ROLE,public ;
grant select,insert,update,delete on STATS.HOLD_CANSYS_ACCOUNT_MF_DATA to STATS_ROLE ;

commit;

--------------- Cansys MF Picklist Valiue STatic Table Creation Script ---------------------

  CREATE TABLE STATS.CANADA_MF_PICKLIST_VALUE 
   (	PICKLIST_FIELD VARCHAR2(255 BYTE), 
	PICKLIST_VALUE VARCHAR2(255 BYTE), 
	CANSYS_VALUE VARCHAR2(255 BYTE), 
	FLAG_IND VARCHAR2(3 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 81920 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE STATS ;
  
  
  
grant select on STATS.CANADA_MF_PICKLIST_VALUE to STATS_S_ROLE ;
grant select,insert,update,delete on STATS.CANADA_MF_PICKLIST_VALUE to STATS_ROLE ;

commit;




