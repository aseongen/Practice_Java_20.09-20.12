-- magazine

create table f_magazine (
	mgno number(30),
	title varchar2(100) not null,
	content varchar2(3000) not null,
	category varchar2(50),
	regdate date,
	moddate date,
	UUIDName varchar2(100),
	originalName varchar2(100),
	rootfolder varchar2(100),
	constraint f_magazine_mgno_pk primary key (mgno)
	-- mno 필요
	-- mno 외래키 제약조건 필요
);

drop table magazine;
select * from magazine;

-- 메거진 시퀀스
create sequence mgno_seq increment by 1 start with 1;

