create table f_coupon(
	couNo int
	,couponName varchar2(100)
	,discountMoney int default 0
	,discountPercent int default 0
	,startDate date
	,endDate date
);
drop table f_coupon;

create sequence couNo_seq increment by 1 start with 1;

select * from f_coupon

drop sequence couNo_seq;
