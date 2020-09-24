create table f_delivery(
	dno number(30) primary key,
	deliver_num varchar2(100),
	postcode varchar2(100),
	street_address varchar2(100),
	parcel_address varchar2(100),
	detail_address varchar2(100),
	more_infomation varchar2(100),
	deliver_state varchar2(100)
);

create sequence dno_seq  start with 1 increment by 1;
	
