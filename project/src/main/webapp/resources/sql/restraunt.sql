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
    like_cnt          NUMBER(7) default 0         NOT NULL, 
    view_cnt          NUMBER(7) default 0        NOT NULL, 
    food_category     NUMBER(1)         NOT NULL, 
    business_hours    VARCHAR2(300)     NOT NULL, 
    amendity          VARCHAR2(300)     NOT NULL, 
    like_status       NUMBER(1)         NULL, 
    CONSTRAINT TB_RESTRAUNT_BOARD_PK PRIMARY KEY (board_no)
)
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

