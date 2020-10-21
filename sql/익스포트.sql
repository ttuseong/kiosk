--------------------------------------------------------
--  ������ ������ - ������-10��-21-2020   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence CATEGORY_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "KIOSK"."CATEGORY_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 446 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence DEFAULTMENU_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "KIOSK"."DEFAULTMENU_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 7 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence INFO_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "KIOSK"."INFO_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 2 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence MENU_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "KIOSK"."MENU_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 608 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_STATISTICS
--------------------------------------------------------

   CREATE SEQUENCE  "KIOSK"."SEQ_STATISTICS"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1092 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SETMENU_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "KIOSK"."SETMENU_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 62 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SETUNIT_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "KIOSK"."SETUNIT_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 79 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence STORE_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "KIOSK"."STORE_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence TOPPING_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "KIOSK"."TOPPING_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 150 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence USERS_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "KIOSK"."USERS_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 8 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table CATEGORY
--------------------------------------------------------

  CREATE TABLE "KIOSK"."CATEGORY" 
   (	"CATEGORYNO" NUMBER, 
	"STORENO" NUMBER, 
	"CATEGORYNAME" VARCHAR2(100 BYTE), 
	"PUBLICYN" NUMBER, 
	"CATEGORYIMG" VARCHAR2(200 BYTE), 
	"HIGHLIGHT" NUMBER DEFAULT '0'
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table DEFAULTMENU
--------------------------------------------------------

  CREATE TABLE "KIOSK"."DEFAULTMENU" 
   (	"MENUNO" NUMBER, 
	"UNITNO" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table INFO
--------------------------------------------------------

  CREATE TABLE "KIOSK"."INFO" 
   (	"INFONO" NUMBER, 
	"MENUNO" NUMBER, 
	"CALORIE" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table MENU
--------------------------------------------------------

  CREATE TABLE "KIOSK"."MENU" 
   (	"MENUNO" NUMBER, 
	"CATEGORYNO" NUMBER, 
	"MENUNAME" VARCHAR2(100 BYTE), 
	"MENUDESC" VARCHAR2(500 BYTE), 
	"MENUPRICE" NUMBER, 
	"MENUIMG" VARCHAR2(200 BYTE), 
	"ISSPECIAL" NUMBER DEFAULT 0, 
	"ISCHANGE" NUMBER DEFAULT '0', 
	"UNITNO" NUMBER, 
	"DISCOUNT" NUMBER, 
	"EDITIMG" VARCHAR2(200 BYTE) DEFAULT '-', 
	"THUMBNAILIMG" VARCHAR2(200 BYTE) DEFAULT '-'
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table PROMOTIONMENU
--------------------------------------------------------

  CREATE TABLE "KIOSK"."PROMOTIONMENU" 
   (	"MENUNO" NUMBER, 
	"PROMOTIONNO" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table SETUNIT
--------------------------------------------------------

  CREATE TABLE "KIOSK"."SETUNIT" 
   (	"UNITNO" NUMBER, 
	"STORENO" NUMBER, 
	"UNITNAME" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table SPECIALMENU
--------------------------------------------------------

  CREATE TABLE "KIOSK"."SPECIALMENU" 
   (	"MENUNO" NUMBER, 
	"STORENO" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table STATISTICS
--------------------------------------------------------

  CREATE TABLE "KIOSK"."STATISTICS" 
   (	"STATISTICSNO" NUMBER, 
	"STORENO" NUMBER, 
	"ENDPOINT" VARCHAR2(50 BYTE), 
	"LEVELS" VARCHAR2(20 BYTE), 
	"CHALLENGEDATE" DATE DEFAULT sysdate
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table STORE
--------------------------------------------------------

  CREATE TABLE "KIOSK"."STORE" 
   (	"STORENO" NUMBER, 
	"STORENAME" VARCHAR2(20 BYTE), 
	"STORELOGO" VARCHAR2(200 BYTE), 
	"USERNO" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table TEST
--------------------------------------------------------

  CREATE TABLE "KIOSK"."TEST" 
   (	"TEST1" DATE, 
	"TEST2" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table TOPPING
--------------------------------------------------------

  CREATE TABLE "KIOSK"."TOPPING" 
   (	"TOPPINGNO" NUMBER, 
	"STORENO" NUMBER, 
	"TOPPINGNAME" VARCHAR2(50 BYTE), 
	"TOPPINGPRICE" NUMBER, 
	"TOPPINGIMG" VARCHAR2(200 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table USEMENU
--------------------------------------------------------

  CREATE TABLE "KIOSK"."USEMENU" 
   (	"MENUNO" NUMBER, 
	"SETNO" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table USERS
--------------------------------------------------------

  CREATE TABLE "KIOSK"."USERS" 
   (	"USERNO" NUMBER, 
	"USERID" VARCHAR2(50 BYTE), 
	"USERPW" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table USETOPPING
--------------------------------------------------------

  CREATE TABLE "KIOSK"."USETOPPING" 
   (	"MENUNO" NUMBER, 
	"TOPPINGNO" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into KIOSK.CATEGORY
SET DEFINE OFF;
Insert into KIOSK.CATEGORY (CATEGORYNO,STORENO,CATEGORYNAME,PUBLICYN,CATEGORYIMG,HIGHLIGHT) values (7,1,'���̵�',1,'1601728154793242c4b76-f0fb-45d1-a163-62a628dead2c.png',0);
Insert into KIOSK.CATEGORY (CATEGORYNO,STORENO,CATEGORYNAME,PUBLICYN,CATEGORYIMG,HIGHLIGHT) values (11,2,'����Ʈ/ġŲ',1,null,0);
Insert into KIOSK.CATEGORY (CATEGORYNO,STORENO,CATEGORYNAME,PUBLICYN,CATEGORYIMG,HIGHLIGHT) values (12,2,'����/Ŀ��',1,null,0);
Insert into KIOSK.CATEGORY (CATEGORYNO,STORENO,CATEGORYNAME,PUBLICYN,CATEGORYIMG,HIGHLIGHT) values (4,2,'��õ�޴�',1,null,0);
Insert into KIOSK.CATEGORY (CATEGORYNO,STORENO,CATEGORYNAME,PUBLICYN,CATEGORYIMG,HIGHLIGHT) values (5,2,'�ܹ���',1,null,0);
Insert into KIOSK.CATEGORY (CATEGORYNO,STORENO,CATEGORYNAME,PUBLICYN,CATEGORYIMG,HIGHLIGHT) values (6,1,'ġŲ',1,'1601728164780b8759c65-190b-43b3-91f7-9765c6a56b23.png',0);
Insert into KIOSK.CATEGORY (CATEGORYNO,STORENO,CATEGORYNAME,PUBLICYN,CATEGORYIMG,HIGHLIGHT) values (27,1,'����/��Ʈ/�ڽ�',1,'160172814343136faead0-ddfc-4d99-ad89-bd456ed7f65c.png',0);
Insert into KIOSK.CATEGORY (CATEGORYNO,STORENO,CATEGORYNAME,PUBLICYN,CATEGORYIMG,HIGHLIGHT) values (28,2,'��Ʈ_����Ʈ',0,null,0);
Insert into KIOSK.CATEGORY (CATEGORYNO,STORENO,CATEGORYNAME,PUBLICYN,CATEGORYIMG,HIGHLIGHT) values (29,2,'��Ʈ_�帵ũ',0,null,0);
Insert into KIOSK.CATEGORY (CATEGORYNO,STORENO,CATEGORYNAME,PUBLICYN,CATEGORYIMG,HIGHLIGHT) values (48,1,'����',1,'16017281313991c946ec0-2da8-40f1-b1fa-74e57c503feb.png',0);
Insert into KIOSK.CATEGORY (CATEGORYNO,STORENO,CATEGORYNAME,PUBLICYN,CATEGORYIMG,HIGHLIGHT) values (378,2,'����_�帵ũ(1)',0,'���õ帵ũ1',0);
Insert into KIOSK.CATEGORY (CATEGORYNO,STORENO,CATEGORYNAME,PUBLICYN,CATEGORYIMG,HIGHLIGHT) values (384,2,'�������',0,'�������',0);
Insert into KIOSK.CATEGORY (CATEGORYNO,STORENO,CATEGORYNAME,PUBLICYN,CATEGORYIMG,HIGHLIGHT) values (379,2,'����_�帵ũ(2)',0,'���õ帵ũ2',0);
Insert into KIOSK.CATEGORY (CATEGORYNO,STORENO,CATEGORYNAME,PUBLICYN,CATEGORYIMG,HIGHLIGHT) values (382,2,'ġŲ�� ����Ʈ',0,null,0);
Insert into KIOSK.CATEGORY (CATEGORYNO,STORENO,CATEGORYNAME,PUBLICYN,CATEGORYIMG,HIGHLIGHT) values (383,2,'ġŲ��_�ҽ�',0,null,0);
Insert into KIOSK.CATEGORY (CATEGORYNO,STORENO,CATEGORYNAME,PUBLICYN,CATEGORYIMG,HIGHLIGHT) values (1,1,'�������',1,'1601715687380ae2a1613-1d87-4386-be0a-4fb0e699bde9.png',1);
Insert into KIOSK.CATEGORY (CATEGORYNO,STORENO,CATEGORYNAME,PUBLICYN,CATEGORYIMG,HIGHLIGHT) values (2,1,'�Ÿ޴�',1,'16017158118931a31d351-1043-4cd2-809c-b14ef65124db.png',2);
REM INSERTING into KIOSK.DEFAULTMENU
SET DEFINE OFF;
Insert into KIOSK.DEFAULTMENU (MENUNO,UNITNO) values (163,2);
Insert into KIOSK.DEFAULTMENU (MENUNO,UNITNO) values (168,78);
Insert into KIOSK.DEFAULTMENU (MENUNO,UNITNO) values (213,78);
Insert into KIOSK.DEFAULTMENU (MENUNO,UNITNO) values (203,1);
Insert into KIOSK.DEFAULTMENU (MENUNO,UNITNO) values (212,1);
Insert into KIOSK.DEFAULTMENU (MENUNO,UNITNO) values (212,2);
Insert into KIOSK.DEFAULTMENU (MENUNO,UNITNO) values (203,2);
REM INSERTING into KIOSK.INFO
SET DEFINE OFF;
REM INSERTING into KIOSK.MENU
SET DEFINE OFF;
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (14,5,'�������� ����','������Ʈ��',5700,'�������ź���.jpg',0,0,5,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (15,5,'���ƹ̶�Ŭ ����','���� ��',5600,'���ƹ̶�Ŭ����.jpg',0,0,5,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (45,5,'��¥�����δ����� ������','�ڿ��� ��¥���� ġ� �븩�븩�� ������, ���ͽ�, �ҽ��� ��췯�� ǳ���� ���� ��¥���� �δ����� ������',6000,'��¥�����δ�����-������.jpg',0,0,5,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (46,5,'Ŭ����ġ�����','�ε巴�� ������ ����������� ǳ���� ������ ������ ȣ�ֻ� ������Ƽ�� ������ ���� �� ä�� Ŭ���� ġ�����',4400,'Ŭ����ġ�����.jpg',0,0,5,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (61,5,'�ͱԿ����2','�ε巯�� �ͱԿ� �ñ״�ó �ҽ��� �ݶ�',5800,'�ͱԿ����2.jpg',0,0,5,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (62,5,'����X2','�� ������Ƽ 2��, ġ�� 2���� Ȱ���Ͽ� ���� ��ȭ�ο� ���� �Ƹ޸�ĭ ���� ��ǰ',5500,'����X2.jpg',0,0,5,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (63,5,'AZ����','���� ���� ������ ��Ƽ�� ��й�ȿ�� ȿ�� ���Ǿ� �ε巯�� �긮���� �� ���� ���� ���� A to Z�� ���� �� �ִ� �����̾� ��ǰ',6600,'AZ����.jpg',0,0,5,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (13,5,'�������� ��ġŲ','������ ����ó�� �Ծ��.',5700,'����������ġŲ.jpg',0,0,5,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (64,5,'�������','�Ұ�� Ư���� �ҽ��� ������ ������ ��� ������ ��ǰ',5800,'�������.jpg',0,0,5,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (41,4,'�����̵�L','������ ��ŭ���� �����ϰ� �ÿ��ϰ� ��� �� �ִ� ��뷮 ��ǰ',2800,'�����̵�L.jpg',1,0,5,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (42,4,'���̽�ƼL','������ ������ ���� �ÿ��� ��뷮 ���̽� �帵ũ',2500,'���̽�ƼL.jpg',1,0,5,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (65,5,'��ũ�����ǹ���','�丶��� ��Ÿ������ ��ä�� �Ϲٳ׷����� ���̵� ������� ���� ������ Premium ġŲ����',4900,'��ũ�����ǹ���.jpg',0,0,5,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (66,5,'�ѿ�Ұ��','100% �츮 �ѿ�� ���� ������ ��Ƽ�� �ε巴�� ������ ����������� ���� �� ���־��� NEW �ѿ�Ұ��',7000,'�ѿ�Ұ��.jpg',0,0,5,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (67,5,'�Ұ�����','�Ұ����� ���� ������ ��Ƽ�� �Ұ�� �ҽ��� �� ��ȭ�� ���縸���� �ܹ���',3900,'�Ұ�����.jpg',0,0,5,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (68,5,'�������','�� Ŀ����, �� ���־��� ���� ��Ƽ�� ������ ���� ��ȭ�� �������� �������',3900,'�������.jpg',0,0,5,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (69,5,'T-Rex','�������� ū "��ٸ���" ġŲ��Ƽ�� Ȱ���� ������ǰ',3700,'T-Rex.jpg',0,0,5,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (71,27,'ġŲ�Ұ�����','�Ұ�� �ҽ��� ���� �Ǽӵ� �ְ�!',4200,'a.png',0,0,null,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (72,5,'��������','ǳ���� ���ͽ��� �������,��Ư�� �����ҽ��� ����Ʈ�� �ܹ���',2500,'��������.jpg',0,0,5,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (73,27,'Ʈ������','����� �߰������� �ż��� ��ä�� �Ƕ�ƿ� ���Ƹ��� Ʈ������',4200,'twister.png',0,0,null,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (81,11,'ġ���δ�����','���¬©�� ü��ġ��� ������ ���� ��ȭ�ο� "��§" ���� ��� ��� ġ�',3000,'1601946094212ca365adc-0988-4a3a-9c86-a28ee7de6a7d.jpg',0,0,5,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (76,27,'��ġ��¡�Ź���','������ ġ���� �ҽ��� ¡�Ź��Ÿ� �ѷ� �ŷ����� ����',5900,'b.png',0,0,null,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (77,27,'Ÿ������','������ �밡���� �ʷ��� �ؽú���, �����̽� ġ����� KFC �ñ״��� ����!',6200,'c.png',0,0,null,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (78,27,'¡�Ŵ���ٿ�ƽ�','Only meat! ġŲ ���θ� ������ Real ġŲ������',7200,'d.png',0,0,null,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (79,27,'¡�Ź���','�� Ŀ�������� �ʷ��� ��ŭ�� �丶�䰡 ��췯�� ��ǥ ġŲ����',5300,'e.png',1,0,null,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (80,11,'��޼','������ �ϰ� ���̽�ũ��, ��ŭ�� �ĸ���, ������ �� �پ��� ������ ��� ��� �� ���� ���� ��Ÿ�� ����',3800,'���.jpg',0,0,5,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (82,11,'������ �Ϻ�׷�(L)','�ѱ��� ������ ġŲ ����Ʈ, �� ũ�� �ſ�� ������ �Ϲٳ׷�(L)',4300,'�������Ϲٳ׷�(L).jpg',0,0,5,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (83,11,'������ ����Ѹ�(S)','�ѱ��� ������ ġŲ ����Ʈ, ������ ����Ѹ�(S)',3400,'�������Ϲٳ׷�(L).jpg',0,0,5,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (84,11,'ġŲ �ʰ�','�پ��� �������� ���⿡ ���� ���Դ� "ġŲ �ʰ�"',1200,'ġŲ�ʰ�.jpg',0,0,5,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (85,11,'�� ġ�ƽ(1����)','ġ�ƽ�� �������! ���̴� 2�� ������� ������ �� ������ ������ǰ �� ġ�ƽ',1800,'��ġ�ƽ(1����).jpg',0,0,5,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (86,11,'�ܻ�����','�ż��� ��ä�� ��ŭ�ϰ� ����� �巹������ �� ��췯�� ���� ��ǰ',1700,'�ܻ�����.jpg',0,0,5,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (87,11,'�������̽�ũ��(��Ʈ�κ���)','�ε巯�� ���̽�ũ���� ���� õ������ �ҽ��� ��� ����� ������ ���� ���� ���Ҿ� �����ִ� ���� ���̽�ũ������ ��ŭ�� ��ġ���� ������ ��Ʈ�κ����� �� ������ �ִ�.',1500,'�����̾��̽�ũ��(��Ʈ�κ���).jpg',0,0,5,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (88,11,'����ġŲ(ĥ��)','����� ġŲ ������� ������� ��ȭ�ο� ��ǰ',2500,'����ġŲ.jpg',0,0,5,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (89,11,'����ġŲ(ġ��)','����� ġŲ ������� ������� ��ȭ�ο� ��ǰ',2500,'����ġŲ.jpg',0,0,5,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (90,11,'����ġŲ(��Ͼ�)','����� ġŲ ������� ������� ��ȭ�ο� ��ǰ',2500,'����ġŲ.jpg',0,0,5,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (91,11,'��䰨��','���� ��ȣ�� �°� �����(��Ͼ�,ġ��,ĥ��)�� �Ѱ����� �����ؼ� ���� �ѷ��Դ� ���ο� ����� ��������',2000,'����Ƣ��.jpg',0,0,5,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (92,11,'��¡�','�ʱ��ʱ��� ��¡����� ���� ������ ���ο� Ÿ���� ����Ʈ �޴�',2200,'��¡�.jpg',0,0,5,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (93,11,'ġ�ƽ','ġ� �Ľ����� ÷���� Ƣ����� ���� �ٻ�ٻ��ϰ� �ε巴�� ����� ����ǳ�� ����Ʈ �޴�',2000,'ġ�ƽ.jpg',0,0,5,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (94,11,'��������','�ż��� ���� �Ķ��� ���Ͽ� �ٷ� Ƣ�ܳ� �ٻ�ٻ��ϰ� ��ĥ�� ���� ���� �ķ�ġ ��������',1500,'��������.jpg',0,0,5,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (95,11,'����̵�(������Ű)','�ε巯�� ���̽�ũ���� �����ϰ� ����� ������Ű�� �־� � ���̺��� �ֺο� �̸������ ���� ��ſ�� �Դ� ��ſ��� �Բ��ϴ� ���̽�ũ��<�Ϻθ�������>',2300,'����̵�(������Ű).jpg',0,0,5,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (96,11,'����̵�(����)','�ε巯�� ���̽�ũ���� �ż��� ������ �־� ǳ���� �������� ���� ������, Ư�� 10 ~ 30�� ���� ������ ��ǰ���� ���� ��ſ�� �Դ� ��ſ��� �Բ��ϴ� ���̽�ũ��<�Ϻθ�������>',2300,'����̵�(����).jpg',0,0,5,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (97,11,'����̵�(��Ʈ�κ���)','�ε巯�� ���̽�ũ���� �ż��� ������ �־� ǳ���� �������� ���� ������, Ư�� 10 ~ 30�� ���� ������ ��ǰ���� ���� ��ſ�� �Դ� ��ſ��� �Բ��ϴ� ���̽�ũ��<�Ϻθ�������>',2300,'����̵�(��Ʈ�κ���).jpg',0,0,5,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (98,11,'����Ʈ��','�ε巯�� ���� �ÿ��� ����Ʈ Ÿ���� ���̽��� ��ǰ',700,'����Ʈ��.jpg',0,0,5,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (99,11,'1��ȥ��','���� ũ�������ϰ� ���� ������ �ߵ��� ���� ���� �Ѹ��� ���(ġŲ��, ���ұ� ����)',10000,'1��ȥ��.jpg',0,0,5,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (100,11,'ġŲ�ٷ�(4����)','����� �Ƚɻ��� Chicken fillet�� �Ե����Ƹ��� ��Ư�� �ҽ��� ��췯�� ����Ʈ �޴�',4500,'ġŲ�ٷ�(4����).jpg',0,0,5,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (101,11,'ȭ�̾���(2����)','������� ���� ������ ���� �� ��ȭ�� Ư���� Ÿ���� ġŲ',2500,'ȭ�̾���(2����).jpg',0,0,5,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (102,11,'ȭ�̾���(4����)','������� ���� ������ ���� �� ��ȭ�� Ư���� Ÿ���� ġŲ',2500,'ȭ�̾���(4����).jpg',0,0,5,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (103,11,'ġŲ1����','�ż��� ġŲ���� ����Ͽ� �ε巴�� ����԰� ������ ���� �� ��췯�� �Ķ��̵� ġŲ(���Ѹ�/�ſ��)',2300,'ġŲ1����.jpg',0,0,5,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (104,11,'ġŲ�ٷ�(2����)','����� �Ƚɻ��� Chicken fillet�� �Ե����Ƹ��� ��Ư�� �ҽ��� ��췯�� ����Ʈ �޴�',2500,'ġŲ�ٷ�(2����).jpg',0,0,5,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (108,12,'���̽� �Ƹ޸�ī��L','��뷮 (20oz)���� ���� �ÿ��� ���̽� �Ƹ޸�ī��',2500,'���̽��Ƹ޸�ī��L.jpg',0,0,5,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (106,12,'�����̵�L','������ ��ŭ���� �����ϰ� �ÿ��ϰ� ��� �� �ִ� ��뷮 ��ǰ',2800,'�����̵�L.jpg',0,0,5,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (107,12,'���̽�ƼL','������ ������ ���� �ÿ��� ��뷮 ���̽� �帵ũ',2500,'���̽�ƼL.jpg',0,0,5,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (109,12,'������','�����ϰ� ���� ���ݸ� ǳ�̿� �ε巯�� ���� "�������̽�"�Ŀ���� ����� ��ǰ',2000,'������.jpg',0,0,5,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (110,12,'�������ֽ�(40m PET)','õ���� �ż��� 100% ������ ������ ������ �ķ��� �帵ũ',2500,'�������ֽ�(400mlPET).jpg',0,0,5,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (111,12,'����','�ż��� �Ե���� ����',1500,'����.jpg',0,0,5,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (112,12,'���̴�(R)','���� ��� û������ �������� ����',1700,'���̴�(R).jpg',0,0,5,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (113,12,'�ݶ�(R)','�ܹ��ſ� �ʼ� ���� �ݶ�',1700,'�ݶ�(R).jpg',0,0,5,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (114,12,'��ũ����ũ(����)','õ�����Ҹ� �̿��Ͽ� ���� ��ŭ�� ���� ����ũ',2100,'��ũ����ũ(����).jpg',0,0,5,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (115,12,'��ũ����ũ(����)','������ �����԰� ����ũ�� �ε巯���� �� ��︮�� ��ǰ',2100,'��ũ����ũ(����).jpg',0,0,5,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (116,12,'��ũ����ũ(�ٴҶ�)','������ ������ ��� ���� �������� �ÿ��� ����ũ',2100,'��ũ����ũ(�ٴҶ�).jpg',0,0,5,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (117,12,'�Ƹ޸�ī��','���������� Ŀ�Ǹ� ���� ���Ͽ� Ŀ���� ǳ���� ���� �츰 ��ǰ',2000,'�Ƹ޸�ī��.jpg',0,0,5,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (118,12,'���̽� �Ƹ޸�ī��','������ ���� ���� ǳ���� ���������� Ŀ��',2000,'���̽��Ƹ޸�ī��.jpg',0,0,5,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (119,12,'ī���','���������� Ŀ�ǿ� ������ ������ ��� �־� �ε巴�� ���� �޴�',2400,'ī���.jpg',0,0,5,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (120,12,'���̽� ī���','���������� Ŀ�ǿ� �ÿ��� ������ �� ��췯�� ��ǰ',2400,'���̽�ī���.jpg',0,0,5,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (121,12,'�����̵�','������ ��ŭ���� �����ϰ� �ÿ��ϰ� ��� �� �ִ� ��ǰ',2500,'�����̵�.jpg',0,0,5,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (122,5,'ġŲ����','����, ǳ�� �پ "�ߴٸ���" Ȱ���� ������ ġŲ����',2900,'ġŲ����.jpg',0,0,5,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (194,29,'ī���','���������� Ŀ�ǿ� ������ ������ ��� �־� �ε巴�� ���� �޴�',700,'ī���.jpg',0,0,5,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (195,29,'���̽�ī���','���������� Ŀ�ǿ� �ÿ��� ������ �� ��췯�� ��ǰ',700,'���̽�ī���.jpg',0,0,5,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (196,29,'����','�ż��� �Ե���� �����ż��� �Ե���� ����',0,'����.jpg',0,0,5,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (197,29,'������ �������̽�','�����ϰ� ���� ���ݸ� ǳ�̿� �ε巯�� ���� "�������̽�"�Ŀ���� ����� ��ǰ',300,'������.jpg',0,0,5,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (198,29,'�������ֽ�(PET)','õ���� �ż��� 100% ������ ������ ������ �ķ��� �帵ũ',800,'�������ֽ�(400mlPET).jpg',0,0,5,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (199,29,'�����̵�','������ ��ŭ���� �����ϰ� �ÿ��ϰ� ��� �� �ִ� ��뷮 ��ǰ',800,'�����̵�.jpg',0,0,5,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (200,29,'�����̵�L','������ ��ŭ���� �����ϰ� �ÿ��ϰ� ��� �� �ִ� ��뷮 ��ǰ',1100,'�����̵�L.jpg',0,0,5,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (202,7,'�ڿｽ��','����߿� ���, ���� �ż��� ��ä�� ��ŭ�ϰ� ������ ��ä ������',2200,'b2.png',2,1,null,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (203,7,'�ķ�ġ�Ķ���(M)','����� ���ڸ� �����Ͽ� Ƣ�ܳ� ����ϰ� �ٻ��� KFC ����Ƣ��',2200,'b3.png',0,1,null,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (204,7,'�ٴ�������','���޴��� ����Ʈ, �ٴ�������',3300,'b4.png',1,1,null,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (205,7,'������','������',300,'b5.png',0,0,null,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (206,7,'����Ÿ��Ʈ1��','�ٻ��� �н�Ʈ�� �ӿ� �ε巯�� ����ũ���� ��ǰ�� ����Ÿ��Ʈ',2200,'b6.png',2,1,null,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (208,7,'��ġ�ƽ','100% �ڿ��� ġ� ��~�� �þ�� ����� ��ġ�ƽ',2300,'b8.png',2,1,null,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (163,6,'��ũ������ġŲ','KFC���� ������� ���޹ٻ��ϰ� Ƣ�ܳ� KFC ��ũ������ġŲ',2900,'a1.png',0,0,null,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (164,6,'����ġŲ','�ߴٸ� ���� ���� �ְ�� �����̾� ġŲ(����ĥ���ҽ��� ��� ������ ���� ���ֽ��ϴ�)',3100,'a2.png',0,0,null,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (165,6,'�����ġŲ','���� ����, �������� ����� �ʴ��� �Ϻ��� ��ȭ �ѱ� ��� �Ը��� ��! ���� ȯ���� ��� ġŲ!',3100,'a3.png',0,0,null,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (166,6,'��������ġŲ','KFC������ ����� ���졯�� �԰� �ʹٴ� ���Ե��� ���� �غ��ߴ�! ���� ġŲ�� ����! �ߴٸ� ��� ������ ������ ������!',3300,'a4.png',0,0,null,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (167,6,'��������ġŲ','Ŀ�ڻ������� ������ 11���� ��о�信 �����ŷ ������� ������ ����־� �����ϰ� ����� KFC �������� ġŲ',2900,'a5.png',0,0,null,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (168,6,'�����̺���ġŲ','�ѱ���Ȱ 36��°, Ŀ�� ������ �Ҿƹ����� �ι�° �ո�! ������ġŲ�� �̹��� ���󺧷� ���ƿԴ�! ¬���� �޴�, �������� ������ ����� ��� ���� ������ ��. �����̾� �ߴٸ� ����� �����̷� �����!',3300,'a6.png',0,0,null,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (169,28,'��������','�ż��� ���� �Ķ��� ���Ͽ� �ٷ� Ƣ�ܳ� �ٻ�ٻ��ϰ� ��ĥ�� ���� ���� �ķ�ġ ��������',0,'��������.jpg',0,0,5,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (170,28,'��䰨��','���� ��ȣ�� �°� �����(��Ͼ�,ġ��,ĥ��)�� �Ѱ����� �����ؼ� ���� �ѷ��Դ� ���ο� ����� ��������',500,'����Ƣ��.jpg',0,0,5,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (171,28,'ġ�ƽ','ġ� �Ľ����� ÷���� Ƣ����� ���� �ٻ�ٻ��ϰ� �ε巴�� ����� ����ǳ�� ����Ʈ �޴�',500,'ġ�ƽ.jpg',0,0,5,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (172,28,'��¡�','�ʱ��ʱ��� ��¡����� ���� ������ ���ο� Ÿ���� ����Ʈ �޴�',700,'��¡�.jpg',0,0,5,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (173,28,'����ġŲ','����� ġŲ ������� ������� ��ȭ�ο� ��ǰ',1000,'����ġŲ.jpg',0,0,5,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (174,28,'��������(L)','�ż��� ���� �Ķ��� ���Ͽ� �ٷ� Ƣ�ܳ� �ٻ�ٻ��ϰ� ��ĥ�� ���� ���� �ķ�ġ ��������',400,'��������.jpg',0,0,5,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (175,28,'�ܼ�����','�ż��� ��ä�� ��ŭ�ϰ� ����� �巹������ �� ��췯�� ���� ��ǰ',200,'�ܻ�����.jpg',0,0,5,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (176,28,'��ġ�ƽ','ġ�ƽ�� �������! ���̴� 2�� ������� ������ �� ������ ������ǰ �� ġ�ƽ',300,'��ġ�ƽ(1����).jpg',0,0,5,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (177,28,'�����̾��̽�ũ��-��Ʈ�κ���','�ε巯�� ���̽�ũ���� ���� õ������ �ҽ��� ��� ����� ������ ���� ���� ���Ҿ� �����ִ� ���� ���̽�ũ������ ��ŭ�� ��ġ���� ������ ��Ʈ�κ����� �� ������ �ִ�.',0,'�����̾��̽�ũ��(��Ʈ�κ���).jpg',0,0,5,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (178,28,'����̵�-����','�ε巯�� ���̽�ũ���� �����ϰ� ����� ������Ű�� �־� � ���̺��� �ֺο� �̸������ ���� ��ſ�� �Դ� ��ſ��� �Բ��ϴ� ���̽�ũ��',800,'����̵�(������Ű).jpg',0,0,5,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (179,28,'����̵�-����','�ε巯�� ���̽�ũ���� �ż��� ������ �־� ǳ���� �������� ���� ������, Ư�� 10 ~ 30�� ���� ������ ��ǰ���� ���� ��ſ�� �Դ� ��ſ��� �Բ��ϴ� ���̽�ũ��',800,'����̵�(����).jpg',0,0,5,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (180,28,'����̵�-��Ʈ�κ���','������ ���޴����� ���� ��Ʈ�κ��� �ķ���ũ�� �ƻ� �ƻ��� ���� ���� õ�� ������ ��ȣ�ϴ� ���� ���� ��ǰ���� ���� ��ſ�� �Դ� ��ſ��� �Բ��ϴ� ���̽�ũ��',900,'����̵�(��Ʈ�κ���).jpg',0,0,5,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (181,28,'ġŲ-1����','�ż��� ġŲ���� ����Ͽ� �ε巴�� ����԰� ������ ���� �� ��췯�� �Ķ��̵� ġŲ(���Ѹ�/�ſ��)',800,'ġŲ1����.jpg',0,0,5,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (182,28,'ȭ�̾���-2','������� ���� ������ ���� �� ��ȭ�� Ư���� Ÿ���� ġŲ',1000,'ȭ�̾���(2����).jpg',0,0,5,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (183,28,'ġŲ�ٷ�-2','����� �Ƚɻ��� Chicken fillet�� �Ե����Ƹ��� ��Ư�� �ҽ��� ��췯�� ����Ʈ �޴�',1000,'ġŲ�ٷ�(2����).jpg',0,0,5,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (184,28,'������-����Ѹ�','�ѱ��� ������ ġŲ ����Ʈ, ������ ����Ѹ�',1900,'�������Ϲٳ׷�(L).jpg',0,0,5,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (185,29,'�ݶ�','�ܹ��ſ� �ʼ� ���� �ݶ�',0,'�ݶ�(R).jpg',0,0,5,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (186,29,'���̴�','���� ��� û������ �������� ����',0,'���̴�(R).jpg',0,0,5,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (187,29,'�ƽ��ݶ�','�ܹ��ſ� �ʼ� ���� �ݶ�',0,'�ݶ�(R).jpg',0,0,5,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (188,29,'�ݶ�_(L,����)','�ܹ��ſ� �ʼ� ���� �ݶ�',200,'�ݶ�(R).jpg',0,0,5,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (189,29,'���̴�_(L,����)','���� ��� û������ �������� ����',200,'���̴�(R).jpg',0,0,5,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (190,29,'�ƽ��ݶ�_(L,����)','�ܹ��ſ� �ʼ� ���� �ƽ��ݶ�',200,'�ݶ�(R).jpg',0,0,5,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (191,29,'�Ƹ޸�ī��','���������� Ŀ�Ǹ� ���� ���Ͽ� Ŀ���� ǳ���� ���� �츰 ��ǰ',300,'�Ƹ޸�ī��.jpg',0,0,5,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (192,29,'���̽��Ƹ޸�ī��','������ ���� ���� ǳ���� ���������� Ŀ��',300,'���̽��Ƹ޸�ī��.jpg',0,0,5,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (193,29,'���̽��Ƹ޸�ī��_(L,����)','������ ���� ���� ǳ���� ���������� Ŀ��',800,'���̽��Ƹ޸�ī��L.jpg',0,0,5,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (212,48,'�ݶ�(M)','�ӱ��� �ÿ������� û�������� ��ǥ! �ݶ�',2000,'2.png',0,1,null,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (213,48,'�ݶ�(L)','�ӱ��� �ÿ������� û�������� ��ǥ! �ݶ�',2300,'2.png',0,1,null,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (214,48,'�Ƹ޸�ī��(L)','KFC���� ��ǰ�� ���θ� ����� ��� ���� �پ �Ƹ޸�ī��',2400,'3.png',0,1,null,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (215,48,'����','KFC�� �ÿ��ϰ� �������� ���� ������ ���� ����� �Ǹſ� ������ ��ġ�ϰ� �ֽ��ϴ�.',1300,'1.png',0,1,null,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (217,48,'ȯŸ ������(L)','�ӱ��� �ÿ������� û������ ȯŸ!',2600,'4.png',0,0,null,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (238,5,'�ͱԿ����2��Ʈ','�ε巯�� �ͱԿ� �ñ״�ó �ҽ��� �ݶ�',7600,'�ͱԿ����2.jpg',0,1,3,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (240,5,'����X2 ��Ʈ','�� ������Ƽ 2��, ġ�� 2���� Ȱ���Ͽ� ���� ��ȭ�ο� ���� �Ƹ޸�ĭ ���� ��ǰ',7500,'�ͱԿ����2��Ʈ.jpg',0,1,3,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (332,5,'�ѿ��ǰ��','NEW�ѿ�Ұ����ſ� ��ũ�����ǹ��Ÿ� �Բ� ��� �� �ִ� �ѿ��ǰ��',15600,'�ѿ��ǰ��.jpg',0,0,5,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (241,5,'AZ���� ��Ʈ','���� ��Ʈ',8300,'AZ���ż�Ʈ.jpg',0,1,3,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (242,5,'�ѿ�Ұ�� �޺�','���� �޺�',8000,'�ѿ�Ұ���޺�.jpg',0,1,4,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (243,5,'�ѿ�Ұ�� ��Ʈ','���� ��Ʈ',8700,'�ѿ�Ұ�⼼Ʈ.jpg',0,1,3,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (244,5,'��¥�����δ����� ������ ��Ʈ','���� ��Ʈ',7700,'��¥�����δ����ź�������Ʈ.jpg',0,1,3,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (245,5,'������� ��Ʈ','���� ��Ʈ',7600,'������Ҽ�Ʈ.jpg',0,1,3,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (246,5,'��ũ�����ǹ��� ��Ʈ','���� ��Ʈ',6700,'��ũ�����ǹ��ż�Ʈ.jpg',0,1,3,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (247,5,'�Ұ����� ��Ʈ','���� ��Ʈ',5900,'�Ұ����ż�Ʈ.jpg',0,1,3,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (248,5,'�������� ��ġŲ ��Ʈ','���� ��Ʈ',7500,'����������ġŲ��Ʈ.jpg',0,1,3,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (249,5,'�������� ���� ��Ʈ','���� ��Ʈ',7500,'�������ź�����Ʈ.jpg',0,1,3,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (250,5,'���ƹ̶�Ŭ ���� ��Ʈ','���� ��Ʈ',7400,'���ƹ̶�Ŭ���ż�Ʈ.jpg',0,1,3,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (251,5,'������� ��Ʈ','���� ��Ʈ',5900,'icon1.png',0,1,3,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (252,5,'ġŲ���� ��Ʈ','���� ��Ʈ',5100,'ġŲ���ż�Ʈ.jpg',0,1,3,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (253,5,'T-Rex���� ��Ʈ','���� ��Ʈ',6400,'T-Rex���ż�Ʈ.jpg',0,1,3,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (254,5,'Ŭ���� ġ����� ��Ʈ','���� ��Ʈ',6400,'Ŭ����ġ����ż�Ʈ.jpg',0,1,3,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (255,5,'�������� ��Ʈ','���� ��Ʈ',4900,'�������ż�Ʈ.jpg',0,1,3,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (256,11,'1��ȥ�� ��Ʈ','ġŲ ��Ʈ',11500,'1��ȥ�߼�Ʈ.jpg',0,1,5,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (258,27,'Ʈ������ ��Ʈ','����� �߰������� �ż��� ��ä�� �Ƕ�ƿ� ���Ƹ��� Ʈ������',6500,'twisterSet.png',0,0,1,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (259,27,'Ʈ������ �ڽ�','Ʈ�����Ϳ� ġŲ���� �ѹ���!',8000,'twisterBox.png',0,0,2,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (333,11,'�йи���','�ż��� ġŲ�� ����Ͽ� �ε巴��, ����԰� ������ ���� �� ��췯�� �Ķ��̵� ġŲ* ���� : ġŲ 4���� + ġŲ�ٷ� 2���� + ȭ�̾��� 2���� + �ܻ����� + ġŲ�ҽ�2(?�ܻ����带 ��������� ���� ���� - 121kcal �߰�)������ ġŲ/ġŲ�ٷ� : ������ �߰�� ȭ�̾��� : ����ũ�� �߰��(*ȭ�̾��� �������� ���忡 ���� �ѽ������� �±����� ����� �� �ֽ��ϴ�)',13600,'1��ȥ�߼�Ʈ.jpg',0,0,4,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (331,5,'�ѿ쿬����','�ѿ�Ұ����ſ� ������Ÿ� �Բ� ��� �� �ִ� �ѿ쿬����',13900,'�ѿ쿬����.jpg',0,0,5,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (334,11,'ġŲǮ��','�ż��� ġŲ�� ����Ͽ� �ε巴��, ����԰� ������ ���� �� ��췯�� �Ķ��̵� ġŲ* ���� : ġŲ9 + �ܻ����� + ġŲ�ҽ�2(�ܻ����带 ��������� ���� ���� - 121kcal �߰�)?',18800,'ġŲǮ��.jpg',0,0,5,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (335,11,'ġŲ������','�ż��� ġŲ�� ����Ͽ� �ε巴��, ����԰� ������ ���� �� ��췯�� �Ķ��̵� ġŲ* ���� : ġŲ 4���� + �ܻ����� + ġŲ�ҽ�1(�ܻ����带 ��������� ���� ���� - 121kcal �߰�)?',9300,'ġŲ������.jpg',0,0,5,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (336,11,'����ġŲ Ǯ��','�ż��� ġŲ �ٸ����� �̿��� Crispy���� ����� ����Ÿ���� ġŲ�޴�?',15900,'����ġŲǮ��(best).jpg',0,0,5,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (337,11,'����ġŲ ������','�ż��� ġŲ �ٸ����� �̿��� Crispy���� ����� ����Ÿ���� ġŲ�޴�?',8900,'����ġŲ������.jpg',0,0,5,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (590,7,'�ٴ� 2����','����� ġŲ �Ƚɻ�� ����� ����ϰ� ������ �ִ� KFC ���� ġŲ����',3200,'1602072929115c61474d9-e20c-4d78-a310-cd451a2b9992.png',0,0,null,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (342,378,'�ݶ�','�ݶ�',0,'�ݶ�(R).jpg',0,0,5,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (343,378,'���̴�','���̴�',0,'���̴�(R).jpg',0,0,5,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (344,379,'�ݶ�','�ݶ�',0,'�ݶ�(R).jpg',0,0,5,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (345,379,'���̴�','���̴�',0,'���̴�(R).jpg',0,0,5,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (346,5,'�ѿ쿬����','�ѿ쿬���� ��Ʈ',13900,'�ѿ쿬����.jpg',0,0,3,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (347,11,'ġŲǮ��','ġŲǮ�Ѽ�Ʈ',18800,'ġŲǮ��.jpg',0,0,3,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (348,11,'ġŲ������','ġŲ������Ʈ',9300,'ġŲ������.jpg',0,0,3,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (349,11,'����ġŲ Ǯ��','����ġŲǮ�� ��Ʈ',15900,'����ġŲǮ��.jpg',0,0,3,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (350,11,'����ġŲ ������','����ġŲ������ ��Ʈ',8900,'����ġŲ������.jpg',0,0,3,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (351,11,'ġŲ-1����','ġŲ������',2300,'ġŲ1����.jpg',0,0,5,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (352,11,'�ܻ�����','�ܻ�����',1700,'�ܻ�����.jpg',0,0,5,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (353,382,'�ܻ�����','�ܻ����� �ϳ�',0,'�ܻ�����.jpg',0,0,5,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (354,382,'��������','����Ƣ��',0,'��������.jpg',0,0,5,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (355,383,'�ּҽ�','�ּҽ�',0,'�ּҽ�.png',0,0,5,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (356,383,'�ӽ�Ÿ��ҽ�','�ӽ�Ÿ��ҽ�',0,'�ӽ�Ÿ��ҽ�.png',0,0,5,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (293,29,'����','�����',0,'����.jpg',0,0,5,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (357,383,'�����߳��ҽ�','�����߳��ҽ�',0,'�����߳��ҽ�.png',0,0,5,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (358,11,'�ּҽ�','�ּҽ�',500,'�ּҽ�.png',0,0,5,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (359,11,'�����߳��ҽ�','�����߳��ҽ�',500,'�����߳��ҽ�.png',0,0,5,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (360,11,'�ӽ�Ÿ��ҽ�','�ӽ�Ÿ��ҽ�',500,'�ӽ�Ÿ��ҽ�.png',0,0,5,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (309,27,'¡�Ź��� ��Ʈ','��������',1999,'1600042250244bdd94038-1a2d-4b56-9437-61e78ac02a97.png',0,0,1,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (362,11,'�����-��Ͼ�','��Ͼ�� �����',200,'��Ͼ��.jpg',0,0,5,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (363,11,'�����-ġ��','ġ��� �����',200,'ġ���.jpg',0,0,5,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (364,11,'�����-ĥ��','ĥ���� �����',200,'ĥ����.jpg',0,0,5,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (365,5,'�ѿ��ǰ��','�ѿ��ǰ�� ��Ʈ',15600,'�ѿ��ǰ��.jpg',0,0,3,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (384,28,'������ �Ϲٳ׷�L','������ �Ϲٳ׷�L',2800,'�������Ϲٳ׷�(L).jpg',0,0,5,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (385,28,'ġ���δ�����','ġ���δ�����',1500,'ġ���δ�����.jpg',0,0,5,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (386,28,'�Ե����� ���','���',2300,'���.jpg',0,0,5,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (582,7,'�߶���Ƣ��','����~�̱��� ���� �ߵ�! ������� ������ �߶���Ƣ���� �����! KFC Ư������ ����Ʈ������ �߶���Ƣ���� �����!',3200,'1602071266960c7695613-c8a0-4371-b782-8f1111d7196d.png',1,0,null,2800,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (583,27,'��ġġ��¡�Ź���','ũ��ü�ټҽ��� ü�ٽ����̽�ġ�����?! ġ�� ���! ¡�Ź����� ���ο� ����! ��ġġ��¡�Ź���!',6200,'16020686386047b41851c-2f74-4592-b322-4db9ec0a0bfc.png',0,0,null,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (401,6,'��������ġŲ','KFC������ ����� ���졯�� �԰� �ʹٴ� ���Ե��� ���� �غ��ߴ�! ���� ġŲ�� ����! �ߴٸ� ��� ������ ������ ������!',3300,'16020837277614d5326b5-1fd3-4ab0-9d5f-deab6529d604.png',0,0,null,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (395,384,'�����-��Ͼ�','��Ͼ�����',0,'��Ͼ�.jpg',0,0,5,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (396,384,'�����-ĥ����','ĥ���������',0,'ĥ��.jpg',0,0,5,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (397,384,'�����-ġ��','ĥ���������',0,'ġ������.jpg',0,0,5,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (584,1,'��ġġ��¡�Ź��Źڽ�','ũ��ü�ټҽ��� ü�ٽ����̽�ġ�����?! ġ�� ���! ¡�Ź����� ���ο� ����! ��ġġ��¡�Ź���!',8500,'1602068724599bbfadbd5-df66-4c0d-9895-89bb2aa1ee68.png',1,0,null,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (585,7,'�ܻ�����','����� �������� ������ �巹��, ���� �ż��� ��ä�� ����� �ܻ�����',1800,'16020709405169da13ab6-c8e9-4a9c-a013-5abd90b41fff.png',2,0,null,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (586,7,'����Ʈĥ���ҽ�','���޴���! ����Ʈĥ���ҽ�',300,'16020710538485356c437-49ac-45c2-bbb0-fc7b64b53ab0.png',2,0,null,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (587,7,'���ҽ�','�߲���Ƣ���� ���� KFC�� ���ƿԴ�! ���� ��÷� ������ ���� ��� �� �ִ�. ���� ���־����� �پ����� �ҽ��� �Բ� ��ܺ���! ���� ǳ�̰� ���� ���׷��̵� �� ���ҽ��� �Բ� �߲���Ƣ���� ��ܺ���!',200,'16020711768768b729590-9876-4f91-b384-640e2d1694be.png',2,0,null,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (600,27,'��������ġ�����','�ε巯�� ��ٸ���� ũ��ġ��, ���ġ�� �׸��� ���ġ���� �Ϻ��� ��ȭ ���� ����ġ����� ���ξ��� �ϼ�',7900,'16020859194093172b66f-3355-44fc-b065-2445d826cccc.png',0,0,null,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (588,7,'�߲���Ƣ��','�߲���Ƣ���� ���� KFC�� ���ƿԴ�! ���� ��÷� ������ ���� ��� �� �ִ�. ���� ���־����� �پ����� �ҽ��� �Բ� ��ܺ���! ���� ǳ�̰� ���� ���׷��̵� �� ���ҽ��� �Բ� �߲���Ƣ���� ��ܺ���!',2800,'1602072834416131a880e-2ff3-43f1-981d-261a20f8225a.png',0,0,null,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (589,48,'�������꽺','��ŭ�ϰ� �ÿ��� �������ֽ�',2200,'16020728545016ba26557-4bf2-4ea6-85c2-2bd5ffbc889a.png',0,1,null,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (599,7,'�߲���Ƣ��ڽ�','Ư������ �ø����� ����! �ڽ��� �����! ����: �߲���Ƣ��+���ҽ� 2��',8300,'160208405705051c87d2b-745e-4af3-8f21-69a0b17de8f8.png',0,0,null,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (594,48,'�Ƹ޸�ī��(M)','KFC���� ��ǰ�� ���θ� ����� ��� ���� �پ �Ƹ޸�ī��',2100,'1602073723073df44d2b7-8bb6-4d21-a767-2dc6461eaf63.png',0,1,null,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (601,27,'��Ż����Ÿ������','�ε巯�� �İ��� �����ܰ� ���� ǳ���� ��ũ�� �ҽ����� ������ ���� ǳ������ ���� �İ����� ���׷��̵� �� ��Ż����Ÿ������!',6600,'1602085963019b5041f0f-03bf-4d6e-96c4-75f8c2f54fab.png',0,0,null,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (593,48,'������','��� ǳ���� ������ ġ�� ���忡 ���� �ǸŵǸ�, 19�� �̻� �ź��� Ȯ�� �� �Ǹŵ˴ϴ�.',3000,'160207358154046cbf4aa-4438-4c28-9571-fefa05ba35f8.png',0,1,null,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (595,48,'���̽��Ƹ޸�ī��(M)','KFC���� ��ǰ�� ���θ� ����� ��� ���� �پ �Ƹ޸�ī��',2100,'1602073805079a2bc7e5b-972f-453d-8f37-6604219623bb.png',0,1,null,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (606,7,'���� 2����','�����ϰ� ����Ͽ� ġŲ ������ �ٻ��ϰ� Ƣ�ܳ� KFC ��ǥ ġŲ����',3200,'1602129723554b2cb2af9-9edf-42a3-9503-d5796034a724.png',4,0,null,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (596,48,'���̽��Ƹ޸�ī��(L)','KFC���� ��ǰ�� ���θ� ����� ��� ���� �پ �Ƹ޸�ī��',2600,'160207382686804198d55-5f56-437d-94cb-970ade878a4c.png',0,1,null,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (597,48,'��������Ʈ(M)','�ӱ��� �ÿ������� û������ ��������Ʈ!',2000,'1602073994327e541f35e-d69d-41d6-91ae-3f57b1918f85.png',0,1,null,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (598,1,'[���]�߲���Ƣ��+�ٴ�3','KFC Ư������ �ø����� ����, �߲���Ƣ��!
ġŲ �Ƚɻ�� ����� �ٴ�! 
�Ѵ� ������ �ʹٸ�? 3,500���̶�� ���� �������� ��ܺ���!',3500,'1602074407578c462903d-8770-41ed-a2e8-ef347e7249b3.png',1,0,null,0,'-','-');
Insert into KIOSK.MENU (MENUNO,CATEGORYNO,MENUNAME,MENUDESC,MENUPRICE,MENUIMG,ISSPECIAL,ISCHANGE,UNITNO,DISCOUNT,EDITIMG,THUMBNAILIMG) values (607,7,'���� 2����','�����ϰ� ����Ͽ� ġŲ ������ �ٻ��ϰ� Ƣ�ܳ� KFC ��ǥ ġŲ ����',3200,'1602130552288bf83ba91-ab3f-4c6f-becf-809365bada94.png',4,0,null,0,'-','-');
REM INSERTING into KIOSK.PROMOTIONMENU
SET DEFINE OFF;
Insert into KIOSK.PROMOTIONMENU (MENUNO,PROMOTIONNO) values (584,212);
Insert into KIOSK.PROMOTIONMENU (MENUNO,PROMOTIONNO) values (584,203);
Insert into KIOSK.PROMOTIONMENU (MENUNO,PROMOTIONNO) values (584,163);
Insert into KIOSK.PROMOTIONMENU (MENUNO,PROMOTIONNO) values (598,588);
Insert into KIOSK.PROMOTIONMENU (MENUNO,PROMOTIONNO) values (598,590);
Insert into KIOSK.PROMOTIONMENU (MENUNO,PROMOTIONNO) values (584,583);
REM INSERTING into KIOSK.SETUNIT
SET DEFINE OFF;
Insert into KIOSK.SETUNIT (UNITNO,STORENO,UNITNAME) values (1,1,'��Ʈ');
Insert into KIOSK.SETUNIT (UNITNO,STORENO,UNITNAME) values (2,1,'�ڽ�');
Insert into KIOSK.SETUNIT (UNITNO,STORENO,UNITNAME) values (3,2,'��Ʈ');
Insert into KIOSK.SETUNIT (UNITNO,STORENO,UNITNAME) values (4,2,'�޺�');
Insert into KIOSK.SETUNIT (UNITNO,STORENO,UNITNAME) values (5,2,'����');
Insert into KIOSK.SETUNIT (UNITNO,STORENO,UNITNAME) values (78,1,'�޺�');
REM INSERTING into KIOSK.SPECIALMENU
SET DEFINE OFF;
REM INSERTING into KIOSK.STATISTICS
SET DEFINE OFF;
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (29,1,'�ֹ��� ����','�����',to_date('20/03/22','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (30,1,'�ֹ��� ����','�����',to_date('20/03/22','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (31,1,'clear','�����',to_date('20/03/22','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (32,1,'��Ʈ ���� ���','�����',to_date('20/03/22','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (33,1,'���̵� ����','����',to_date('20/03/22','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (34,1,'���̵� ����','����',to_date('20/04/22','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (35,1,'clear','����',to_date('20/04/22','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (36,1,'��� ����','����',to_date('20/04/22','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (37,1,'��õ �޴�','����',to_date('20/04/22','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (38,1,'clear','����',to_date('20/05/22','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (39,1,'���� ��� ����','����',to_date('20/05/22','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (40,1,'���� ���� Ȯ��','����',to_date('20/06/22','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (41,1,'����','����',to_date('20/06/22','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (42,1,'clear','����',to_date('20/06/22','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (43,2,'clear','�����',to_date('20/07/22','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (44,2,'clear','����',to_date('20/07/22','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (45,1,'clear','����',to_date('19/07/12','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (46,1,'����','����',to_date('20/09/22','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (47,1,'clear','����',to_date('20/09/22','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (27,1,'clear','�����',to_date('20/03/22','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (28,1,'clear','�����',to_date('20/03/22','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (48,1,'clear','����',to_date('20/09/22','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (49,1,'��� ����','����',to_date('20/09/22','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (50,1,'clear','����',to_date('20/09/22','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (51,1,'����','����',to_date('20/09/22','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (52,1,'�ֹ��� ����','����',to_date('20/09/23','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (53,1,'�ֹ��� ����','����',to_date('20/09/23','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (54,1,'�ֹ��� ����','����',to_date('20/09/23','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (55,1,'�ֹ��� ����','����',to_date('20/09/23','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (57,1,'clear','�����',to_date('20/09/23','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (58,1,'clear','�����',to_date('20/09/23','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (59,1,'clear','����',to_date('20/09/23','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (60,1,'clear','����',to_date('20/09/23','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (61,1,'clear','����',to_date('20/09/23','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (62,1,'clear','����',to_date('20/09/23','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (63,1,'���̵� ����','����',to_date('20/09/23','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (64,1,'clear','����',to_date('20/09/23','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (65,1,'clear','�����',to_date('20/09/23','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (66,1,'��� ����','����',to_date('20/09/23','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (67,1,'clear','����',to_date('20/09/24','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (68,1,'clear','�����',to_date('20/09/24','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (69,1,'�ֹ��� ����','����',to_date('20/09/24','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (70,1,'clear','����',to_date('20/09/24','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (71,1,'����','����',to_date('20/09/24','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (72,1,'clear','����',to_date('20/09/24','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (73,1,'����','����',to_date('20/09/24','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (74,1,'clear','�����',to_date('20/09/24','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (75,1,'�ֹ��� ����','����',to_date('20/09/24','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (76,1,'�ֹ��� ����','����',to_date('20/09/24','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (77,1,'�ֹ��� ����','����',to_date('20/09/25','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (78,1,'�ֹ��� ����','����',to_date('20/09/25','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (79,1,'clear','�����',to_date('20/09/25','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (80,1,'clear','�����',to_date('20/09/25','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (81,1,'clear','����',to_date('20/09/25','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (82,1,'clear','����',to_date('20/09/25','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (83,1,'clear','�����',to_date('20/09/25','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (84,1,'clear','����',to_date('20/09/25','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (85,1,'����','����',to_date('20/09/25','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (86,1,'�ֹ��� ����','����',to_date('20/09/25','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (87,1,'��� ����','����',to_date('20/09/25','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (88,1,'�ֹ��� ����','����',to_date('20/09/25','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (89,1,'��� ����','����',to_date('20/09/25','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (90,1,'�ֹ��� ����','����',to_date('20/09/25','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (95,1,'�ֹ��� ����','����',to_date('20/09/25','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (96,1,'�ֹ��� ����','����',to_date('20/09/25','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (97,1,'��Ʈ ����','����',to_date('20/09/25','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (98,1,'�ֹ��� ����',null,to_date('20/09/25','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (99,1,'��Ʈ ����',null,to_date('20/09/25','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (100,1,'clear',null,to_date('20/09/25','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (101,1,'�ֹ��� ����',null,to_date('20/09/25','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (106,2,'�ֹ��� ����',null,to_date('20/09/25','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (103,1,'clear','�����',to_date('20/09/25','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (105,2,'��',null,to_date('20/09/25','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (107,2,'�ֹ��� ����',null,to_date('20/09/25','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (108,2,'��ǰ/��Ʈ/�޺� ����',null,to_date('20/09/25','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (109,2,'���̵� ����',null,to_date('20/09/25','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (110,2,'��� ������ ����',null,to_date('20/09/25','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (111,2,'��� ������ ����',null,to_date('20/09/25','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (112,2,'��� ������ ����',null,to_date('20/09/25','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (113,2,'��� ������ ����',null,to_date('20/09/25','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (114,2,'clear','����',to_date('20/09/25','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (115,2,'clear','�����',to_date('20/09/25','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (116,1,'�ֹ��� ����','����',to_date('20/09/28','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (117,1,'�ֹ��� ����','����',to_date('20/09/28','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (118,1,'�ֹ��� ����',null,to_date('20/09/28','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (119,1,'�ֹ��� ����',null,to_date('20/09/28','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (120,1,'�ֹ��� ����',null,to_date('20/09/28','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (121,1,'�ֹ��� ����',null,to_date('20/09/28','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (122,1,'�ֹ��� ����',null,to_date('20/09/28','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (123,1,'clear',null,to_date('20/09/28','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (124,1,'clear','�����',to_date('20/09/28','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (125,2,'����',null,to_date('20/09/28','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (126,1,'�ֹ��� ����','����',to_date('20/09/28','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (127,1,'clear','����',to_date('20/09/28','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (128,1,'clear','����',to_date('20/09/28','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (129,1,'clear','�����',to_date('20/09/28','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (130,1,'����',null,to_date('20/09/28','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (131,1,'���̵� ����',null,to_date('20/09/28','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (132,1,'�ֹ��� ����',null,to_date('20/09/28','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (133,1,'�ֹ��� ����',null,to_date('20/09/28','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (134,1,'�ֹ��� ����',null,to_date('20/09/28','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (135,1,'�ֹ��� ����',null,to_date('20/09/28','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (136,1,'��Ʈ ����',null,to_date('20/09/28','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (137,1,'�ֹ��� ����',null,to_date('20/09/28','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (138,1,'��Ʈ ����',null,to_date('20/09/28','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (139,1,'��Ʈ ����',null,to_date('20/09/28','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (140,1,'�ֹ��� ����',null,to_date('20/09/28','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (141,1,'�ֹ��� ����',null,to_date('20/09/28','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (142,1,'�ֹ��� ����',null,to_date('20/09/28','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (143,1,'�ֹ��� ����',null,to_date('20/09/28','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (144,1,'�ֹ��� ����',null,to_date('20/09/28','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (145,1,'�ֹ��� ����',null,to_date('20/09/28','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (146,1,'�ֹ��� ����',null,to_date('20/09/28','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (147,1,'�ֹ��� ����',null,to_date('20/09/28','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (148,1,'�ֹ��� ����',null,to_date('20/09/28','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (149,1,'�ֹ��� ����',null,to_date('20/09/28','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (150,1,'�ֹ��� ����',null,to_date('20/09/28','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (151,1,'�ֹ��� ����',null,to_date('20/09/28','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (152,1,'��Ʈ ����',null,to_date('20/09/28','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (153,1,'�ֹ��� ����',null,to_date('20/09/28','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (154,1,'�ֹ��� ����',null,to_date('20/09/28','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (155,1,'�ֹ��� ����',null,to_date('20/09/28','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (156,1,'�ֹ��� ����',null,to_date('20/09/28','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (157,1,'�ֹ��� ����',null,to_date('20/09/28','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (158,1,'��� ����',null,to_date('20/09/28','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (159,1,'�ֹ��� ����',null,to_date('20/09/28','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (160,1,'�ֹ��� ����',null,to_date('20/09/28','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (161,1,'����',null,to_date('20/09/28','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (162,1,'�ֹ��� ����',null,to_date('20/09/28','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (163,1,'�ֹ��� ����',null,to_date('20/09/28','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (164,1,'�ֹ��� ����',null,to_date('20/09/28','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (165,1,'���̵� ����',null,to_date('20/09/28','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (166,1,'�ֹ� ���',null,to_date('20/09/28','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (167,1,'�ֹ��� ����',null,to_date('20/09/28','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (168,1,'��Ʈ ����',null,to_date('20/09/28','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (169,1,'���̵� ����',null,to_date('20/09/28','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (170,1,'���̵� ����',null,to_date('20/09/28','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (171,1,'clear',null,to_date('20/09/28','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (172,1,'����',null,to_date('20/09/28','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (173,1,'��� ����',null,to_date('20/09/28','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (174,1,'��� ����',null,to_date('20/09/28','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (175,1,'�ֹ��� ����',null,to_date('20/09/28','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (176,1,'�ֹ��� ����',null,to_date('20/09/28','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (177,1,'�ֹ��� ����',null,to_date('20/09/28','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (178,1,'�ֹ��� ����',null,to_date('20/09/28','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (179,1,'�ֹ��� ����',null,to_date('20/09/28','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (180,1,'�ֹ��� ����',null,to_date('20/09/28','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (181,1,'�ֹ��� ����',null,to_date('20/09/28','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (182,1,'�ֹ��� ����',null,to_date('20/09/28','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (183,1,'�ֹ��� ����',null,to_date('20/09/28','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (184,1,'��Ʈ ����',null,to_date('20/09/28','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (185,1,'���̵� ����',null,to_date('20/09/28','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (186,1,'��Ʈ ����',null,to_date('20/09/28','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (187,1,'���̵� ����',null,to_date('20/09/28','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (188,1,'��Ʈ ����',null,to_date('20/09/28','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (189,1,'�ֹ��� ����',null,to_date('20/09/29','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (190,2,'����',null,to_date('20/09/29','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (191,1,'�ֹ��� ����',null,to_date('20/09/29','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (192,1,'�ֹ��� ����',null,to_date('20/09/29','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (193,2,'����',null,to_date('20/09/29','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (194,2,'�ֹ��� ����',null,to_date('20/09/29','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (195,2,'�ֹ��� ����',null,to_date('20/09/29','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (196,1,'�ֹ� ���',null,to_date('20/09/29','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (197,1,'��õ �޴�',null,to_date('20/09/29','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (198,1,'��� ����',null,to_date('20/09/29','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (199,1,'clear',null,to_date('20/09/29','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (200,1,'clear','����',to_date('20/09/29','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (201,1,'clear',null,to_date('20/09/29','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (202,1,'clear','�����',to_date('20/09/29','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (203,1,'clear',null,to_date('20/09/29','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (204,1,'clear','�����',to_date('20/09/29','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (205,1,'�ֹ��� ����',null,to_date('20/09/29','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (206,1,'�ֹ��� ����',null,to_date('20/09/29','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (207,1,'clear',null,to_date('20/09/29','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (208,1,'clear','�����',to_date('20/09/29','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (209,1,'���� ��� ����',null,to_date('20/09/29','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (210,1,'���� ��� ����',null,to_date('20/09/29','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (211,1,'clear','����',to_date('20/09/29','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (212,1,'clear',null,to_date('20/09/29','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (213,1,'clear',null,to_date('20/09/29','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (214,1,'clear','����',to_date('20/09/29','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (215,1,'�ֹ��� ����',null,to_date('20/09/29','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (216,1,'clear',null,to_date('20/09/29','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (217,1,'clear','�����',to_date('20/09/29','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (218,1,'���� ��� ����',null,to_date('20/09/29','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (219,1,'clear',null,to_date('20/09/29','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (220,1,'clear','����',to_date('20/09/29','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (221,1,'���� ��� ����',null,to_date('20/09/29','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (222,1,'���� ��� ����',null,to_date('20/09/29','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (223,1,'���� ��� ����',null,to_date('20/09/29','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (224,1,'���� ��� ����',null,to_date('20/09/29','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (225,1,'���� ���� Ȯ��',null,to_date('20/09/29','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (226,1,'���� ��� ����',null,to_date('20/09/29','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (227,1,'���� ���� Ȯ��',null,to_date('20/09/29','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (228,1,'�ֹ��� ����',null,to_date('20/09/29','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (229,1,'���� ��� ����',null,to_date('20/09/29','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (230,1,'���� ��� ����',null,to_date('20/09/29','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (231,1,'���� ��� ����',null,to_date('20/09/29','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (232,1,'clear',null,to_date('20/09/29','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (233,1,'clear','����',to_date('20/09/29','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (234,1,'�ֹ��� ����',null,to_date('20/09/29','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (235,1,'clear',null,to_date('20/09/29','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (236,1,'����',null,to_date('20/09/29','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (237,1,'���� ���� Ȯ��',null,to_date('20/09/29','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (238,1,'���� ��� ����',null,to_date('20/09/29','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (239,1,'���� ���� Ȯ��',null,to_date('20/09/29','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (240,1,'���� ���� Ȯ��',null,to_date('20/09/29','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (241,1,'���� ���� Ȯ��',null,to_date('20/09/29','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (242,1,'���� ��� ����',null,to_date('20/09/29','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (243,1,'���� ��� ����',null,to_date('20/09/29','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (244,1,'�ֹ��� ����',null,to_date('20/09/29','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (245,1,'�ֹ��� ����',null,to_date('20/09/29','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (246,1,'���� ���� Ȯ��',null,to_date('20/09/29','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (247,1,'���� ���� Ȯ��',null,to_date('20/09/29','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (248,1,'�ֹ��� ����',null,to_date('20/09/29','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (249,1,'clear',null,to_date('20/09/29','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (250,1,'clear','����',to_date('20/09/29','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (251,2,'����',null,to_date('20/09/29','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (252,1,'�ֹ��� ����',null,to_date('20/09/29','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (253,1,'clear',null,to_date('20/09/29','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (254,1,'clear','����',to_date('20/09/29','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (255,2,'��� ������ ����',null,to_date('20/09/29','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (256,2,'�ֹ��� ����',null,to_date('20/09/29','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (257,2,'�������ܼ���',null,to_date('20/09/29','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (258,2,'����',null,to_date('20/09/29','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (259,1,'clear',null,to_date('20/09/29','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (260,1,'clear','����',to_date('20/09/29','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (261,1,'�ֹ��� ����',null,to_date('20/09/29','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (262,1,'�ֹ��� ����',null,to_date('20/09/29','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (263,1,'�ֹ��� ����',null,to_date('20/09/29','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (264,1,'�ֹ��� ����',null,to_date('20/09/29','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (265,1,'clear',null,to_date('20/09/29','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (266,1,'clear','�����',to_date('20/09/29','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (267,1,'clear',null,to_date('20/09/29','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (268,1,'clear','�����',to_date('20/09/29','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (269,1,'�ֹ��� ����',null,to_date('20/09/29','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (270,1,'�ֹ��� ����',null,to_date('20/09/29','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (271,1,'�ֹ��� ����',null,to_date('20/09/29','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (272,1,'�ֹ� ���',null,to_date('20/09/29','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (273,1,'�ֹ� ���',null,to_date('20/09/29','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (289,1,'�ֹ��� ����',null,to_date('20/10/01','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (290,1,'���� ��� ����',null,to_date('20/10/01','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (291,1,'�ֹ��� ����',null,to_date('20/10/01','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (292,1,'��� ����',null,to_date('20/10/01','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (293,1,'�ֹ��� ����',null,to_date('20/10/01','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (311,1,'�ֹ��� ����',null,to_date('20/10/02','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (312,1,'�ֹ��� ����',null,to_date('20/10/02','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (313,2,'����',null,to_date('20/10/02','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (314,2,'�ֹ��� ����',null,to_date('20/10/02','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (315,2,'����',null,to_date('20/10/02','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (316,1,'�ֹ��� ����',null,to_date('20/10/02','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (317,1,'��� ����',null,to_date('20/10/02','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (318,1,'�ֹ��� ����',null,to_date('20/10/02','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (319,1,'�ֹ��� ����',null,to_date('20/10/02','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (320,1,'�ֹ��� ����',null,to_date('20/10/02','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (321,1,'�ֹ��� ����',null,to_date('20/10/02','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (322,1,'��õ �޴�',null,to_date('20/10/02','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (323,1,'�ֹ��� ����',null,to_date('20/10/02','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (324,1,'�ֹ��� ����',null,to_date('20/10/02','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (325,1,'����',null,to_date('20/10/02','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (326,1,'����',null,to_date('20/10/02','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (327,1,'���� ���� Ȯ��',null,to_date('20/10/02','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (328,1,'����',null,to_date('20/10/02','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (329,1,'����',null,to_date('20/10/02','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (330,1,'�ֹ� ���',null,to_date('20/10/02','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (331,1,'����',null,to_date('20/10/02','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (332,1,'����',null,to_date('20/10/02','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (333,1,'���� ��� ����',null,to_date('20/10/02','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (334,1,'����',null,to_date('20/10/02','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (335,1,'���� ���� Ȯ��',null,to_date('20/10/02','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (336,1,'�ֹ��� ����',null,to_date('20/10/02','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (337,1,'�ֹ� ���',null,to_date('20/10/03','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (338,1,'��õ �޴�',null,to_date('20/10/03','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (339,1,'��õ �޴�',null,to_date('20/10/03','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (340,1,'�ֹ��� ����',null,to_date('20/10/03','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (341,1,'�ֹ��� ����',null,to_date('20/10/03','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (342,1,'�ֹ��� ����',null,to_date('20/10/03','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (343,1,'�ֹ��� ����',null,to_date('20/10/03','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (344,1,'�ֹ��� ����',null,to_date('20/10/03','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (345,1,'�ֹ��� ����',null,to_date('20/10/03','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (346,1,'�ֹ��� ����',null,to_date('20/10/03','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (347,1,'�ֹ��� ����',null,to_date('20/10/03','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (348,1,'�ֹ��� ����',null,to_date('20/10/03','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (349,1,'�ֹ��� ����',null,to_date('20/10/03','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (350,1,'�ֹ��� ����',null,to_date('20/10/03','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (351,1,'��õ �޴�',null,to_date('20/10/04','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (352,1,'��� ����',null,to_date('20/10/04','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (353,1,'��õ �޴�',null,to_date('20/10/04','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (354,1,'��õ �޴�',null,to_date('20/10/04','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (355,1,'�ֹ��� ����',null,to_date('20/10/04','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (356,1,'�ֹ��� ����',null,to_date('20/10/04','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (357,1,'�ֹ��� ����',null,to_date('20/10/04','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (358,1,'�ֹ��� ����',null,to_date('20/10/04','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (359,1,'�ֹ��� ����',null,to_date('20/10/04','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (360,1,'�ֹ��� ����',null,to_date('20/10/04','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (361,1,'��� ����',null,to_date('20/10/04','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (362,1,'�ֹ��� ����',null,to_date('20/10/04','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (363,1,'�ֹ��� ����',null,to_date('20/10/04','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (364,1,'�ֹ��� ����',null,to_date('20/10/04','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (365,1,'�ֹ��� ����',null,to_date('20/10/04','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (366,1,'�ֹ��� ����',null,to_date('20/10/04','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (367,1,'�ֹ��� ����',null,to_date('20/10/04','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (368,1,'�ֹ��� ����',null,to_date('20/10/04','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (369,1,'�ֹ��� ����',null,to_date('20/10/04','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (370,1,'�ֹ��� ����',null,to_date('20/10/04','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (371,1,'�ֹ��� ����',null,to_date('20/10/04','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (372,1,'�ֹ��� ����',null,to_date('20/10/04','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (373,1,'�ֹ��� ����',null,to_date('20/10/04','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (374,1,'��� ����',null,to_date('20/10/04','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (375,1,'�ֹ��� ����',null,to_date('20/10/04','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (376,1,'�ֹ��� ����',null,to_date('20/10/04','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (377,1,'�ֹ��� ����',null,to_date('20/10/04','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (378,1,'�ֹ��� ����',null,to_date('20/10/04','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (379,1,'�ֹ��� ����',null,to_date('20/10/04','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (380,1,'�ֹ��� ����',null,to_date('20/10/04','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (381,1,'�ֹ��� ����',null,to_date('20/10/04','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (382,1,'�ֹ��� ����',null,to_date('20/10/04','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (383,1,'�ֹ��� ����',null,to_date('20/10/04','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (384,1,'�ֹ��� ����',null,to_date('20/10/04','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (385,1,'�ֹ��� ����',null,to_date('20/10/04','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (386,1,'�ֹ��� ����',null,to_date('20/10/04','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (387,1,'�ֹ��� ����',null,to_date('20/10/04','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (388,1,'�ֹ��� ����',null,to_date('20/10/04','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (389,1,'�ֹ��� ����',null,to_date('20/10/04','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (390,1,'��Ʈ ����',null,to_date('20/10/04','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (391,1,'�ֹ��� ����',null,to_date('20/10/04','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (392,1,'�ֹ��� ����',null,to_date('20/10/04','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (393,1,'�ֹ��� ����',null,to_date('20/10/04','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (394,1,'�ֹ��� ����',null,to_date('20/10/04','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (395,1,'�ֹ��� ����',null,to_date('20/10/04','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (396,1,'�ֹ��� ����',null,to_date('20/10/04','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (397,1,'�ֹ��� ����',null,to_date('20/10/04','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (398,1,'�ֹ��� ����',null,to_date('20/10/04','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (399,1,'�ֹ��� ����',null,to_date('20/10/04','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (400,1,'�ֹ��� ����',null,to_date('20/10/04','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (401,1,'�ֹ��� ����',null,to_date('20/10/04','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (402,1,'�ֹ��� ����',null,to_date('20/10/04','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (403,1,'�ֹ��� ����',null,to_date('20/10/04','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (404,1,'�ֹ��� ����',null,to_date('20/10/04','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (405,1,'�ֹ��� ����',null,to_date('20/10/04','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (406,1,'�ֹ��� ����',null,to_date('20/10/04','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (407,1,'�ֹ��� ����',null,to_date('20/10/04','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (408,1,'�ֹ��� ����',null,to_date('20/10/04','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (409,1,'�ֹ��� ����',null,to_date('20/10/04','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (410,1,'�ֹ��� ����',null,to_date('20/10/04','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (411,1,'�ֹ��� ����',null,to_date('20/10/04','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (412,1,'�ֹ��� ����',null,to_date('20/10/04','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (413,1,'�ֹ��� ����',null,to_date('20/10/04','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (414,1,'�ֹ��� ����',null,to_date('20/10/04','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (415,1,'�ֹ��� ����',null,to_date('20/10/04','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (416,1,'�ֹ��� ����',null,to_date('20/10/04','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (417,1,'�ֹ��� ����',null,to_date('20/10/04','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (418,1,'�ֹ��� ����',null,to_date('20/10/04','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (419,1,'�ֹ��� ����',null,to_date('20/10/04','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (420,1,'�ֹ��� ����',null,to_date('20/10/04','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (421,1,'�ֹ��� ����',null,to_date('20/10/04','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (422,1,'�ֹ��� ����',null,to_date('20/10/05','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (423,1,'�ֹ��� ����',null,to_date('20/10/05','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (424,2,'����',null,to_date('20/10/05','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (425,1,'�ֹ��� ����',null,to_date('20/10/05','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (426,1,'��Ʈ ����',null,to_date('20/10/05','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (427,1,'clear',null,to_date('20/10/05','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (428,1,'����',null,to_date('20/10/05','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (429,1,'�ֹ��� ����',null,to_date('20/10/05','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (430,1,'�ֹ��� ����',null,to_date('20/10/05','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (431,1,'��Ʈ ����',null,to_date('20/10/05','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (432,1,'�ֹ��� ����',null,to_date('20/10/05','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (433,1,'clear',null,to_date('20/10/05','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (434,1,'clear','����',to_date('20/10/05','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (435,2,'clear','�����',to_date('20/10/05','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (436,2,'��� ������ ����',null,to_date('20/10/05','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (437,2,'��� ������ ����',null,to_date('20/10/05','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (438,2,'�ֹ��� ����',null,to_date('20/10/05','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (439,2,'�������ܼ���',null,to_date('20/10/05','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (440,2,'����',null,to_date('20/10/05','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (441,2,'��� ������ ����',null,to_date('20/10/05','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (442,2,'�������ܼ���',null,to_date('20/10/05','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (443,2,'����',null,to_date('20/10/05','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (444,1,'�ֹ��� ����',null,to_date('20/10/05','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (445,1,'�ֹ��� ����',null,to_date('20/10/05','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (446,2,'����',null,to_date('20/10/05','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (447,1,'�ֹ��� ����',null,to_date('20/10/05','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (448,1,'���̵� ����',null,to_date('20/10/05','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (449,1,'���̵� ����',null,to_date('20/10/05','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (450,1,'��Ʈ ����',null,to_date('20/10/05','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (451,1,'���̵� ����',null,to_date('20/10/05','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (452,1,'clear',null,to_date('20/10/05','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (453,1,'�ֹ��� ����',null,to_date('20/10/05','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (454,1,'�ֹ��� ����',null,to_date('20/10/05','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (455,2,'�ֹ��� ����',null,to_date('20/10/05','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (456,1,'�ֹ��� ����',null,to_date('20/10/05','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (457,1,'clear',null,to_date('20/10/05','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (458,1,'clear','�����',to_date('20/10/05','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (459,1,'�ֹ��� ����',null,to_date('20/10/05','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (460,1,'��Ʈ ����',null,to_date('20/10/05','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (461,1,'�ֹ��� ����',null,to_date('20/10/05','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (462,1,'��Ʈ ����',null,to_date('20/10/05','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (463,1,'�ֹ��� ����',null,to_date('20/10/05','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (464,1,'��Ʈ ����',null,to_date('20/10/05','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (465,1,'���̵� ����',null,to_date('20/10/05','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (466,1,'���̵� ����',null,to_date('20/10/05','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (467,1,'���̵� ����',null,to_date('20/10/05','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (468,1,'���̵� ����',null,to_date('20/10/05','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (469,1,'��õ �޴�',null,to_date('20/10/05','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (470,1,'��õ �޴�',null,to_date('20/10/05','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (471,1,'����',null,to_date('20/10/05','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (472,1,'�ֹ� ���',null,to_date('20/10/05','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (473,1,'clear',null,to_date('20/10/05','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (474,1,'clear','�����',to_date('20/10/05','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (475,2,'�ֹ��� ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (476,2,'�ֹ��� ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (477,1,'�ֹ��� ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (478,2,'�ֹ��� ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (479,2,'�ֹ��� ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (480,2,'�ֹ��� ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (481,2,'�ֹ��� ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (482,2,'�ֹ��� ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (483,2,'�ֹ��� ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (484,2,'�ֹ��� ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (485,2,'�ֹ��� ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (486,2,'�ֹ��� ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (487,2,'�ֹ��� ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (488,2,'�ֹ��� ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (489,2,'�ֹ��� ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (490,2,'�ֹ��� ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (491,2,'�ֹ��� ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (492,2,'�ֹ��� ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (493,2,'�ֹ��� ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (494,2,'�ֹ��� ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (495,2,'�ֹ��� ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (496,2,'�ֹ��� ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (497,2,'�ֹ��� ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (498,2,'�ֹ��� ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (499,2,'�ֹ��� ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (500,2,'����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (501,1,'�ֹ��� ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (502,2,'�ֹ��� ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (503,2,'�ֹ��� ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (504,2,'�ֹ��� ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (505,2,'�ֹ��� ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (506,2,'�ֹ��� ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (507,2,'�ֹ��� ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (508,2,'�ֹ��� ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (509,2,'�ֹ��� ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (510,2,'�ֹ��� ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (511,2,'�ֹ��� ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (512,2,'�ֹ��� ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (513,2,'�ֹ��� ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (514,2,'�ֹ��� ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (515,2,'�ֹ��� ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (516,2,'�ֹ��� ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (517,2,'�ֹ��� ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (518,2,'�ֹ��� ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (519,2,'�ֹ��� ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (520,2,'�ֹ��� ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (521,2,'�ֹ��� ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (522,2,'�ֹ��� ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (523,2,'�ֹ��� ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (524,2,'�ֹ��� ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (525,2,'�ֹ��� ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (526,2,'�ֹ��� ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (527,2,'�ֹ��� ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (528,2,'�ֹ��� ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (529,2,'�ֹ��� ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (530,2,'�ֹ��� ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (531,2,'�ֹ��� ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (532,2,'�ֹ��� ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (533,2,'�ֹ��� ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (534,2,'�ֹ��� ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (535,2,'�ֹ��� ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (536,2,'�ֹ��� ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (537,2,'�ֹ��� ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (538,2,'�ֹ��� ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (539,2,'�ֹ��� ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (540,2,'clear','����',to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (541,2,'clear','�����',to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (542,2,'��� ������ ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (543,2,'��� ������ ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (544,2,'�ֹ��� ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (545,2,'�ֹ��� ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (546,2,'�ֹ��� ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (547,2,'�������ܼ���',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (548,2,'�������ܼ���',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (549,2,'�������ܼ���',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (550,2,'�ֹ��� ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (551,2,'�ֹ��� ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (552,2,'��� ������ ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (553,2,'����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (554,2,'�������ܼ���',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (555,2,'����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (556,2,'�ֹ��� ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (557,2,'��� ������ ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (558,2,'��� ������ ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (559,2,'���̵� ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (560,2,'�ֹ��� ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (561,2,'��ǰ/��Ʈ/�޺� ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (562,2,'��ǰ/��Ʈ/�޺� ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (563,1,'�ֹ��� ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (564,1,'�ֹ��� ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (565,2,'��ǰ/��Ʈ/�޺� ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (566,1,'�ֹ��� ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (567,2,'�ֹ��� ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (568,2,'�ֹ��� ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (569,2,'��� ������ ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (570,2,'��� ������ ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (571,2,'��� ������ ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (572,2,'�ֹ��� ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (573,2,'�ֹ��� ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (574,2,'���̵� ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (575,2,'��ǰ/��Ʈ/�޺� ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (576,2,'��ǰ/��Ʈ/�޺� ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (577,2,'���̵� ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (578,2,'���̵� ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (579,2,'��ǰ/��Ʈ/�޺� ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (580,2,'���̵� ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (581,2,'���̵� ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (582,2,'�ֹ��� ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (583,2,'���̵� ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (584,2,'���̵� ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (585,2,'���̵� ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (586,2,'�ֹ��� ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (587,2,'���̵� ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (588,2,'��� ������ ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (589,2,'clear','����',to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (590,1,'�ֹ��� ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (591,2,'�������ܼ���',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (592,1,'�ֹ��� ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (593,2,'����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (594,2,'����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (595,2,'�ֹ��� ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (596,2,'����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (597,1,'clear',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (598,1,'clear','����',to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (599,2,'�ֹ��� ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (600,2,'�ֹ��� ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (601,2,'�ֹ��� ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (602,2,'�ֹ��� ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (603,2,'�ֹ��� ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (604,2,'��� ������ ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (605,2,'��� ������ ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (606,2,'�ֹ��� ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (607,2,'��� ������ ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (608,2,'��� ������ ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (609,2,'�ֹ��� ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (610,2,'��� ������ ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (611,2,'��� ������ ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (612,2,'��� ������ ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (613,2,'��� ������ ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (614,2,'��� ������ ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (615,2,'��� ������ ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (616,2,'��� ������ ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (617,2,'��� ������ ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (618,2,'��� ������ ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (619,2,'��� ������ ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (620,2,'��� ������ ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (621,2,'��� ������ ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (622,2,'�ֹ��� ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (623,2,'�������ܼ���',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (624,2,'����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (625,2,'��� ������ ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (626,2,'��� ������ ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (627,2,'��� ������ ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (628,2,'��� ������ ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (629,2,'��� ������ ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (630,2,'��� ������ ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (631,2,'��� ������ ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (632,2,'��� ������ ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (633,2,'��� ������ ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (634,2,'��� ������ ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (635,2,'��� ������ ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (636,2,'��� ������ ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (637,2,'��� ������ ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (638,2,'��� ������ ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (639,2,'��� ������ ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (640,2,'��� ������ ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (641,2,'��� ������ ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (642,2,'��� ������ ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (643,2,'��� ������ ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (644,2,'��� ������ ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (645,2,'��� ������ ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (646,2,'��� ������ ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (647,2,'��� ������ ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (648,2,'��� ������ ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (649,2,'��� ������ ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (650,2,'��� ������ ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (651,2,'��� ������ ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (652,2,'��� ������ ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (653,2,'��� ������ ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (654,2,'�ֹ��� ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (655,1,'�ֹ��� ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (656,1,'�ֹ��� ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (657,1,'���̵� ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (658,2,'�ֹ��� ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (659,1,'���̵� ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (660,1,'���̵� ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (661,1,'�ֹ��� ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (662,2,'�ֹ��� ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (663,2,'���̵� ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (664,1,'�ֹ��� ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (665,2,'�ֹ��� ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (666,2,'�ֹ��� ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (667,2,'�������ܼ���',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (668,2,'����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (669,2,'�ֹ��� ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (670,2,'�������ܼ���',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (671,2,'��� ������ ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (672,2,'��� ������ ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (673,2,'�ֹ��� ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (674,2,'�ֹ��� ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (675,2,'�ֹ��� ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (676,2,'�ֹ��� ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (677,2,'�ֹ��� ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (678,2,'�ֹ��� ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (679,2,'�������ܼ���',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (680,2,'�ֹ��� ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (681,2,'�ֹ��� ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (682,2,'�ֹ��� ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (683,2,'�ֹ��� ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (684,2,'��� ������ ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (685,2,'��� ������ ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (686,2,'���̵� ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (687,2,'�ֹ��� ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (688,2,'��� ������ ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (689,2,'��� ������ ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (690,2,'���̵� ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (691,2,'��� ������ ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (692,2,'��� ������ ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (693,2,'��� ������ ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (694,2,'��� ������ ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (695,2,'��� ������ ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (696,2,'��� ������ ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (697,2,'��� ������ ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (698,2,'��� ������ ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (699,2,'��� ������ ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (700,2,'��� ������ ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (701,2,'�ֹ��� ����',null,to_date('20/10/06','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (702,2,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (703,2,'��� ������ ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (704,2,'����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (705,1,'clear',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (706,1,'clear','����',to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (707,1,'clear',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (708,1,'clear','����',to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (709,1,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (710,2,'���̵� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (711,2,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (712,2,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (713,2,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (714,2,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (715,1,'��Ʈ ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (716,2,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (717,2,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (718,2,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (719,2,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (720,2,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (721,2,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (722,2,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (723,1,'���̵� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (724,2,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (725,2,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (726,2,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (727,2,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (728,2,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (729,2,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (730,2,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (731,2,'���̵� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (732,2,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (733,2,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (734,2,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (735,2,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (736,2,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (737,2,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (738,2,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (739,2,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (740,2,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (741,2,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (742,2,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (743,2,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (744,2,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (745,2,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (746,2,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (747,2,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (748,2,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (749,2,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (750,2,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (751,2,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (752,2,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (753,2,'��ǰ/��Ʈ/�޺� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (754,2,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (755,2,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (756,2,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (757,2,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (758,2,'��� ������ ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (759,2,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (760,2,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (761,2,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (762,2,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (763,2,'���̵� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (764,2,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (765,2,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (766,2,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (767,2,'��� ������ ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (768,2,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (769,1,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (770,2,'���̵� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (771,2,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (772,2,'��� ������ ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (773,2,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (774,2,'��� ������ ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (775,2,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (776,2,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (777,2,'��� ������ ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (778,2,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (779,2,'��� ������ ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (780,2,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (781,2,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (782,2,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (783,2,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (784,2,'��� ������ ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (785,2,'��� ������ ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (786,2,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (787,2,'��� ������ ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (788,2,'��� ������ ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (789,2,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (790,1,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (791,2,'��� ������ ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (792,1,'��õ �޴�',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (793,2,'��� ������ ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (794,2,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (795,1,'clear',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (796,2,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (797,2,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (798,2,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (799,2,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (800,2,'���̵� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (801,2,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (802,2,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (803,2,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (804,2,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (805,2,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (806,2,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (807,1,'����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (808,1,'���� ���� Ȯ��',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (809,2,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (810,2,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (811,2,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (812,1,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (813,2,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (814,1,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (815,1,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (816,2,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (817,2,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (818,2,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (819,2,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (820,2,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (821,2,'��� ������ ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (822,2,'��� ������ ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (823,2,'��� ������ ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (824,1,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (825,1,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (826,1,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (827,2,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (828,2,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (829,1,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (830,2,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (831,2,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (832,2,'��� ������ ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (833,2,'��� ������ ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (834,2,'��� ������ ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (835,2,'��� ������ ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (836,2,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (837,2,'��� ������ ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (838,2,'��� ������ ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (839,2,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (840,2,'��� ������ ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (841,2,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (842,2,'��ǰ/��Ʈ/�޺� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (843,2,'��� ������ ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (844,2,'��� ������ ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (845,2,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (846,2,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (847,2,'��� ������ ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (848,2,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (849,2,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (850,2,'��� ������ ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (851,2,'��� ������ ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (852,2,'��� ������ ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (853,2,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (854,2,'��� ������ ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (855,2,'��� ������ ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (856,2,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (857,2,'��� ������ ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (858,2,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (859,2,'��� ������ ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (860,2,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (861,2,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (862,2,'��� ������ ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (863,2,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (864,2,'��� ������ ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (865,1,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (866,2,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (867,1,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (868,2,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (869,2,'��� ������ ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (870,2,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (871,2,'��� ������ ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (872,2,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (873,2,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (874,2,'��� ������ ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (875,2,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (876,2,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (877,2,'��� ������ ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (878,2,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (879,2,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (880,2,'��� ������ ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (881,2,'��� ������ ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (882,2,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (883,2,'��� ������ ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (884,2,'��� ������ ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (885,2,'��� ������ ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (886,2,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (887,2,'��� ������ ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (888,2,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (889,2,'��� ������ ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (890,2,'��� ������ ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (891,2,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (892,2,'��ǰ/��Ʈ/�޺� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (893,2,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (894,2,'��� ������ ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (895,2,'��� ������ ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (896,2,'��� ������ ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (897,1,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (898,1,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (899,2,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (900,2,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (901,2,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (902,2,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (903,2,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (904,2,'��� ������ ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (905,2,'��� ������ ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (906,1,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (907,2,'��� ������ ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (908,1,'���̵� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (909,1,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (910,1,'���̵� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (911,1,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (912,1,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (913,1,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (914,1,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (915,1,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (916,1,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (917,1,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (918,1,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (919,1,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (920,2,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (921,2,'��� ������ ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (922,2,'��� ������ ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (923,1,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (924,2,'����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (925,1,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (926,1,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (927,1,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (928,1,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (929,1,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (930,1,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (931,1,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (932,1,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (933,1,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (934,1,'��õ �޴�',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (935,1,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (936,1,'��õ �޴�',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (937,1,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (938,1,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (939,1,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (940,1,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (941,1,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (942,1,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (943,1,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (944,1,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (945,1,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (946,1,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (947,1,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (948,1,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (949,1,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (950,1,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (951,1,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (952,1,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (953,1,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (954,1,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (955,1,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (956,1,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (957,1,'���̵� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (958,1,'���̵� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (959,1,'���̵� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (960,1,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (961,1,'�ֹ��� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (962,1,'���̵� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (963,1,'���̵� ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (964,1,'clear',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (965,1,'clear','����',to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (966,1,'��Ʈ ����',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (967,1,'clear',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (968,1,'clear','����',to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (969,1,'clear',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (970,1,'clear','�����',to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (971,1,'clear',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (972,1,'clear','�����',to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (973,1,'clear',null,to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (974,1,'clear','�����',to_date('20/10/07','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (975,1,'�ֹ��� ����',null,to_date('20/10/08','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (976,1,'clear',null,to_date('20/10/08','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (977,1,'clear','�����',to_date('20/10/08','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (978,1,'�ֹ��� ����',null,to_date('20/10/08','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (979,1,'��Ʈ ����',null,to_date('20/10/08','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (980,1,'�ֹ��� ����',null,to_date('20/10/08','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (981,1,'�ֹ��� ����',null,to_date('20/10/08','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (982,1,'�ֹ��� ����',null,to_date('20/10/08','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (983,1,'clear',null,to_date('20/10/08','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (984,1,'clear','�����',to_date('20/10/08','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (985,1,'���̵� ����',null,to_date('20/10/08','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (986,1,'�ֹ��� ����',null,to_date('20/10/08','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (987,1,'��õ �޴�',null,to_date('20/10/08','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (988,1,'�ֹ��� ����',null,to_date('20/10/08','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (989,1,'�ֹ��� ����',null,to_date('20/10/08','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (990,1,'�ֹ��� ����',null,to_date('20/10/08','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (991,1,'clear',null,to_date('20/10/08','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (992,1,'clear','����',to_date('20/10/08','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (993,1,'����',null,to_date('20/10/08','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (994,1,'���� ���� Ȯ��',null,to_date('20/10/08','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (995,1,'���� ��� ����',null,to_date('20/10/08','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (996,1,'�ֹ��� ����',null,to_date('20/10/08','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (997,1,'�ֹ��� ����',null,to_date('20/10/08','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (998,1,'�ֹ��� ����',null,to_date('20/10/08','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (999,1,'�ֹ��� ����',null,to_date('20/10/08','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (1000,2,'�ֹ��� ����',null,to_date('20/10/08','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (1001,2,'�ֹ��� ����',null,to_date('20/10/08','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (1002,2,'�ֹ��� ����',null,to_date('20/10/08','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (1003,1,'�ֹ��� ����',null,to_date('20/10/08','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (1004,2,'�ֹ��� ����',null,to_date('20/10/08','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (1005,1,'�ֹ��� ����',null,to_date('20/10/08','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (1006,1,'���̵� ����',null,to_date('20/10/08','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (1007,1,'���̵� ����',null,to_date('20/10/08','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (1008,1,'�ֹ��� ����',null,to_date('20/10/08','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (1009,1,'�ֹ��� ����',null,to_date('20/10/08','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (1010,1,'���̵� ����',null,to_date('20/10/08','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (1011,1,'�ֹ��� ����',null,to_date('20/10/08','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (1012,1,'�ֹ��� ����',null,to_date('20/10/08','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (1013,1,'�ֹ��� ����',null,to_date('20/10/08','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (1014,1,'�ֹ��� ����',null,to_date('20/10/08','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (1015,1,'���̵� ����',null,to_date('20/10/08','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (1016,1,'���̵� ����',null,to_date('20/10/08','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (1017,1,'�ֹ��� ����',null,to_date('20/10/08','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (1018,1,'���̵� ����',null,to_date('20/10/08','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (1019,1,'�ֹ��� ����',null,to_date('20/10/08','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (1020,1,'�ֹ��� ����',null,to_date('20/10/08','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (1021,1,'�ֹ��� ����',null,to_date('20/10/08','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (1022,1,'�ֹ��� ����',null,to_date('20/10/08','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (1023,1,'�ֹ��� ����',null,to_date('20/10/08','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (1024,1,'�ֹ��� ����',null,to_date('20/10/08','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (1025,1,'���̵� ����',null,to_date('20/10/08','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (1026,1,'��Ʈ ����',null,to_date('20/10/08','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (1027,1,'�ֹ��� ����',null,to_date('20/10/08','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (1028,1,'�ֹ��� ����',null,to_date('20/10/08','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (1029,1,'���̵� ����',null,to_date('20/10/08','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (1030,1,'�ֹ��� ����',null,to_date('20/10/08','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (1031,1,'�ֹ��� ����',null,to_date('20/10/08','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (1032,1,'�ֹ��� ����',null,to_date('20/10/08','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (1033,1,'�ֹ��� ����',null,to_date('20/10/08','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (1034,1,'�ֹ��� ����',null,to_date('20/10/08','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (1035,1,'�ֹ��� ����',null,to_date('20/10/08','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (1036,1,'���̵� ����',null,to_date('20/10/08','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (1037,1,'�ֹ��� ����',null,to_date('20/10/08','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (1038,1,'�ֹ��� ����',null,to_date('20/10/08','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (1039,1,'�ֹ��� ����',null,to_date('20/10/08','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (1040,1,'�ֹ��� ����',null,to_date('20/10/08','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (1041,1,'�ֹ��� ����',null,to_date('20/10/08','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (1042,1,'�ֹ��� ����',null,to_date('20/10/08','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (1043,1,'�ֹ��� ����',null,to_date('20/10/08','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (1044,1,'���̵� ����',null,to_date('20/10/08','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (1045,1,'���̵� ����',null,to_date('20/10/08','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (1046,1,'���̵� ����',null,to_date('20/10/08','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (1047,1,'�ֹ��� ����',null,to_date('20/10/08','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (1048,1,'�ֹ��� ����',null,to_date('20/10/08','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (1049,1,'�ֹ��� ����',null,to_date('20/10/08','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (1050,1,'�ֹ��� ����',null,to_date('20/10/08','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (1051,1,'��Ʈ ����',null,to_date('20/10/08','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (1052,1,'clear',null,to_date('20/10/08','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (1053,1,'clear','����',to_date('20/10/08','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (1054,1,'��Ʈ ����',null,to_date('20/10/08','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (1055,1,'�ֹ��� ����',null,to_date('20/10/08','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (1056,1,'�ֹ��� ����',null,to_date('20/10/08','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (1057,1,'�ֹ��� ����',null,to_date('20/10/08','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (1058,1,'���̵� ����',null,to_date('20/10/13','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (1059,1,'clear',null,to_date('20/10/13','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (1060,1,'clear','�����',to_date('20/10/13','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (1061,2,'��� ������ ����',null,to_date('20/10/13','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (1062,2,'��� ������ ����',null,to_date('20/10/13','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (1063,2,'��� ������ ����',null,to_date('20/10/13','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (1064,2,'�ֹ��� ����',null,to_date('20/10/13','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (1065,2,'�ֹ��� ����',null,to_date('20/10/13','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (1066,1,'�ֹ��� ����',null,to_date('20/10/13','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (1067,1,'�ֹ��� ����',null,to_date('20/10/14','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (1068,2,'�ֹ��� ����',null,to_date('20/10/14','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (1069,2,'��� ������ ����',null,to_date('20/10/14','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (1070,2,'�ֹ��� ����',null,to_date('20/10/14','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (1071,2,'��� ������ ����',null,to_date('20/10/14','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (1072,1,'��� ����',null,to_date('20/10/15','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (1073,1,'�ֹ��� ����',null,to_date('20/10/15','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (1074,1,'�ֹ��� ����',null,to_date('20/10/15','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (1075,1,'�ֹ��� ����',null,to_date('20/10/15','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (1076,1,'�ֹ��� ����',null,to_date('20/10/15','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (1077,1,'�ֹ��� ����',null,to_date('20/10/15','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (1078,1,'��Ʈ ����',null,to_date('20/10/15','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (1082,1,'����',null,to_date('20/10/15','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (1083,1,'clear','�����',to_date('20/10/15','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (1079,1,'clear','����',to_date('20/10/15','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (1084,1,'�ֹ��� ����',null,to_date('20/10/15','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (1085,1,'�ֹ��� ����',null,to_date('20/10/15','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (1086,1,'�ֹ��� ����',null,to_date('20/10/15','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (1087,1,'�ֹ��� ����',null,to_date('20/10/15','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (1088,1,'�ֹ��� ����',null,to_date('20/10/15','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (1089,1,'����',null,to_date('20/10/15','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (1090,1,'clear','�����',to_date('20/10/15','RR/MM/DD'));
Insert into KIOSK.STATISTICS (STATISTICSNO,STORENO,ENDPOINT,LEVELS,CHALLENGEDATE) values (1091,1,'��� ����',null,to_date('20/10/15','RR/MM/DD'));
REM INSERTING into KIOSK.STORE
SET DEFINE OFF;
Insert into KIOSK.STORE (STORENO,STORENAME,STORELOGO,USERNO) values (1,'kfc','kfclogo.png',1);
Insert into KIOSK.STORE (STORENO,STORENAME,STORELOGO,USERNO) values (2,'lotteria','lotteriaLogo.gif',2);
REM INSERTING into KIOSK.TEST
SET DEFINE OFF;
Insert into KIOSK.TEST (TEST1,TEST2) values (to_date('20/09/22','RR/MM/DD'),1);
Insert into KIOSK.TEST (TEST1,TEST2) values (to_date('20/08/22','RR/MM/DD'),1);
Insert into KIOSK.TEST (TEST1,TEST2) values (to_date('20/09/22','RR/MM/DD'),3);
REM INSERTING into KIOSK.TOPPING
SET DEFINE OFF;
Insert into KIOSK.TOPPING (TOPPINGNO,STORENO,TOPPINGNAME,TOPPINGPRICE,TOPPINGIMG) values (27,2,'����-������',500,'topping_bacon.png');
Insert into KIOSK.TOPPING (TOPPINGNO,STORENO,TOPPINGNAME,TOPPINGPRICE,TOPPINGIMG) values (21,1,'ġ��',300,'16020677843908f6171f5-2c8b-4dc9-bb06-9369935c0896.jpg');
Insert into KIOSK.TOPPING (TOPPINGNO,STORENO,TOPPINGNAME,TOPPINGPRICE,TOPPINGIMG) values (140,2,'����-������Ƽ',1200,'topping_beefPaty.png');
Insert into KIOSK.TOPPING (TOPPINGNO,STORENO,TOPPINGNAME,TOPPINGPRICE,TOPPINGIMG) values (28,2,'����-�丶��',300,'topping_tomato.png');
Insert into KIOSK.TOPPING (TOPPINGNO,STORENO,TOPPINGNAME,TOPPINGPRICE,TOPPINGIMG) values (29,2,'����-Lġ��',300,'topping_cheese.png');
Insert into KIOSK.TOPPING (TOPPINGNO,STORENO,TOPPINGNAME,TOPPINGPRICE,TOPPINGIMG) values (149,1,'������',300,'16021272892279720aa4a-7013-400e-8573-59324b543eff.jpg');
REM INSERTING into KIOSK.USEMENU
SET DEFINE OFF;
Insert into KIOSK.USEMENU (MENUNO,SETNO) values (588,599);
Insert into KIOSK.USEMENU (MENUNO,SETNO) values (331,346);
Insert into KIOSK.USEMENU (MENUNO,SETNO) values (15,250);
Insert into KIOSK.USEMENU (MENUNO,SETNO) values (45,244);
Insert into KIOSK.USEMENU (MENUNO,SETNO) values (46,254);
Insert into KIOSK.USEMENU (MENUNO,SETNO) values (61,238);
Insert into KIOSK.USEMENU (MENUNO,SETNO) values (62,240);
Insert into KIOSK.USEMENU (MENUNO,SETNO) values (63,241);
Insert into KIOSK.USEMENU (MENUNO,SETNO) values (13,248);
Insert into KIOSK.USEMENU (MENUNO,SETNO) values (334,347);
Insert into KIOSK.USEMENU (MENUNO,SETNO) values (64,245);
Insert into KIOSK.USEMENU (MENUNO,SETNO) values (65,246);
Insert into KIOSK.USEMENU (MENUNO,SETNO) values (66,242);
Insert into KIOSK.USEMENU (MENUNO,SETNO) values (66,243);
Insert into KIOSK.USEMENU (MENUNO,SETNO) values (67,247);
Insert into KIOSK.USEMENU (MENUNO,SETNO) values (68,251);
Insert into KIOSK.USEMENU (MENUNO,SETNO) values (69,253);
Insert into KIOSK.USEMENU (MENUNO,SETNO) values (72,255);
Insert into KIOSK.USEMENU (MENUNO,SETNO) values (122,252);
Insert into KIOSK.USEMENU (MENUNO,SETNO) values (14,249);
Insert into KIOSK.USEMENU (MENUNO,SETNO) values (335,348);
Insert into KIOSK.USEMENU (MENUNO,SETNO) values (336,349);
Insert into KIOSK.USEMENU (MENUNO,SETNO) values (337,350);
Insert into KIOSK.USEMENU (MENUNO,SETNO) values (332,365);
REM INSERTING into KIOSK.USERS
SET DEFINE OFF;
Insert into KIOSK.USERS (USERNO,USERID,USERPW) values (1,'kfcAdmin','12');
Insert into KIOSK.USERS (USERNO,USERID,USERPW) values (2,'lotteria','12');
Insert into KIOSK.USERS (USERNO,USERID,USERPW) values (5,'test','test');
REM INSERTING into KIOSK.USETOPPING
SET DEFINE OFF;
Insert into KIOSK.USETOPPING (MENUNO,TOPPINGNO) values (14,27);
Insert into KIOSK.USETOPPING (MENUNO,TOPPINGNO) values (14,28);
Insert into KIOSK.USETOPPING (MENUNO,TOPPINGNO) values (14,29);
Insert into KIOSK.USETOPPING (MENUNO,TOPPINGNO) values (15,27);
Insert into KIOSK.USETOPPING (MENUNO,TOPPINGNO) values (15,28);
Insert into KIOSK.USETOPPING (MENUNO,TOPPINGNO) values (15,29);
Insert into KIOSK.USETOPPING (MENUNO,TOPPINGNO) values (583,21);
Insert into KIOSK.USETOPPING (MENUNO,TOPPINGNO) values (45,27);
Insert into KIOSK.USETOPPING (MENUNO,TOPPINGNO) values (45,28);
Insert into KIOSK.USETOPPING (MENUNO,TOPPINGNO) values (45,29);
Insert into KIOSK.USETOPPING (MENUNO,TOPPINGNO) values (259,21);
Insert into KIOSK.USETOPPING (MENUNO,TOPPINGNO) values (46,27);
Insert into KIOSK.USETOPPING (MENUNO,TOPPINGNO) values (46,28);
Insert into KIOSK.USETOPPING (MENUNO,TOPPINGNO) values (46,29);
Insert into KIOSK.USETOPPING (MENUNO,TOPPINGNO) values (73,149);
Insert into KIOSK.USETOPPING (MENUNO,TOPPINGNO) values (61,27);
Insert into KIOSK.USETOPPING (MENUNO,TOPPINGNO) values (61,28);
Insert into KIOSK.USETOPPING (MENUNO,TOPPINGNO) values (61,29);
Insert into KIOSK.USETOPPING (MENUNO,TOPPINGNO) values (62,27);
Insert into KIOSK.USETOPPING (MENUNO,TOPPINGNO) values (62,28);
Insert into KIOSK.USETOPPING (MENUNO,TOPPINGNO) values (62,29);
Insert into KIOSK.USETOPPING (MENUNO,TOPPINGNO) values (78,21);
Insert into KIOSK.USETOPPING (MENUNO,TOPPINGNO) values (63,27);
Insert into KIOSK.USETOPPING (MENUNO,TOPPINGNO) values (63,28);
Insert into KIOSK.USETOPPING (MENUNO,TOPPINGNO) values (63,29);
Insert into KIOSK.USETOPPING (MENUNO,TOPPINGNO) values (79,21);
Insert into KIOSK.USETOPPING (MENUNO,TOPPINGNO) values (13,27);
Insert into KIOSK.USETOPPING (MENUNO,TOPPINGNO) values (13,28);
Insert into KIOSK.USETOPPING (MENUNO,TOPPINGNO) values (13,29);
Insert into KIOSK.USETOPPING (MENUNO,TOPPINGNO) values (64,27);
Insert into KIOSK.USETOPPING (MENUNO,TOPPINGNO) values (64,28);
Insert into KIOSK.USETOPPING (MENUNO,TOPPINGNO) values (64,29);
Insert into KIOSK.USETOPPING (MENUNO,TOPPINGNO) values (259,149);
Insert into KIOSK.USETOPPING (MENUNO,TOPPINGNO) values (65,27);
Insert into KIOSK.USETOPPING (MENUNO,TOPPINGNO) values (65,28);
Insert into KIOSK.USETOPPING (MENUNO,TOPPINGNO) values (65,29);
Insert into KIOSK.USETOPPING (MENUNO,TOPPINGNO) values (66,27);
Insert into KIOSK.USETOPPING (MENUNO,TOPPINGNO) values (66,28);
Insert into KIOSK.USETOPPING (MENUNO,TOPPINGNO) values (66,29);
Insert into KIOSK.USETOPPING (MENUNO,TOPPINGNO) values (309,21);
Insert into KIOSK.USETOPPING (MENUNO,TOPPINGNO) values (67,27);
Insert into KIOSK.USETOPPING (MENUNO,TOPPINGNO) values (67,28);
Insert into KIOSK.USETOPPING (MENUNO,TOPPINGNO) values (67,29);
Insert into KIOSK.USETOPPING (MENUNO,TOPPINGNO) values (68,27);
Insert into KIOSK.USETOPPING (MENUNO,TOPPINGNO) values (68,28);
Insert into KIOSK.USETOPPING (MENUNO,TOPPINGNO) values (68,29);
Insert into KIOSK.USETOPPING (MENUNO,TOPPINGNO) values (71,21);
Insert into KIOSK.USETOPPING (MENUNO,TOPPINGNO) values (69,27);
Insert into KIOSK.USETOPPING (MENUNO,TOPPINGNO) values (69,28);
Insert into KIOSK.USETOPPING (MENUNO,TOPPINGNO) values (69,29);
Insert into KIOSK.USETOPPING (MENUNO,TOPPINGNO) values (72,27);
Insert into KIOSK.USETOPPING (MENUNO,TOPPINGNO) values (72,28);
Insert into KIOSK.USETOPPING (MENUNO,TOPPINGNO) values (72,29);
Insert into KIOSK.USETOPPING (MENUNO,TOPPINGNO) values (77,21);
Insert into KIOSK.USETOPPING (MENUNO,TOPPINGNO) values (122,27);
Insert into KIOSK.USETOPPING (MENUNO,TOPPINGNO) values (122,28);
Insert into KIOSK.USETOPPING (MENUNO,TOPPINGNO) values (122,29);
Insert into KIOSK.USETOPPING (MENUNO,TOPPINGNO) values (73,21);
Insert into KIOSK.USETOPPING (MENUNO,TOPPINGNO) values (13,140);
Insert into KIOSK.USETOPPING (MENUNO,TOPPINGNO) values (15,140);
Insert into KIOSK.USETOPPING (MENUNO,TOPPINGNO) values (45,140);
Insert into KIOSK.USETOPPING (MENUNO,TOPPINGNO) values (46,140);
Insert into KIOSK.USETOPPING (MENUNO,TOPPINGNO) values (61,140);
Insert into KIOSK.USETOPPING (MENUNO,TOPPINGNO) values (62,140);
Insert into KIOSK.USETOPPING (MENUNO,TOPPINGNO) values (63,140);
Insert into KIOSK.USETOPPING (MENUNO,TOPPINGNO) values (64,140);
Insert into KIOSK.USETOPPING (MENUNO,TOPPINGNO) values (65,140);
Insert into KIOSK.USETOPPING (MENUNO,TOPPINGNO) values (66,140);
Insert into KIOSK.USETOPPING (MENUNO,TOPPINGNO) values (67,140);
Insert into KIOSK.USETOPPING (MENUNO,TOPPINGNO) values (68,140);
Insert into KIOSK.USETOPPING (MENUNO,TOPPINGNO) values (69,140);
Insert into KIOSK.USETOPPING (MENUNO,TOPPINGNO) values (72,140);
Insert into KIOSK.USETOPPING (MENUNO,TOPPINGNO) values (122,140);
Insert into KIOSK.USETOPPING (MENUNO,TOPPINGNO) values (258,21);
Insert into KIOSK.USETOPPING (MENUNO,TOPPINGNO) values (76,21);
Insert into KIOSK.USETOPPING (MENUNO,TOPPINGNO) values (601,21);
--------------------------------------------------------
--  Constraints for Table CATEGORY
--------------------------------------------------------

  ALTER TABLE "KIOSK"."CATEGORY" ADD PRIMARY KEY ("CATEGORYNO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "KIOSK"."CATEGORY" MODIFY ("PUBLICYN" NOT NULL ENABLE);
  ALTER TABLE "KIOSK"."CATEGORY" MODIFY ("CATEGORYNAME" NOT NULL ENABLE);
  ALTER TABLE "KIOSK"."CATEGORY" MODIFY ("STORENO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table USERS
--------------------------------------------------------

  ALTER TABLE "KIOSK"."USERS" ADD UNIQUE ("USERID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "KIOSK"."USERS" ADD PRIMARY KEY ("USERNO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "KIOSK"."USERS" MODIFY ("USERID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table INFO
--------------------------------------------------------

  ALTER TABLE "KIOSK"."INFO" ADD PRIMARY KEY ("INFONO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table STATISTICS
--------------------------------------------------------

  ALTER TABLE "KIOSK"."STATISTICS" ADD PRIMARY KEY ("STATISTICSNO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "KIOSK"."STATISTICS" MODIFY ("CHALLENGEDATE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table STORE
--------------------------------------------------------

  ALTER TABLE "KIOSK"."STORE" ADD UNIQUE ("STORENAME")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "KIOSK"."STORE" ADD PRIMARY KEY ("STORENO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "KIOSK"."STORE" MODIFY ("STORELOGO" NOT NULL ENABLE);
  ALTER TABLE "KIOSK"."STORE" MODIFY ("STORENAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SETUNIT
--------------------------------------------------------

  ALTER TABLE "KIOSK"."SETUNIT" ADD PRIMARY KEY ("UNITNO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table USETOPPING
--------------------------------------------------------

  ALTER TABLE "KIOSK"."USETOPPING" MODIFY ("TOPPINGNO" NOT NULL ENABLE);
  ALTER TABLE "KIOSK"."USETOPPING" MODIFY ("MENUNO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TOPPING
--------------------------------------------------------

  ALTER TABLE "KIOSK"."TOPPING" ADD PRIMARY KEY ("TOPPINGNO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "KIOSK"."TOPPING" MODIFY ("TOPPINGIMG" NOT NULL ENABLE);
  ALTER TABLE "KIOSK"."TOPPING" MODIFY ("TOPPINGPRICE" NOT NULL ENABLE);
  ALTER TABLE "KIOSK"."TOPPING" MODIFY ("TOPPINGNAME" NOT NULL ENABLE);
  ALTER TABLE "KIOSK"."TOPPING" MODIFY ("STORENO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MENU
--------------------------------------------------------

  ALTER TABLE "KIOSK"."MENU" MODIFY ("THUMBNAILIMG" NOT NULL ENABLE);
  ALTER TABLE "KIOSK"."MENU" MODIFY ("EDITIMG" NOT NULL ENABLE);
  ALTER TABLE "KIOSK"."MENU" ADD PRIMARY KEY ("MENUNO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "KIOSK"."MENU" MODIFY ("DISCOUNT" NOT NULL ENABLE);
  ALTER TABLE "KIOSK"."MENU" MODIFY ("ISCHANGE" NOT NULL ENABLE);
  ALTER TABLE "KIOSK"."MENU" MODIFY ("ISSPECIAL" NOT NULL ENABLE);
  ALTER TABLE "KIOSK"."MENU" MODIFY ("MENUIMG" NOT NULL ENABLE);
  ALTER TABLE "KIOSK"."MENU" MODIFY ("MENUPRICE" NOT NULL ENABLE);
  ALTER TABLE "KIOSK"."MENU" MODIFY ("MENUDESC" NOT NULL ENABLE);
  ALTER TABLE "KIOSK"."MENU" MODIFY ("MENUNAME" NOT NULL ENABLE);
  ALTER TABLE "KIOSK"."MENU" MODIFY ("CATEGORYNO" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table CATEGORY
--------------------------------------------------------

  ALTER TABLE "KIOSK"."CATEGORY" ADD CONSTRAINT "FK_STORE_CATEGORY_STORENO" FOREIGN KEY ("STORENO")
	  REFERENCES "KIOSK"."STORE" ("STORENO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table DEFAULTMENU
--------------------------------------------------------

  ALTER TABLE "KIOSK"."DEFAULTMENU" ADD CONSTRAINT "FK_DEFAULTMENU_MENUNO" FOREIGN KEY ("MENUNO")
	  REFERENCES "KIOSK"."MENU" ("MENUNO") ENABLE;
  ALTER TABLE "KIOSK"."DEFAULTMENU" ADD CONSTRAINT "FK_DEFAULTMENU_UNITNO" FOREIGN KEY ("UNITNO")
	  REFERENCES "KIOSK"."SETUNIT" ("UNITNO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table INFO
--------------------------------------------------------

  ALTER TABLE "KIOSK"."INFO" ADD CONSTRAINT "C_INFO_FK" FOREIGN KEY ("MENUNO")
	  REFERENCES "KIOSK"."MENU" ("MENUNO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MENU
--------------------------------------------------------

  ALTER TABLE "KIOSK"."MENU" ADD CONSTRAINT "FK_CATEGORYNO_MENU_CATEGORYNO" FOREIGN KEY ("CATEGORYNO")
	  REFERENCES "KIOSK"."CATEGORY" ("CATEGORYNO") ENABLE;
  ALTER TABLE "KIOSK"."MENU" ADD CONSTRAINT "FK_MENU_UNITNO" FOREIGN KEY ("UNITNO")
	  REFERENCES "KIOSK"."SETUNIT" ("UNITNO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PROMOTIONMENU
--------------------------------------------------------

  ALTER TABLE "KIOSK"."PROMOTIONMENU" ADD CONSTRAINT "FK_PROMOTIONMENU_MENUNO" FOREIGN KEY ("MENUNO")
	  REFERENCES "KIOSK"."MENU" ("MENUNO") ENABLE;
  ALTER TABLE "KIOSK"."PROMOTIONMENU" ADD CONSTRAINT "FK_PROMOTIONMENU_PROMOTIONNO" FOREIGN KEY ("PROMOTIONNO")
	  REFERENCES "KIOSK"."MENU" ("MENUNO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SETUNIT
--------------------------------------------------------

  ALTER TABLE "KIOSK"."SETUNIT" ADD CONSTRAINT "STORE_SETUNIT_STORENO" FOREIGN KEY ("STORENO")
	  REFERENCES "KIOSK"."STORE" ("STORENO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SPECIALMENU
--------------------------------------------------------

  ALTER TABLE "KIOSK"."SPECIALMENU" ADD CONSTRAINT "FK_SPECIALMENU_MENU_MENUNO" FOREIGN KEY ("MENUNO")
	  REFERENCES "KIOSK"."MENU" ("MENUNO") ENABLE;
  ALTER TABLE "KIOSK"."SPECIALMENU" ADD CONSTRAINT "FK_SPECIALMENU_STORE_STORENO" FOREIGN KEY ("STORENO")
	  REFERENCES "KIOSK"."STORE" ("STORENO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table STATISTICS
--------------------------------------------------------

  ALTER TABLE "KIOSK"."STATISTICS" ADD CONSTRAINT "FK_STATISTICES_STORENO" FOREIGN KEY ("STORENO")
	  REFERENCES "KIOSK"."STORE" ("STORENO") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table STORE
--------------------------------------------------------

  ALTER TABLE "KIOSK"."STORE" ADD CONSTRAINT "USERS_STORE_USERNO" FOREIGN KEY ("USERNO")
	  REFERENCES "KIOSK"."USERS" ("USERNO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table TOPPING
--------------------------------------------------------

  ALTER TABLE "KIOSK"."TOPPING" ADD CONSTRAINT "FK_STORE_TOPPING_STORENO" FOREIGN KEY ("STORENO")
	  REFERENCES "KIOSK"."STORE" ("STORENO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table USEMENU
--------------------------------------------------------

  ALTER TABLE "KIOSK"."USEMENU" ADD CONSTRAINT "FK_USEMENU_MENUNO" FOREIGN KEY ("MENUNO")
	  REFERENCES "KIOSK"."MENU" ("MENUNO") ENABLE;
  ALTER TABLE "KIOSK"."USEMENU" ADD CONSTRAINT "FK_USEMENU_SETNO" FOREIGN KEY ("SETNO")
	  REFERENCES "KIOSK"."MENU" ("MENUNO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table USETOPPING
--------------------------------------------------------

  ALTER TABLE "KIOSK"."USETOPPING" ADD CONSTRAINT "FK_MENU_UT_MENUNO" FOREIGN KEY ("MENUNO")
	  REFERENCES "KIOSK"."MENU" ("MENUNO") ON DELETE CASCADE ENABLE;
  ALTER TABLE "KIOSK"."USETOPPING" ADD CONSTRAINT "FK_TOPPING_UT_TOPPINGNO" FOREIGN KEY ("TOPPINGNO")
	  REFERENCES "KIOSK"."TOPPING" ("TOPPINGNO") ON DELETE CASCADE ENABLE;
