create table f_cosmeticReview(
	crno number(30),
	cno number(30),
	mno number(30),
	category varchar2(50),   -- 상품문의인지 상품평인지
	rating number(5) ,  --평점
	id varchar2(50),    -- 회원 아이디
	nickname varchar2(50),    -- 회원 닉네임
	content varchar2(3000),  -- 평가내용
	title varchar2(100),    -- 평가제목
	primary key (crno)
);
-- 시퀀스
create sequence crno_seq  start with 1 increment by 1;

select * from f_cosmeticReview;
drop table f_cosmeticReview;