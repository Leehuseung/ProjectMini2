테이블 생성 및 시퀀스 등등 적어주세요

---------------------------------------------------

CREATE TABLE tb_member
(
    member_no     NUMBER(7)       NOT NULL, 
    id            VARCHAR2(15)    NOT NULL, 
    pass          VARCHAR2(15)    NOT NULL, 
    email         VARCHAR2(30)    NOT NULL, 
    join_date     DATE default sysdate  NOT NULL, 
    name          VARCHAR2(20)    NOT NULL, 
    report_cnt    NUMBER		  NOT NULL, 
    CONSTRAINT TB_MEMBER_PK PRIMARY KEY (member_no)
)

ALTER TABLE tb_member MODIFY(report_cnt number default 0);

/

CREATE SEQUENCE tb_member_SEQ
START WITH 1
INCREMENT BY 1;
/

CREATE OR REPLACE TRIGGER tb_member_AI_TRG
BEFORE INSERT ON tb_member 
REFERENCING NEW AS NEW FOR EACH ROW 
BEGIN 
    SELECT tb_member_SEQ.NEXTVAL
    INTO: NEW.member_no
    FROM DUAL;
END;
/

--DROP TRIGGER tb_member_AI_TRG;
/

--DROP SEQUENCE tb_member_SEQ;
/

COMMENT ON TABLE tb_member IS '회원'
/

COMMENT ON COLUMN tb_member.member_no IS '회원번호'
/

COMMENT ON COLUMN tb_member.id IS '아이디'
/

COMMENT ON COLUMN tb_member.pass IS '비밀번호'
/

COMMENT ON COLUMN tb_member.email IS '이메일'
/

COMMENT ON COLUMN tb_member.join_date IS '가입일'
/

COMMENT ON COLUMN tb_member.name IS '이름'
/

COMMENT ON COLUMN tb_member.report_cnt IS '신고횟수'
/

ALTER TABLE tb_member
    ADD CONSTRAINT UC_id UNIQUE (id)
/

ALTER TABLE tb_member
    ADD CONSTRAINT UC_email UNIQUE (email)
/

create sequence s_member_no;