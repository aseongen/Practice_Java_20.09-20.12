
create table mvc_user(
 account varchar(80) primary key,
 password varchar(80) not null,
 name varchar(100) not null,
 reg_date DATE 
);

select * from mvc_user;

drop table mvc_user;
INSERT INTO mvc_user
		VALUES ('account', 'password', 'name', sysdate)

