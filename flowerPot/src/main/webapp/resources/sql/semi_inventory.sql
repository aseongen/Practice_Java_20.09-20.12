create table f_cosm(
	cno number(38),   --화장품 번호
	name varchar2(1000),  -- 화장품 이름
	proOption varchar2(100), --상품 색상, 사이즈
	stockNumber number(38),-- 기존 상품 수량 
	primary key(cno) 
	);

drop table semi_inventory;

select * from semi_inventory ;

insert into semi_inventory values (111,'보라스킨','blue/s',3,3,'무제한');
insert into semi_inventory values (222,'초록스킨','green/M',3,3,'무제한');
insert into semi_inventory values (333,'노란스킨','yellow/L',3,3,'무제한');
insert into semi_inventory values (444,'빨간스킨','Red/M',3,3,'무제한');

