-- 게시판 테이블 생성
create table mvc_board(
	board_no int primary key
	,title varchar2(255) not null
	,content varchar2(4000) null
	,writer varchar(50) not null
	,reg_date date 
	,view_cnt int default 0	
);

drop table mvc_board;

select * from MVC_BOARD order by board_no desc;

select * from user_sequences;
--잠만이거머드라 ㅂ

create sequence mbno_seq
start with 1
increment by 1
nocache;
--인서트할때는 싹다집어넣어줘야합니다.

