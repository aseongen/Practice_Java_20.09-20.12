create table f_orderProduct(

  ono number(38) -- 게시글 번호
  ,mno number(38) references f_member (mno) -- f_member
  ,cno number(38) references f_cosmetic (cno)  -- f_cosmetic
  ,order_num varchar2(1000)
  ,amount number(38)
  ,state varchar2(1000)
  ,regdate DATE
  ,deliver_state varchar2(2000)
  ,member_rank varchar2(1000)
  ,point varchar2(1000)
  ,coupon varchar2(1000)
  ,primary key(ono)

  );

create sequence
ordPro_seq
start with 1
increment by 1;

drop sequence ordPro_seq;

insert into f_orderProduct 
values(ordPro_seq.nextval, 1, 111, 22222, 2,
'결제완료',sysdate,'배송준비중','기본랭크','1500p','쿠폰1개')

drop table f_orderProduct;
select * from f_orderProduct ;