테이블 생성 및 시퀀스 등등 적어주세요

---------------------------------------------------
CREATE TABLE tb_code
(
    no             NUMBER(30)      NOT NULL, 
    groups          NUMBER(30)      NOT NULL, 
    value          NUMBER(30)      NOT NULL, 
    value_name     VARCHAR2(30)    NOT NULL, 
    detail         NUMBER(30)      NULL, 
    detail_name    VARCHAR2(30)    NULL, 
    CONSTRAINT TB_CODE_PK PRIMARY KEY (no)
)
/

CREATE SEQUENCE s_code_no
START WITH 1
INCREMENT BY 1;
/



COMMENT ON TABLE tb_code IS '공유코드(지역,숙박타입)'
/

COMMENT ON COLUMN tb_code.no IS '번호'
/

COMMENT ON COLUMN tb_code.groups IS '그룹'
/

COMMENT ON COLUMN tb_code.value IS '값'
/

COMMENT ON COLUMN tb_code.value_name IS '값_이름'
/

COMMENT ON COLUMN tb_code.detail IS '상세'
/

COMMENT ON COLUMN tb_code.detail_name IS '상세_이름'

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

