--카테고리 조회
select * from tb_category;

--카테고리 삭제
drop table tb_category;


--카테고리 생성
CREATE TABLE tb_category
(
    code_no       NUMBER(5)      NOT NULL, 
    name          VARCHAR2(50)    NOT NULL, 
    group_code   NUMBER(5)     NOT NULL, 
    CONSTRAINT TB_CATEGORY_PK PRIMARY KEY (code_no)
);

commit;

--카테고리 추가
insert into tb_category(code_no, name, group_code)
values ( 1,'관광',1);

insert into tb_category(code_no, name, group_code)
values ( 2,'맛집',1);

insert into tb_category(code_no, name, group_code)
values ( 3,'숙박',1);

insert into tb_category(code_no, name, group_code)
values ( 11,'★★★★★ 아주 좋아요',2);


insert into tb_category(code_no, name, group_code)
values ( 12,'★★★★☆ 맘에 들어요',2);

insert into tb_category(code_no, name, group_code)
values ( 13,'★★★☆☆ 보통이에요',2);

insert into tb_category(code_no, name, group_code)
values ( 14,'★★☆☆☆ 별로에요',2);

insert into tb_category(code_no, name, group_code)
values ( 15,'★☆☆☆☆ 추천하지않아요',2);

