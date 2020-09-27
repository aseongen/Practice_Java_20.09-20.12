create table f_attachFile (
	atno number(30),
	cno number(30) default 0,
	mgno number(30) default 0,
	uuidName varchar2(200) not null,
	originalFileName varchar2(200) not null,
	uploadFolderPath varchar2(200) not null,
	mappingURL varchar2(200) not null,
	realName varchar2(200) not null,
	primary key (atno)
	-- constraint  foreign key (cno) references f_cosmetic(cno)   외래키 제약조건
	-- constraint  foreign key (cno) references f_cosmeticReview(cno)
);
create sequence atno_seq start with 1 increment by 1;

drop table f_attachFile;
select * from f_attachFile;

select c.*,a.mappingURL from f_cosmetic c left outer join f_attachFile a on c.cno=a.cno where c.cno = 2141;