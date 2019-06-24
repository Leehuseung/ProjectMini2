--프로젝트 디비생성, 권한주기
--create user mini2 identified by mini2; 

--grant connect, resource,dba to mini2;
----------------------------------------------
--테이블 생성 및 시퀀스 등등 적어주세요

--테이블 조회
select * from tb_review_file;

select * from tb_review;

select * from tb_review_comment;


------------------------리뷰테이블생성

CREATE TABLE tb_review
(
    board_no              NUMBER(7)         NOT NULL, 
    title                 VARCHAR2(100)     NOT NULL, 
    write_date            date              default sysdate,
    view_cnt              NUMBER(5)         default 0, 
    like_cnt              NUMBER(5)         default 0,
    content               VARCHAR2(3000)    NOT NULL, 
    review_category_no    NUMBER(5)   		NOT NULL, 
    rating_category_no    NUMBER(5)   		NOT NULL, 
    member_no             NUMBER(7)         NULL, 
    CONSTRAINT TB_REVIEW_PK PRIMARY KEY (board_no)
)
/

CREATE SEQUENCE tb_review_SEQ
START WITH 1
INCREMENT BY 1;
/

CREATE OR REPLACE TRIGGER tb_review_AI_TRG
BEFORE INSERT ON tb_review 
REFERENCING NEW AS NEW FOR EACH ROW 
BEGIN 
    SELECT tb_review_SEQ.NEXTVAL
    INTO: NEW.board_no
    FROM DUAL;
END;
/

DROP TRIGGER tb_review_AI_TRG;
/

--DROP SEQUENCE tb_review_SEQ;
/

COMMENT ON COLUMN tb_review.board_no IS '글번호'
/

COMMENT ON COLUMN tb_review.title IS '글제목'
/

COMMENT ON COLUMN tb_review.write_date IS '작성일'
/

COMMENT ON COLUMN tb_review.view_cnt IS '조회수'
/

COMMENT ON COLUMN tb_review.like_cnt IS '좋아요수'
/

COMMENT ON COLUMN tb_review.content IS '글내용'
/

COMMENT ON COLUMN tb_review.review_category_no IS '리뷰카테고리번호'
/

COMMENT ON COLUMN tb_review.rating_category_no IS '리뷰평가카테고리번호'
/

COMMENT ON COLUMN tb_review.member_no IS '멤버회원번호'
/

ALTER TABLE tb_review
    ADD CONSTRAINT FK_tb_review_member_no_tb_memb FOREIGN KEY (member_no)
        REFERENCES tb_member (member_no) on delete cascade;
/


-------------------------------------------

-- tb_review_comment Table Create SQL
CREATE TABLE tb_review_comment
(
    comment_no    NUMBER(5)         NOT NULL, 
    board_no      NUMBER(7)         NOT NULL, 
    report_cnt    NUMBER(5)         default 0, 
    like_cnt      NUMBER(5)         default 0, 
    content       VARCHAR2(1000)    NOT NULL, 
    write_date    date              default sysdate, 
    member_no     NUMBER(7)         NULL, 
    CONSTRAINT TB_REVIEW_COMMENT_PK PRIMARY KEY (comment_no)
)
/

CREATE SEQUENCE tb_review_comment_SEQ
START WITH 1
INCREMENT BY 1;
/

CREATE OR REPLACE TRIGGER tb_review_comment_AI_TRG
BEFORE INSERT ON tb_review_comment 
REFERENCING NEW AS NEW FOR EACH ROW 
BEGIN 
    SELECT tb_review_comment_SEQ.NEXTVAL
    INTO: NEW.comment_no
    FROM DUAL;
END;
/

DROP TRIGGER tb_review_comment_AI_TRG;
/

--DROP SEQUENCE tb_review_comment_SEQ;
/

COMMENT ON COLUMN tb_review_comment.comment_no IS '댓글번호'
/

COMMENT ON COLUMN tb_review_comment.board_no IS '글번호'
/

COMMENT ON COLUMN tb_review_comment.report_cnt IS '신고하기'
/

COMMENT ON COLUMN tb_review_comment.like_cnt IS '좋아요'
/

COMMENT ON COLUMN tb_review_comment.content IS '댓글내용'
/

COMMENT ON COLUMN tb_review_comment.write_date IS '댓글등록일'
/

COMMENT ON COLUMN tb_review_comment.member_no IS '멤버회원번호'
/

ALTER TABLE tb_review_comment
    ADD CONSTRAINT FK_tb_review_comment_board_no_ FOREIGN KEY (board_no)
        REFERENCES tb_review (board_no)on delete cascade
/

ALTER TABLE tb_review_comment
    ADD CONSTRAINT FK_tb_review_comment_member_no FOREIGN KEY (member_no)
        REFERENCES tb_member (member_no)on delete cascade;
/


----------------------------------------------리뷰파일생성
-- tb_review_file Table Create SQL
CREATE TABLE tb_review_file
(
    file_no        NUMBER(5)        NOT NULL, 
    board_no       NUMBER(7)        NOT NULL, 
    file_size           NUMBER(7)        NOT NULL, 
    path           VARCHAR2(200)    NOT NULL, 
    system_name    VARCHAR2(300)    NOT NULL, 
    org_name       VARCHAR2(300)    NOT NULL, 
    CONSTRAINT TB_REVIEW_FILE_PK PRIMARY KEY (file_no)
)
/

CREATE SEQUENCE tb_review_file_SEQ
START WITH 1
INCREMENT BY 1;
/

CREATE OR REPLACE TRIGGER tb_review_file_AI_TRG
BEFORE INSERT ON tb_review_file 
REFERENCING NEW AS NEW FOR EACH ROW 
BEGIN 
    SELECT tb_review_file_SEQ.NEXTVAL
    INTO: NEW.file_no
    FROM DUAL;
END;
/

DROP TRIGGER tb_review_file_AI_TRG;
/

--DROP SEQUENCE tb_review_file_SEQ;
/

COMMENT ON COLUMN tb_review_file.file_no IS '파일번호'
/

COMMENT ON COLUMN tb_review_file.board_no IS '글번호'
/

COMMENT ON COLUMN tb_review_file.file_size IS '파일크기'
/

COMMENT ON COLUMN tb_review_file.path IS '파일경로'
/

COMMENT ON COLUMN tb_review_file.system_name IS '시스템이름'
/

COMMENT ON COLUMN tb_review_file.org_name IS '원본파일이름'
/

ALTER TABLE tb_review_file
    ADD CONSTRAINT FK_tb_review_file_board_no_tb_ FOREIGN KEY (board_no)
        REFERENCES tb_review (board_no)on delete cascade;
/
commit;


---------------------------------------------------

--시퀀스생성
create sequence s_review_no;

create sequence s_review_file_no;

create sequence s_review_comment_no;

--시퀀스 확인
select * from user_sequences; 




--테이블 삭제
drop table tb_review_file;

drop table tb_review_comment;

drop table tb_review;

--시퀀스 삭제
drop sequence s_review_no;

drop sequence s_review_file_no;

drop sequence s_review_comment_no;
