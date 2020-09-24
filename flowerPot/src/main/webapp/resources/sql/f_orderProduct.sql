create table f_orderProduct(
	ono number(30) primary key,
	mno number(30),  -- 제약조건
	cno number(30),	 -- 제약조건
	dno number(30),  -- 제약조건
	order_num varchar2(100),  --주문번호
	amount number(30),   --주문량
	state varchar2(100),  -- 
	deliver_state varchar2(100),  -- 배송상태
	member_rank varchar2(30),  --회원등급
	point number(30),   --포인트 사용
	coupon_name varchar2(50),   -- 사용한 쿠폰번호
	regdate date,   -- 구입날짜
	tel varchar2(30),    -- 비회원용 전화번호
	email varchar2(100),   -- 비회원용 이메일
	final_price number(30)
);


create sequence ono_seq increment by 1 start with 1;

drop table f_orderProduct;
select * from f_orderProduct;
=======

drop sequence ordPro_seq;

insert into f_orderProduct 
values(ordPro_seq.nextval, 1, 111, 22222, 2,
'결제완료',sysdate,'배송준비중','기본랭크','1500p','쿠폰1개')

select * from f_orderProduct ;
