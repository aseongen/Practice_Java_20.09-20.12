create table tf_member(
	mno number(38) primary key
	,id varchar2(100) unique
	,name varchar2(100)
);

drop table tf_member;

create table f_member(
	mno number(38) primary key
	,id varchar2(100) unique
	,password varchar2(100)
	,name varchar2(100)
	,nickname varchar2(100)
	,address varchar2(100)
	,email varchar2(100)
	,gender varchar2(100)
	,birth varchar2(100)
	,member_rank number(38)
	,regdate date
);

select * from tF_MEMBER;

drop table f_member;

select * from employee emp 
		left outer join department dept on emp.deptNo = dept.deptNo 
		left outer join position po on emp.poNo = po.poNo ORDER BY empNo DESC;
		
		
--employee테이블과 department,position테이블 join후 로우넘까지 성공		
select * from
(select rownum rnum, empA.empNo, empA.empId, empA.empName, empA.deptName, empA.poName from 
(select * from employee emp 
left outer join department dept on emp.deptNo = dept.deptNo 
left outer join position po on emp.poNo = po.poNo 
ORDER BY empNo DESC) empA)
WHERE  rnum BETWEEN 1 AND 10;
		
		
		
		