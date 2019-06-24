테이블 생성 및 시퀀스 등등 적어주세요

---------------------------------------------------
CREATE TABLE tb_code
(
    no           NUMBER(30)       NOT NULL, 
    id           NUMBER(30)       NOT NULL, 
    name         VARCHAR2(300)    NOT NULL, 
    parent_id    NUMBER(30)       NOT NULL, 
    CONSTRAINT TB_CODE_PK PRIMARY KEY (no)
)

/

CREATE SEQUENCE s_code_no
START WITH 1
INCREMENT BY 1;
/


--DROP TRIGGER tb_code_AI_TRG;
/

--DROP SEQUENCE tb_code_SEQ;
/

COMMENT ON TABLE tb_code IS '공유코드(지역,숙박타입)'
/

COMMENT ON COLUMN tb_code.no IS '고유번호'
/

COMMENT ON COLUMN tb_code.id IS '아이디'
/

COMMENT ON COLUMN tb_code.name IS '이름'
/

COMMENT ON COLUMN tb_code.parent_id IS '부모아이디'
/

------------------------------------------------------------------------------
insert into tb_code(no,id,name,parent_id) values(s_code_no.nextval,1,'제주시',0);

insert into tb_code(no,id,name,parent_id) values(s_code_no.nextval,2,'서귀포시',0);

insert into tb_code(no,id,name,parent_id) values(s_code_no.nextval,3,'애월읍',1);

insert into tb_code(no,id,name,parent_id) values(s_code_no.nextval,4,'한림읍',1);

insert into tb_code(no,id,name,parent_id) values(s_code_no.nextval,6,'우도',1);

insert into tb_code(no,id,name,parent_id) values(s_code_no.nextval,7,'성산읍',2);

insert into tb_code(no,id,name,parent_id) values(s_code_no.nextval,8,'남원읍',2);


   


-----------------------------------------------------------------------




CREATE TABLE tb_acc_info
(
    acc_no            NUMBER(30)        NOT NULL, 
    name              VARCHAR2(300)     NOT NULL, 
    address           VARCHAR2(300)     NOT NULL, 
    contact           VARCHAR2(300)     NOT NULL, 
    ment              VARCHAR2(300)     NOT NULL, 
    homepage          VARCHAR2(300)     NOT NULL, 
    intro             VARCHAR2(3000)    NOT NULL, 
    member_no         NUMBER            NOT NULL, 
    main_file_name    VARCHAR2(300)     NOT NULL, 
    main_file_path    VARCHAR2(300)     NOT NULL, 
    sub_file_name1    VARCHAR2(300)     NOT NULL, 
    sub_file_path2    VARCHAR2(300)     NOT NULL, 
    CONSTRAINT TB_ACC_INFO_PK PRIMARY KEY (acc_no)
)
/


create sequence s_acc_no;

COMMENT ON TABLE tb_acc_info IS '숙소 정보'
/

COMMENT ON COLUMN tb_acc_info.acc_no IS '숙소정보 고유번호'
/

COMMENT ON COLUMN tb_acc_info.name IS '숙소 이름'
/

COMMENT ON COLUMN tb_acc_info.address IS '숙소 주소'
/

COMMENT ON COLUMN tb_acc_info.contact IS '숙소 연락처'
/

COMMENT ON COLUMN tb_acc_info.ment IS '숙소 멘트'
/

COMMENT ON COLUMN tb_acc_info.homepage IS '숙소 홈페이지'
/

COMMENT ON COLUMN tb_acc_info.intro IS '숙소_소개'
/

COMMENT ON COLUMN tb_acc_info.member_no IS '멤버회원번호'
/

COMMENT ON COLUMN tb_acc_info.main_file_name IS '메인 파일이름'
/

COMMENT ON COLUMN tb_acc_info.main_file_path IS '메인 파일경로'
/

COMMENT ON COLUMN tb_acc_info.sub_file_name1 IS '서브 파일이름1'
/

COMMENT ON COLUMN tb_acc_info.sub_file_path2 IS '서브 파일경로2'
/


ALTER TABLE tb_acc_info
    ADD CONSTRAINT FK_tb_acc_info_member_no_tb_me FOREIGN KEY (member_no)
        REFERENCES tb_member (member_no)
/

ALTER TABLE tb_acc_info
    ADD CONSTRAINT UC_main_file_name UNIQUE (main_file_name)
/

ALTER TABLE tb_acc_info
    ADD CONSTRAINT UC_main_file_path UNIQUE (main_file_path)
/

ALTER TABLE tb_acc_info
    ADD CONSTRAINT UC_sub_file_name1 UNIQUE (sub_file_name1)
/

ALTER TABLE tb_acc_info
    ADD CONSTRAINT UC_sub_file_path2 UNIQUE (sub_file_path2)
/


alter table tb_acc_info
rename column sub_file_path2 to sub_file_path1 ;

alter table tb_acc_info
add(sub_file_name2 varchar2(300) unique);

alter table tb_acc_info
add(sub_file_path2 varchar2(300) not null);

ALTER TABLE tb_acc_info
                   ADD (type VARCHAR2(30) not null)


-----------------------------------------------------------------------------------

CREATE TABLE tb_acc_album_pic
(
    name        VARCHAR2(300)    NOT NULL, 
    path        VARCHAR2(300)    NOT NULL, 
    acc_no      NUMBER(30)       NOT NULL, 
    album_no    NUMBER(30)       NOT NULL, 
    CONSTRAINT TB_ACC_ALBUM_PIC_PK PRIMARY KEY (album_no)
)
/

create sequence s_album_no;


COMMENT ON TABLE tb_acc_album_pic IS '숙소 앨범 사진'
/

COMMENT ON COLUMN tb_acc_album_pic.name IS '앨범 사진 이름'
/

COMMENT ON COLUMN tb_acc_album_pic.path IS '앨범 사진 경로'
/

COMMENT ON COLUMN tb_acc_album_pic.acc_no IS '숙소 고유번호'
/

COMMENT ON COLUMN tb_acc_album_pic.album_no IS '앨범 사진 고유변호'
/

ALTER TABLE tb_acc_album_pic
    ADD CONSTRAINT FK_tb_acc_album_pic_acc_no_tb_ FOREIGN KEY (acc_no)
        REFERENCES tb_acc_info (acc_no)
/

ALTER TABLE tb_acc_album_pic
    ADD CONSTRAINT UC_name UNIQUE (name)

------------------------------------------------------------------------------------

    
//시도해보기 



CREATE TABLE MINI2.TB_ACC_INFO
(
  ACC_NO          NUMBER(30)                    NOT NULL,
  NAME            VARCHAR2(300 BYTE)            NOT NULL,
  ADDRESS         VARCHAR2(300 BYTE)            NOT NULL,
  CONTACT         VARCHAR2(300 BYTE)            NOT NULL,
  MENT            VARCHAR2(300 BYTE)            NOT NULL,
  HOMEPAGE        VARCHAR2(300 BYTE)            NOT NULL,
  INTRO           VARCHAR2(3000 BYTE)           NOT NULL,
  MEMBER_NO       NUMBER                        NOT NULL,
  MAIN_FILE_NAME  VARCHAR2(300 BYTE)            NOT NULL,
  MAIN_FILE_PATH  VARCHAR2(300 BYTE)            NOT NULL,
  SUB_FILE_NAME1  VARCHAR2(300 BYTE)            NOT NULL,
  SUB_FILE_PATH1  VARCHAR2(300 BYTE)            NOT NULL,
  SUB_FILE_NAME2  VARCHAR2(300 BYTE),
  SUB_FILE_PATH2  VARCHAR2(300 BYTE)            NOT NULL,
  CITY            VARCHAR2(30 BYTE)             NOT NULL,
  TOWN            VARCHAR2(30 BYTE)             NOT NULL,
  TYPE            VARCHAR2(30 BYTE)             NOT NULL
)
TABLESPACE SYSTEM
PCTUSED    40
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            FREELISTS        1
            FREELIST GROUPS  1
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
MONITORING;

COMMENT ON TABLE MINI2.TB_ACC_INFO IS '숙소 정보';

COMMENT ON COLUMN MINI2.TB_ACC_INFO.ACC_NO IS '숙소정보 고유번호';

COMMENT ON COLUMN MINI2.TB_ACC_INFO.NAME IS '숙소 이름';

COMMENT ON COLUMN MINI2.TB_ACC_INFO.ADDRESS IS '숙소 주소';

COMMENT ON COLUMN MINI2.TB_ACC_INFO.CONTACT IS '숙소 연락처';

COMMENT ON COLUMN MINI2.TB_ACC_INFO.MENT IS '숙소 멘트';

COMMENT ON COLUMN MINI2.TB_ACC_INFO.HOMEPAGE IS '숙소 홈페이지';

COMMENT ON COLUMN MINI2.TB_ACC_INFO.INTRO IS '숙소_소개';

COMMENT ON COLUMN MINI2.TB_ACC_INFO.MEMBER_NO IS '멤버회원번호';

COMMENT ON COLUMN MINI2.TB_ACC_INFO.MAIN_FILE_NAME IS '메인 파일이름';

COMMENT ON COLUMN MINI2.TB_ACC_INFO.MAIN_FILE_PATH IS '메인 파일경로';

COMMENT ON COLUMN MINI2.TB_ACC_INFO.SUB_FILE_NAME1 IS '서브 파일이름1';

COMMENT ON COLUMN MINI2.TB_ACC_INFO.SUB_FILE_PATH1 IS '서브 파일경로2';


--  There is no statement for index MINI2.SYS_C007247.
--  The object is created when the parent object is created.

CREATE UNIQUE INDEX MINI2.TB_ACC_INFO_PK ON MINI2.TB_ACC_INFO
(ACC_NO)
LOGGING
TABLESPACE SYSTEM
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            FREELISTS        1
            FREELIST GROUPS  1
            BUFFER_POOL      DEFAULT
           );

CREATE UNIQUE INDEX MINI2.UC_MAIN_FILE_NAME ON MINI2.TB_ACC_INFO
(MAIN_FILE_NAME)
LOGGING
TABLESPACE SYSTEM
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            FREELISTS        1
            FREELIST GROUPS  1
            BUFFER_POOL      DEFAULT
           );

CREATE UNIQUE INDEX MINI2.UC_MAIN_FILE_PATH ON MINI2.TB_ACC_INFO
(MAIN_FILE_PATH)
LOGGING
TABLESPACE SYSTEM
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            FREELISTS        1
            FREELIST GROUPS  1
            BUFFER_POOL      DEFAULT
           );

CREATE UNIQUE INDEX MINI2.UC_SUB_FILE_NAME1 ON MINI2.TB_ACC_INFO
(SUB_FILE_NAME1)
LOGGING
TABLESPACE SYSTEM
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            FREELISTS        1
            FREELIST GROUPS  1
            BUFFER_POOL      DEFAULT
           );

CREATE UNIQUE INDEX MINI2.UC_SUB_FILE_PATH2 ON MINI2.TB_ACC_INFO
(SUB_FILE_PATH1)
LOGGING
TABLESPACE SYSTEM
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            FREELISTS        1
            FREELIST GROUPS  1
            BUFFER_POOL      DEFAULT
           );

ALTER TABLE MINI2.TB_ACC_INFO ADD (
  CONSTRAINT TB_ACC_INFO_PK
  PRIMARY KEY
  (ACC_NO)
  USING INDEX MINI2.TB_ACC_INFO_PK
  ENABLE VALIDATE
,  UNIQUE (SUB_FILE_NAME2)
  USING INDEX
    TABLESPACE SYSTEM
    PCTFREE    10
    INITRANS   2
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                PCTINCREASE      0
                FREELISTS        1
                FREELIST GROUPS  1
                BUFFER_POOL      DEFAULT
               )
  ENABLE VALIDATE
,  CONSTRAINT UC_MAIN_FILE_NAME
  UNIQUE (MAIN_FILE_NAME)
  USING INDEX MINI2.UC_MAIN_FILE_NAME
  ENABLE VALIDATE
,  CONSTRAINT UC_MAIN_FILE_PATH
  UNIQUE (MAIN_FILE_PATH)
  USING INDEX MINI2.UC_MAIN_FILE_PATH
  ENABLE VALIDATE
,  CONSTRAINT UC_SUB_FILE_NAME1
  UNIQUE (SUB_FILE_NAME1)
  USING INDEX MINI2.UC_SUB_FILE_NAME1
  ENABLE VALIDATE
,  CONSTRAINT UC_SUB_FILE_PATH2
  UNIQUE (SUB_FILE_PATH1)
  USING INDEX MINI2.UC_SUB_FILE_PATH2
  ENABLE VALIDATE);

ALTER TABLE MINI2.TB_ACC_INFO ADD (
  CONSTRAINT FK_TB_ACC_INFO_MEMBER_NO_TB_ME 
  FOREIGN KEY (MEMBER_NO) 
  REFERENCES MINI2.TB_MEMBER (MEMBER_NO)
  ENABLE VALIDATE);
  
  
---------------------------------------------------------------------------
DROP TABLE MINI2.TB_CODE CASCADE CONSTRAINTS;

CREATE TABLE MINI2.TB_CODE
(
  NO         NUMBER(30)                         NOT NULL,
  ID         NUMBER(30)                         NOT NULL,
  NAME       VARCHAR2(300 BYTE)                 NOT NULL,
  PARENT_ID  NUMBER(30)                         NOT NULL
)
TABLESPACE SYSTEM
PCTUSED    40
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            FREELISTS        1
            FREELIST GROUPS  1
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
MONITORING;

COMMENT ON TABLE MINI2.TB_CODE IS '공유코드(지역,숙박타입)';

COMMENT ON COLUMN MINI2.TB_CODE.NO IS '고유번호';

COMMENT ON COLUMN MINI2.TB_CODE.ID IS '아이디';

COMMENT ON COLUMN MINI2.TB_CODE.NAME IS '이름';

COMMENT ON COLUMN MINI2.TB_CODE.PARENT_ID IS '부모아이디';


CREATE UNIQUE INDEX MINI2.TB_CODE_PK ON MINI2.TB_CODE
(NO)
LOGGING
TABLESPACE SYSTEM
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            FREELISTS        1
            FREELIST GROUPS  1
            BUFFER_POOL      DEFAULT
           );

ALTER TABLE MINI2.TB_CODE ADD (
  CONSTRAINT TB_CODE_PK
  PRIMARY KEY
  (NO)
  USING INDEX MINI2.TB_CODE_PK
  ENABLE VALIDATE);

  
  --------------------------------------------------------------------------
  


    
    
    
