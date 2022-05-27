--------------------------------------------------------
--  파일이 생성됨 - 금요일-3월-11-2022   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table STUDENT
--------------------------------------------------------

  CREATE TABLE "STUDENT" 
   (	"STUDNO" NUMBER(5,0), 
	"NAME" VARCHAR2(10 BYTE), 
	"USERID" VARCHAR2(10 BYTE), 
	"GRADE" VARCHAR2(1 BYTE), 
	"IDNUM" VARCHAR2(13 BYTE), 
	"BIRTHDATE" DATE, 
	"TEL" VARCHAR2(13 BYTE), 
	"HEIGHT" NUMBER(5,2), 
	"WEIGHT" NUMBER(5,2), 
	"DEPTNO" NUMBER(4,0), 
	"PROFNO" NUMBER(4,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table PROFESSOR
--------------------------------------------------------

  CREATE TABLE "PROFESSOR" 
   (	"PROFNO" NUMBER(4,0), 
	"NAME" VARCHAR2(10 BYTE), 
	"USERID" VARCHAR2(10 BYTE), 
	"POSITION" VARCHAR2(20 BYTE), 
	"SAL" NUMBER(10,0), 
	"HIREDATE" DATE, 
	"COMM" NUMBER(2,0), 
	"DEPTNO" NUMBER(4,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table SALGRADE
--------------------------------------------------------

  CREATE TABLE "SALGRADE" 
   (	"GRADE" NUMBER(2,0), 
	"LOSAL" NUMBER(5,0), 
	"HISAL" NUMBER(5,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table DEPARTMENT
--------------------------------------------------------

  CREATE TABLE "DEPARTMENT" 
   (	"DEPTNO" NUMBER(4,0), 
	"DNAME" VARCHAR2(50 BYTE), 
	"COLLEGE" NUMBER(4,0), 
	"LOC" VARCHAR2(10 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into STUDENT
SET DEFINE OFF;
Insert into STUDENT (STUDNO,NAME,USERID,GRADE,IDNUM,BIRTHDATE,TEL,HEIGHT,WEIGHT,DEPTNO,PROFNO) values (10101,'전인하','jun123','4','7907021369824',to_date('79/07/02','RR/MM/DD'),'051)781-2158',176,72,101,9903);
Insert into STUDENT (STUDNO,NAME,USERID,GRADE,IDNUM,BIRTHDATE,TEL,HEIGHT,WEIGHT,DEPTNO,PROFNO) values (20101,'이동훈','Dals','1','8312101128467',to_date('83/12/10','RR/MM/DD'),'055)426-1752',172,64,201,null);
Insert into STUDENT (STUDNO,NAME,USERID,GRADE,IDNUM,BIRTHDATE,TEL,HEIGHT,WEIGHT,DEPTNO,PROFNO) values (10102,'박미경','ansel414','1','8405162123648',to_date('84/05/16','RR/MM/DD'),'055)261-8947',168,52,101,null);
Insert into STUDENT (STUDNO,NAME,USERID,GRADE,IDNUM,BIRTHDATE,TEL,HEIGHT,WEIGHT,DEPTNO,PROFNO) values (10103,'김영균','mandu','3','8103211063421',to_date('81/01/11','RR/MM/DD'),'051)824-9637',170,88,101,9906);
Insert into STUDENT (STUDNO,NAME,USERID,GRADE,IDNUM,BIRTHDATE,TEL,HEIGHT,WEIGHT,DEPTNO,PROFNO) values (20102,'박동진','Ping2','1','8511241639826',to_date('85/11/24','RR/MM/DD'),'051)742-6384',182,70,201,null);
Insert into STUDENT (STUDNO,NAME,USERID,GRADE,IDNUM,BIRTHDATE,TEL,HEIGHT,WEIGHT,DEPTNO,PROFNO) values (10201,'김진영','simply','2','8206062186327',to_date('82/06/06','RR/MM/DD'),'055)419-6328',164,48,102,9905);
Insert into STUDENT (STUDNO,NAME,USERID,GRADE,IDNUM,BIRTHDATE,TEL,HEIGHT,WEIGHT,DEPTNO,PROFNO) values (10104,'지은경','Gomo00','2','8004122298371',to_date('80/04/12','RR/MM/DD'),'055)418-9627',161,42,101,9907);
Insert into STUDENT (STUDNO,NAME,USERID,GRADE,IDNUM,BIRTHDATE,TEL,HEIGHT,WEIGHT,DEPTNO,PROFNO) values (10202,'오유석','yousuk','4','7709121128379',to_date('77/10/12','RR/MM/DD'),'051)724-9618',177,92,102,9905);
Insert into STUDENT (STUDNO,NAME,USERID,GRADE,IDNUM,BIRTHDATE,TEL,HEIGHT,WEIGHT,DEPTNO,PROFNO) values (10203,'하나리','hanal','1','8501092378641',to_date('84/12/18','RR/MM/DD'),'055)296-3784',160,68,102,null);
Insert into STUDENT (STUDNO,NAME,USERID,GRADE,IDNUM,BIRTHDATE,TEL,HEIGHT,WEIGHT,DEPTNO,PROFNO) values (10105,'임유진','YouJin12','2','8301212196482',to_date('83/01/21','RR/MM/DD'),'02)312-9838',171,54,101,9907);
Insert into STUDENT (STUDNO,NAME,USERID,GRADE,IDNUM,BIRTHDATE,TEL,HEIGHT,WEIGHT,DEPTNO,PROFNO) values (10106,'서재진','seolly','1','8511291186273',to_date('85/11/29','RR/MM/DD'),'051)239-4861',186,72,101,null);
Insert into STUDENT (STUDNO,NAME,USERID,GRADE,IDNUM,BIRTHDATE,TEL,HEIGHT,WEIGHT,DEPTNO,PROFNO) values (10204,'윤진욱','Samba7','3','7904021358671',to_date('79/04/02','RR/MM/DD'),'053)487-2698',171,70,102,9905);
Insert into STUDENT (STUDNO,NAME,USERID,GRADE,IDNUM,BIRTHDATE,TEL,HEIGHT,WEIGHT,DEPTNO,PROFNO) values (10107,'이광훈','huriky','4','8109131276431',to_date('81/10/13','RR/MM/DD'),'055)736-4981',175,92,101,9903);
Insert into STUDENT (STUDNO,NAME,USERID,GRADE,IDNUM,BIRTHDATE,TEL,HEIGHT,WEIGHT,DEPTNO,PROFNO) values (20103,'김진경','lovely','2','8302282169387',to_date('83/02/28','RR/MM/DD'),'052)175-3941',166,51,201,9902);
Insert into STUDENT (STUDNO,NAME,USERID,GRADE,IDNUM,BIRTHDATE,TEL,HEIGHT,WEIGHT,DEPTNO,PROFNO) values (20104,'조명훈','Rader214','1','8412141254963',to_date('84/09/16','RR/MM/DD'),'02)785-6984',184,62,201,null);
Insert into STUDENT (STUDNO,NAME,USERID,GRADE,IDNUM,BIRTHDATE,TEL,HEIGHT,WEIGHT,DEPTNO,PROFNO) values (10108,'류민정','cleanSky','2','8108192157498',to_date('81/08/19','RR/MM/DD'),'055)248-3679',162,72,101,9907);
Insert into STUDENT (STUDNO,NAME,USERID,GRADE,IDNUM,BIRTHDATE,TEL,HEIGHT,WEIGHT,DEPTNO,PROFNO) values (null,'신생아',null,null,null,to_date('22/03/02','RR/MM/DD'),null,null,null,null,null);
REM INSERTING into PROFESSOR
SET DEFINE OFF;
Insert into PROFESSOR (PROFNO,NAME,USERID,POSITION,SAL,HIREDATE,COMM,DEPTNO) values (9901,'김도훈','capool','교수',500,to_date('82/06/24','RR/MM/DD'),20,101);
Insert into PROFESSOR (PROFNO,NAME,USERID,POSITION,SAL,HIREDATE,COMM,DEPTNO) values (9902,'이재우','sweat413','조교수',320,to_date('95/04/12','RR/MM/DD'),null,201);
Insert into PROFESSOR (PROFNO,NAME,USERID,POSITION,SAL,HIREDATE,COMM,DEPTNO) values (9903,'성연희','Pascal','조교수',360,to_date('93/05/17','RR/MM/DD'),15,101);
Insert into PROFESSOR (PROFNO,NAME,USERID,POSITION,SAL,HIREDATE,COMM,DEPTNO) values (9904,'염일웅','Blue77','전임강사',240,to_date('98/12/02','RR/MM/DD'),null,102);
Insert into PROFESSOR (PROFNO,NAME,USERID,POSITION,SAL,HIREDATE,COMM,DEPTNO) values (9905,'권혁일','refresh','교수',450,to_date('86/01/08','RR/MM/DD'),25,102);
Insert into PROFESSOR (PROFNO,NAME,USERID,POSITION,SAL,HIREDATE,COMM,DEPTNO) values (9906,'이만식','Pocari','부교수',420,to_date('88/09/13','RR/MM/DD'),null,101);
Insert into PROFESSOR (PROFNO,NAME,USERID,POSITION,SAL,HIREDATE,COMM,DEPTNO) values (9907,'전은지','totoro','전임강사',210,to_date('01/06/01','RR/MM/DD'),null,101);
Insert into PROFESSOR (PROFNO,NAME,USERID,POSITION,SAL,HIREDATE,COMM,DEPTNO) values (9908,'남은혁','Bird13','부교수',400,to_date('90/11/18','RR/MM/DD'),17,202);
REM INSERTING into SALGRADE
SET DEFINE OFF;
Insert into SALGRADE (GRADE,LOSAL,HISAL) values (1,100,300);
Insert into SALGRADE (GRADE,LOSAL,HISAL) values (2,301,400);
Insert into SALGRADE (GRADE,LOSAL,HISAL) values (3,401,500);
REM INSERTING into DEPARTMENT
SET DEFINE OFF;
Insert into DEPARTMENT (DEPTNO,DNAME,COLLEGE,LOC) values (101,'컴퓨터공학과',100,'1호관');
Insert into DEPARTMENT (DEPTNO,DNAME,COLLEGE,LOC) values (102,'멀티미디어학과',100,'2호관');
Insert into DEPARTMENT (DEPTNO,DNAME,COLLEGE,LOC) values (201,'전자공학과',200,'3호관');
Insert into DEPARTMENT (DEPTNO,DNAME,COLLEGE,LOC) values (202,'기계공학과',200,'4호관');
Insert into DEPARTMENT (DEPTNO,DNAME,COLLEGE,LOC) values (100,'정보미디어학부',10,null);
Insert into DEPARTMENT (DEPTNO,DNAME,COLLEGE,LOC) values (200,'메카트로닉스학부',10,null);
Insert into DEPARTMENT (DEPTNO,DNAME,COLLEGE,LOC) values (10,'공과대학',null,null);
