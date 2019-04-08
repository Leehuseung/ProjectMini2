테이블 생성 및 시퀀스 등등 적어주세요

---------------------------------------------------

--시퀀스생성
create sequence s_board_no;

create sequence s_board_file_no;

--board 테이블 생성

CREATE TABLE tb_restraunt_board
(
    member_no         NUMBER(7)         NULL, 
    board_no          NUMBER(7)         NOT NULL, 
    name              VARCHAR2(100)     NOT NULL, 
    intro             VARCHAR2(3000)    NOT NULL, 
    like_cnt          NUMBER(7)         default 0, 
    view_cnt          NUMBER(7)         default 0, 
    food_category     NUMBER(1)         NOT NULL, 
    business_hours    VARCHAR2(300)     NOT NULL, 
    amendity          VARCHAR2(300)     NOT NULL, 
    like_status       NUMBER(1)         NULL, 
    CONSTRAINT TB_RESTRAUNT_BOARD_PK PRIMARY KEY (board_no)
)
/

CREATE SEQUENCE tb_restraunt_board_SEQ
START WITH 1
INCREMENT BY 1;
/

CREATE OR REPLACE TRIGGER tb_restraunt_board_AI_TRG
BEFORE INSERT ON tb_restraunt_board 
REFERENCING NEW AS NEW FOR EACH ROW 
BEGIN 
    SELECT tb_restraunt_board_SEQ.NEXTVAL
    INTO: NEW.board_no
    FROM DUAL;
END;
/

--DROP TRIGGER tb_restraunt_board_AI_TRG;
/

--DROP SEQUENCE tb_restraunt_board_SEQ;
/

COMMENT ON TABLE tb_restraunt_board IS '음식테이블'
/

COMMENT ON COLUMN tb_restraunt_board.member_no IS '회원번호'
/

COMMENT ON COLUMN tb_restraunt_board.board_no IS '글번호'
/

COMMENT ON COLUMN tb_restraunt_board.name IS '가게이름'
/

COMMENT ON COLUMN tb_restraunt_board.intro IS '소개글'
/

COMMENT ON COLUMN tb_restraunt_board.like_cnt IS '좋아요'
/

COMMENT ON COLUMN tb_restraunt_board.view_cnt IS '조회수'
/

COMMENT ON COLUMN tb_restraunt_board.food_category IS '음식카테고리'
/

COMMENT ON COLUMN tb_restraunt_board.business_hours IS '영업시간'
/

COMMENT ON COLUMN tb_restraunt_board.amendity IS '편의시설'
/

COMMENT ON COLUMN tb_restraunt_board.like_status IS '좋아요상태'
/

ALTER TABLE tb_restraunt_board
    ADD CONSTRAINT FK_tb_restraunt_board_member_n FOREIGN KEY (member_no)
        REFERENCES tb_member (member_no) on delete cascade
/



---------------------------------------------파일 테이블 생성
CREATE TABLE tb_restraunt_file
(
    board_no    NUMBER(7)        NOT NULL, 
    file_no     NUMBER(7)        NOT NULL, 
    name        VARCHAR2(100)    NOT NULL, 
    path        VARCHAR2(300)    NOT NULL, 
    CONSTRAINT TB_RESTRAUNT_FILE_PK PRIMARY KEY (file_no)
)
/

CREATE SEQUENCE tb_restraunt_file_SEQ
START WITH 1
INCREMENT BY 1;
/

CREATE OR REPLACE TRIGGER tb_restraunt_file_AI_TRG
BEFORE INSERT ON tb_restraunt_file 
REFERENCING NEW AS NEW FOR EACH ROW 
BEGIN 
    SELECT tb_restraunt_file_SEQ.NEXTVAL
    INTO: NEW.board_no
    FROM DUAL;
END;
/

--DROP TRIGGER tb_restraunt_file_AI_TRG;
/

--DROP SEQUENCE tb_restraunt_file_SEQ;
/

COMMENT ON TABLE tb_restraunt_file IS '파일테이블'
/

COMMENT ON COLUMN tb_restraunt_file.board_no IS '글번호'
/

COMMENT ON COLUMN tb_restraunt_file.file_no IS '파일번호'
/

COMMENT ON COLUMN tb_restraunt_file.name IS '이름'
/

COMMENT ON COLUMN tb_restraunt_file.path IS '경로'
/

ALTER TABLE tb_restraunt_file
    ADD CONSTRAINT FK_tb_restraunt_file_board_no_ FOREIGN KEY (board_no)
        REFERENCES tb_restraunt_board (board_no) on delete cascade
/


--지역시퀀스
 

---------------지역테이블



select *
  from tab;


CREATE TABLE tb_code(
    no             NUMBER(30)      NOT NULL, 
    groups          NUMBER(30)      NOT NULL, 
    value          NUMBER(30)      NOT NULL, 
    value_name     VARCHAR2(30)    NOT NULL, 
    detail         NUMBER(30)      NULL, 
    detail_name    VARCHAR2(30)    NULL, 
    CONSTRAINT TB_CODE_PK PRIMARY KEY (no)
)
/

CREATE SEQUENCE tb_code_SEQ
START WITH 1
INCREMENT BY 1;
/

CREATE OR REPLACE TRIGGER tb_code_AI_TRG
BEFORE INSERT ON tb_code 
REFERENCING NEW AS NEW FOR EACH ROW 
BEGIN 
    SELECT tb_code_SEQ.NEXTVAL
    INTO: NEW.no
    FROM DUAL;
END;
/

--DROP TRIGGER tb_code_AI_TRG;
/

--DROP SEQUENCE tb_code_SEQ;
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
/