-- 게시판 테이블 생성
 create table mvc_border(
  board_no int primary key
  ,title varchar2(255) 
  ,content varchar2(255) 
  ,writer varchar2(50)
  ,reg_date varchar2(50)
  ,view_cnt int (50)
 );
 select * from mvc_boarder
 