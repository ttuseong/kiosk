CREATE TABLE store
(
    storeNo      NUMBER          NOT NULL, 
    storeName    VARCHAR2(20)    NOT NULL, 
    StoreLogo    VARCHAR2(20)    NOT NULL, 
    CONSTRAINT STORE_PK PRIMARY KEY (storeNo)
)
/

CREATE SEQUENCE store_SEQ
START WITH 1
INCREMENT BY 1;
/

CREATE OR REPLACE TRIGGER store_AI_TRG
BEFORE INSERT ON store 
REFERENCING NEW AS NEW FOR EACH ROW 
BEGIN 
    SELECT store_SEQ.NEXTVAL
    INTO :NEW.storeNo
    FROM DUAL;
END;
/

--DROP TRIGGER store_AI_TRG;
/

--DROP SEQUENCE store_SEQ;
/

COMMENT ON TABLE store IS '매장 테이블'
/

COMMENT ON COLUMN store.storeNo IS '매장 번호'
/

COMMENT ON COLUMN store.storeName IS '매장 이름'
/

COMMENT ON COLUMN store.StoreLogo IS '기업 로고'
/




CREATE TABLE category
(
    categoryNo      NUMBER          NOT NULL, 
    storeNo         NUMBER          NOT NULL, 
    categoryName    VARCHAR2(20)    NOT NULL, 
    public          NUMBER          NOT NULL, 
    isSet           NUMBER          NOT NULL, 
    CONSTRAINT CATEGORY_PK PRIMARY KEY (categoryNo)
)
/

CREATE SEQUENCE category_SEQ
START WITH 1
INCREMENT BY 1;
/

CREATE OR REPLACE TRIGGER category_AI_TRG
BEFORE INSERT ON category 
REFERENCING NEW AS NEW FOR EACH ROW 
BEGIN 
    SELECT category_SEQ.NEXTVAL
    INTO :NEW.categoryNo
    FROM DUAL;
END;
/

--DROP TRIGGER category_AI_TRG;
/

--DROP SEQUENCE category_SEQ;
/

COMMENT ON TABLE category IS '카테고리 테이블'
/

COMMENT ON COLUMN category.categoryNo IS '카테고리 번호'
/

COMMENT ON COLUMN category.storeNo IS '매장 번호'
/

COMMENT ON COLUMN category.categoryName IS '카테고리 이름'
/

COMMENT ON COLUMN category.public IS '공개여부'
/

COMMENT ON COLUMN category.isSet IS '세트여부'
/

ALTER TABLE category
    ADD CONSTRAINT FK_category_storeNo_store_stor FOREIGN KEY (storeNo)
        REFERENCES store (storeNo)
/




CREATE TABLE topping
(
    toppingNo       NUMBER          NOT NULL, 
    storeNo         NUMBER          NOT NULL, 
    toppingName     VARCHAR2(20)    NOT NULL, 
    toppingPrice    VARCHAR2(20)    NOT NULL, 
    toppingImg      VARCHAR2(20)    NOT NULL, 
    CONSTRAINT TOPPING_PK PRIMARY KEY (toppingNo)
)
/

CREATE SEQUENCE topping_SEQ
START WITH 1
INCREMENT BY 1;
/

CREATE OR REPLACE TRIGGER topping_AI_TRG
BEFORE INSERT ON topping 
REFERENCING NEW AS NEW FOR EACH ROW 
BEGIN 
    SELECT topping_SEQ.NEXTVAL
    INTO :NEW.toppingNo
    FROM DUAL;
END;
/

--DROP TRIGGER topping_AI_TRG;
/

--DROP SEQUENCE topping_SEQ;
/

COMMENT ON TABLE topping IS '토핑 테이블'
/

COMMENT ON COLUMN topping.toppingNo IS '토핑 번호'
/

COMMENT ON COLUMN topping.storeNo IS '매장 번호'
/

COMMENT ON COLUMN topping.toppingName IS '토핑 이름'
/

COMMENT ON COLUMN topping.toppingPrice IS '토핑 가격'
/

COMMENT ON COLUMN topping.toppingImg IS '토핑 이미지'
/

ALTER TABLE topping
    ADD CONSTRAINT FK_topping_storeNo_store_store FOREIGN KEY (storeNo)
        REFERENCES store (storeNo)
/




CREATE TABLE menu
(
    menuNo             NUMBER          NOT NULL, 
    categoryNo         NUMBER          NOT NULL, 
    menuName           VARCHAR2(20)    NOT NULL, 
    menuDescription    VARCHAR2(20)    NOT NULL, 
    menuPrice          NUMBER          NOT NULL, 
    menuImg            VARCHAR2(20)    NOT NULL, 
    CONSTRAINT MENU_PK PRIMARY KEY (menuNo)
)
/

CREATE SEQUENCE menu_SEQ
START WITH 1
INCREMENT BY 1;
/

CREATE OR REPLACE TRIGGER menu_AI_TRG
BEFORE INSERT ON menu 
REFERENCING NEW AS NEW FOR EACH ROW 
BEGIN 
    SELECT menu_SEQ.NEXTVAL
    INTO :NEW.menuNo
    FROM DUAL;
END;
/

--DROP TRIGGER menu_AI_TRG;
/

--DROP SEQUENCE menu_SEQ;
/

COMMENT ON TABLE menu IS '메뉴 테이블'
/

COMMENT ON COLUMN menu.menuNo IS '메뉴 번호'
/

COMMENT ON COLUMN menu.categoryNo IS '카테고리 번호'
/

COMMENT ON COLUMN menu.menuName IS '메뉴 이름'
/

COMMENT ON COLUMN menu.menuDescription IS '메뉴 설명'
/

COMMENT ON COLUMN menu.menuPrice IS '메뉴 가격'
/

COMMENT ON COLUMN menu.menuImg IS '메뉴 이미지'
/

ALTER TABLE menu
    ADD CONSTRAINT FK_menu_categoryNo_category_ca FOREIGN KEY (categoryNo)
        REFERENCES category (categoryNo)
/




CREATE TABLE set
(
    setNo         NUMBER          NOT NULL, 
    setName       VARCHAR2(20)    NOT NULL, 
    categoryNo    NUMBER          NOT NULL, 
    setPrice      NUMBER          NOT NULL, 
    setImg        VARCHAR2(20)    NOT NULL
)
/

COMMENT ON TABLE set IS '세트 테이블'
/

COMMENT ON COLUMN set.setNo IS '세트 번호'
/

COMMENT ON COLUMN set.setName IS '세트 이름'
/

COMMENT ON COLUMN set.categoryNo IS '카테고리 번호'
/

COMMENT ON COLUMN set.setPrice IS '세트 가격'
/

COMMENT ON COLUMN set.setImg IS '세트 이미지'
/

ALTER TABLE set
    ADD CONSTRAINT FK_set_categoryNo_category_cat FOREIGN KEY (categoryNo)
        REFERENCES category (categoryNo)
/






CREATE TABLE info
(
    infoNo       NUMBER          NOT NULL, 
    menuNo       NUMBER          NOT NULL, 
    allergy      VARCHAR2(20)    NULL, 
    weight       NUMBER          NULL, 
    calorie      NUMBER          NULL, 
    protein      NUMBER          NULL, 
    natrium      NUMBER          NULL, 
    sugars       NUMBER          NULL, 
    saturated    NUMBER          NULL, 
    origin       VARCHAR2(20)    NULL, 
    CONSTRAINT INFO_PK PRIMARY KEY (infoNo)
)
/

CREATE SEQUENCE info_SEQ
START WITH 1
INCREMENT BY 1;
/

CREATE OR REPLACE TRIGGER info_AI_TRG
BEFORE INSERT ON info 
REFERENCING NEW AS NEW FOR EACH ROW 
BEGIN 
    SELECT info_SEQ.NEXTVAL
    INTO :NEW.infoNo
    FROM DUAL;
END;
/

--DROP TRIGGER info_AI_TRG;
/

--DROP SEQUENCE info_SEQ;
/

COMMENT ON TABLE info IS '메뉴 정보 테이블'
/

COMMENT ON COLUMN info.infoNo IS '정보 번호'
/

COMMENT ON COLUMN info.menuNo IS '메뉴 번호'
/

COMMENT ON COLUMN info.allergy IS '알레르기유발성분'
/

COMMENT ON COLUMN info.weight IS '중량'
/

COMMENT ON COLUMN info.calorie IS '열량'
/

COMMENT ON COLUMN info.protein IS '단백질'
/

COMMENT ON COLUMN info.natrium IS '나트륨'
/

COMMENT ON COLUMN info.sugars IS '당류'
/

COMMENT ON COLUMN info.saturated IS '포화지방'
/

COMMENT ON COLUMN info.origin IS '원산지'
/

ALTER TABLE info
    ADD CONSTRAINT FK_info_menuNo_menu_menuNo FOREIGN KEY (menuNo)
        REFERENCES menu (menuNo)
/





CREATE TABLE useMenu
(
    menuNo    NUMBER    NOT NULL, 
    setNo     NUMBER    NOT NULL
)
/

COMMENT ON TABLE useMenu IS '사용 메뉴'
/

COMMENT ON COLUMN useMenu.menuNo IS '메뉴 번호'
/

COMMENT ON COLUMN useMenu.setNo IS '세트 번호'
/

ALTER TABLE useMenu
    ADD CONSTRAINT FK_useMenu_menuNo_menu_menuNo FOREIGN KEY (menuNo)
        REFERENCES menu (menuNo)
/

ALTER TABLE useMenu
    ADD CONSTRAINT FK_useMenu_setNo_set_setNo FOREIGN KEY (setNo)
        REFERENCES set (setNo)
/





CREATE TABLE useTopping
(
    menuNo       NUMBER    NOT NULL, 
    toppingNo    NUMBER    NOT NULL
)
/

COMMENT ON TABLE useTopping IS '사용 토핑'
/

COMMENT ON COLUMN useTopping.menuNo IS '메뉴 번호'
/

COMMENT ON COLUMN useTopping.toppingNo IS '토핑 번호'
/

ALTER TABLE useTopping
    ADD CONSTRAINT FK_useTopping_menuNo_menu_menu FOREIGN KEY (menuNo)
        REFERENCES menu (menuNo)
/

ALTER TABLE useTopping
    ADD CONSTRAINT FK_useTopping_toppingNo_toppin FOREIGN KEY (toppingNo)
        REFERENCES topping (toppingNo)
/