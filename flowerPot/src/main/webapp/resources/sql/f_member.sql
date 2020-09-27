create table f_member (
    mno number(30),
    id varchar2(100) not null,
    password varchar2(100),
    name varchar2(20) not null,
    nickname varchar2(50),
    address varchar2(100),
    email varchar2(100) unique,
    gender varchar2(2),    
    tel varchar(50),
    birth varchar2(10),
    member_rank varchar2(15),
    enabled char(1) default '1',
    regdate date,
    primary key(mno),
    unique(id),
    unique(email)
);


---------------------------------------------------------------------------------------------------------------------------------------------------
select mno_seq.nextval from dual;

drop sequence mno_seq;
select * from f_member;

drop table f_member;
delete from f_member where name='윤신영';

insert into f_member (mno,id,password,name,nickname,address,email,gender,birth,member_rank,authority ) 
values (mno_seq.nextval,'phantom1','tlsdud5089','윤신영','윤신영','주소','phantom_ysy@naver.com','M','11-29','골드','작성자');

update f_member set tel='010-1111-1111' where name='윤신영';
insert into f_member (mno,id,password,name,nickname,address,email,gender,birth,member_rank,authority ) 


select id, password from f_member where id = 'user0';
values (mno_seq.nextval,'phantom2','tlsdud5089','윤신영','윤신영','주소','phantom_ysy@naver.com','M','11-29','골드','일반회원');

alter table f_member add(tel varchar2(100));