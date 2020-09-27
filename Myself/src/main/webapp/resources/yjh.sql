create table yjh_table(
  
   y_no number(38),
   y_title varchar2(1000),
   y_writer varchar2(1000),
   y_publish varchar2(1000)
   
);

select * from yjh_table;

create sequence yjh_seq
start with 1
increment by 1;

insert into YJH_TABLE 
values(yjh_seq.nextval, '즐겁게 살자', '윤신영', 'FlowerPot');

insert into YJH_TABLE
values(yjh_seq.nextval, '난 개발자다', '권누리', 'FlowerPot');


