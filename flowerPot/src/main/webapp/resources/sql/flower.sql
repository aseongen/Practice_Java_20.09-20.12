create table aaa(
	ano number(30) null,
	name varchar2(50),
	primary key(ano)
);

drop table aaa;

create table bbb(
	ano number(30),
	name varchar2(50),
	constraint fk_code1 foreign key (ano) references aaa(ano)
);

drop table bbb;
s
insert into aaa values (1,'aaa');
insert into bbb values (null,'aaa');