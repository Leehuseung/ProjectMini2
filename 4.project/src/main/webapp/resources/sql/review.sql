테이블 생성 및 시퀀스 등등 적어주세요

---------------------------------------------------

--시퀀스생성




------------------------리뷰테이블생성

CREATE TABLE tb_review
(
    board_no              NUMBER(7)         NOT NULL, 
    title                 VARCHAR2(100)     NOT NULL, 
    write_date            date              default sysdate,
    view_cnt              NUMBER(5)         default 0, 
    like_cnt              NUMBER(5)         default 0,
    content               VARCHAR2(3000)    NOT NULL, 
    review_category_no    NUMBER(2)         NOT NULL, 
    rating_category       VARCHAR2(20)      NOT NULL, 
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

--DROP TRIGGER tb_review_AI_TRG;
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

COMMENT ON COLUMN tb_review.review_category_no IS '카테고리'
/

COMMENT ON COLUMN tb_review.rating_category IS '리뷰평가'
/

COMMENT ON COLUMN tb_review.member_no IS '멤버회원번호'
/

ALTER TABLE tb_review
    ADD CONSTRAINT FK_tb_review_member_no_tb_memb FOREIGN KEY (member_no)
        REFERENCES tb_member (member_no) on delete cascade;
/