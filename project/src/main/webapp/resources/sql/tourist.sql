--테이블 생성 및 시퀀스 등등 적어주세요

---------------------------------------------------


--시퀀스 삭제
drop sequence s_tourist_board_no;

drop sequence s_tourist_file_no;

drop sequence s_tourist_comment_no;

--테이블 삭제
drop table tb_tourist_file;

drop table tb_tourist_comment;

drop table tb_tourist_board;


--시퀀스생성 (자동으로 만들어진 SEQ 부분이 삭제후 다시만들때 충돌일으킬것! 유의하기)

create sequence s_tourist_board_no;

create sequence s_tourist_file_no;

create sequence s_tourist_comment_no;

--시퀀스 확인
select * from user_sequences; 



/* 테이블 복사 복사 

insert into tb_tourist_board(member_no, board_no, title, nomination, tag, simple_introduce, introduce,
            fee, address, purpose, weekday, weekend, contact, content_title, content)
select 1, s_tourist_board_no.nextval, 'title' || s_tourist_board_no.currval,
       'nomination' || s_tourist_board_no.currval, 'tag' || s_tourist_board_no.currval,
       'simpleIntroduce' || s_tourist_board_no.currval, 'introduce' || s_tourist_board_no.currval,
       'fee' || s_tourist_board_no.currval, 'address' || s_tourist_board_no.currval,
       'purpose' || s_tourist_board_no.currval, 'weekday' || s_tourist_board_no.currval,
       'weekend' || s_tourist_board_no.currval, 'contact' || s_tourist_board_no.currval,
       'contentTitle' || s_tourist_board_no.currval, 'content' || s_tourist_board_no.currval
  from tb_tourist_board;
  
select count(*)
  from tb_tourist_board;
  
select * from user_sequences; 

commit;

 */


------------------------관광지 테이블 생성


CREATE TABLE tb_tourist_board
(
    member_no           NUMBER(7)         NOT NULL, 
    board_no            NUMBER(7)         NOT NULL, 
    title               VARCHAR2(200)     NOT NULL, 
    nomination          VARCHAR2(200)     NOT NULL, 
    tag                 VARCHAR2(200)     NOT NULL, 
    simple_introduce    VARCHAR2(200)     NOT NULL, 
    like_cnt            NUMBER(7)         default 0, 
    view_cnt            NUMBER(7)         default 0, 
    review_cnt          NUMBER(7)         default 0, 
    write_date          DATE              default sysdate, 
    introduce           VARCHAR2(200)     NOT NULL, 
    fee                 VARCHAR2(200)     NOT NULL, 
    address             VARCHAR2(200)     NOT NULL, 
    purpose             VARCHAR2(200)     NOT NULL, 
    weekday             VARCHAR2(200)     NOT NULL, 
    weekend             VARCHAR2(200)     NOT NULL, 
    contact             VARCHAR2(200)     NOT NULL, 
    update_date         DATE              default sysdate, 
    content_title       VARCHAR2(900)     NOT NULL, 
    content             VARCHAR2(3000)    NOT NULL, 
    like_status         NUMBER(1)         NULL, 
    CONSTRAINT TB_TOURIST_BOARD_PK PRIMARY KEY (board_no)
)
/
/*
CREATE SEQUENCE tb_tourist_board_SEQ
START WITH 1
INCREMENT BY 1;
/

CREATE OR REPLACE TRIGGER tb_tourist_board_AI_TRG
BEFORE INSERT ON tb_tourist_board 
REFERENCING NEW AS NEW FOR EACH ROW 
BEGIN 
    SELECT tb_tourist_board_SEQ.NEXTVAL
    INTO: NEW.board_no
    FROM DUAL;
END;
/
*/

--DROP TRIGGER tb_tourist_board_AI_TRG;
/

--DROP SEQUENCE tb_tourist_board_SEQ;
/

COMMENT ON TABLE tb_tourist_board IS '관광지'
/

COMMENT ON COLUMN tb_tourist_board.member_no IS '맴버회원번호'
/

COMMENT ON COLUMN tb_tourist_board.board_no IS '글번호'
/

COMMENT ON COLUMN tb_tourist_board.title IS '글제목'
/

COMMENT ON COLUMN tb_tourist_board.nomination IS '지명'
/

COMMENT ON COLUMN tb_tourist_board.tag IS '태그명'
/

COMMENT ON COLUMN tb_tourist_board.simple_introduce IS '간단설명'
/

COMMENT ON COLUMN tb_tourist_board.like_cnt IS '좋아요'
/

COMMENT ON COLUMN tb_tourist_board.view_cnt IS '조회수'
/

COMMENT ON COLUMN tb_tourist_board.review_cnt IS '리뷰수'
/

COMMENT ON COLUMN tb_tourist_board.write_date IS '글작성일'
/

COMMENT ON COLUMN tb_tourist_board.introduce IS '소개'
/

COMMENT ON COLUMN tb_tourist_board.fee IS '이용요금'
/

COMMENT ON COLUMN tb_tourist_board.address IS '주소'
/

COMMENT ON COLUMN tb_tourist_board.purpose IS '주요목적'
/

COMMENT ON COLUMN tb_tourist_board.weekday IS '평일이용시간'
/

COMMENT ON COLUMN tb_tourist_board.weekend IS '주말이용시간'
/

COMMENT ON COLUMN tb_tourist_board.contact IS '연락처'
/

COMMENT ON COLUMN tb_tourist_board.update_date IS '최종수정일'
/

COMMENT ON COLUMN tb_tourist_board.content_title IS '글상세내용제목'
/

COMMENT ON COLUMN tb_tourist_board.content IS '글상세내용'
/

COMMENT ON COLUMN tb_tourist_board.like_status IS '좋아요상태'
/

ALTER TABLE tb_tourist_board
    ADD CONSTRAINT FK_tb_tourist_board_member_no_ FOREIGN KEY (member_no)
        REFERENCES tb_member (member_no) on delete cascade
/

------------------------관광지 댓글 테이블 생성


CREATE TABLE tb_tourist_comment
(
    board_no      NUMBER(7)        NOT NULL, 
    member_no     NUMBER(7)        NULL, 
    comment_no    NUMBER(7)        NOT NULL, 
    name          VARCHAR2(20)     NULL, 
    content       VARCHAR2(500)    NULL, 
    write_date    DATE             default sysdate, 
    rating        number(1)        NULL, 
    CONSTRAINT TB_TOURIST_COMMENT_PK PRIMARY KEY (comment_no)
)
/*

CREATE SEQUENCE tb_tourist_comment_SEQ
START WITH 1
INCREMENT BY 1;
/

CREATE OR REPLACE TRIGGER tb_tourist_comment_AI_TRG
BEFORE INSERT ON tb_tourist_comment 
REFERENCING NEW AS NEW FOR EACH ROW 
BEGIN 
    SELECT tb_tourist_comment_SEQ.NEXTVAL
    INTO: NEW.board_no
    FROM DUAL;
END;
*/

--DROP TRIGGER tb_tourist_comment_AI_TRG;
/

--DROP SEQUENCE tb_tourist_comment_SEQ;
/

COMMENT ON TABLE tb_tourist_comment IS '관광지_댓글'
/

COMMENT ON COLUMN tb_tourist_comment.board_no IS '댓글번호'
/

COMMENT ON COLUMN tb_tourist_comment.member_no IS '회원번호'
/

COMMENT ON COLUMN tb_tourist_comment.comment_no IS '글번호'
/

COMMENT ON COLUMN tb_tourist_comment.name IS '댓글작성자'
/

COMMENT ON COLUMN tb_tourist_comment.content IS '댓글내용'
/

COMMENT ON COLUMN tb_tourist_comment.write_date IS '댓글등록일'
/

COMMENT ON COLUMN tb_tourist_comment.rating IS '평점'
/



------------------------관광지 파일 테이블 생성

CREATE TABLE tb_tourist_file
(
    file_no     NUMBER(7)        NOT NULL, 
    board_no    NUMBER(7)        NOT NULL, 
    path        VARCHAR2(300)    NOT NULL, 
    name        VARCHAR2(100)    NOT NULL, 
    CONSTRAINT TB_TOURIST_FILE_PK PRIMARY KEY (file_no)
)
/*

CREATE SEQUENCE tb_tourist_file_SEQ
START WITH 1
INCREMENT BY 1;
/

CREATE OR REPLACE TRIGGER tb_tourist_file_AI_TRG
BEFORE INSERT ON tb_tourist_file 
REFERENCING NEW AS NEW FOR EACH ROW 
BEGIN 
    SELECT tb_tourist_file_SEQ.NEXTVAL
    INTO: NEW.file_no
    FROM DUAL;
END;
*/

--DROP TRIGGER tb_tourist_file_AI_TRG;
/

--DROP SEQUENCE tb_tourist_file_SEQ;
/

COMMENT ON TABLE tb_tourist_file IS '관공지_파일'
/

COMMENT ON COLUMN tb_tourist_file.file_no IS '파일번호'
/

COMMENT ON COLUMN tb_tourist_file.board_no IS '글번호'
/

COMMENT ON COLUMN tb_tourist_file.path IS '파일경로'
/

COMMENT ON COLUMN tb_tourist_file.name IS '시스템이름'
/


commit;


