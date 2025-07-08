create database triggers1;
use triggers1;

create table emp
(
empno int,
ename varchar(50),
sal int,
working_hours int
);

select * from emp;

insert into emp values(1,'karan',2500 ,-25),
					   (2,'kiran',3500,-30);
                       
                       
                       
create table emp1
(
empno int,
ename varchar(200),
sal int 
);

insert into emp1 values (1,'karan',3000),
                         (2,'om',4000);

create table audit 
(
empno int ,
description varchar(200)
);

select * from audit;


create table product
(
pid int, 
pname varchar(200),
price int
);

insert into product values(1,'mobile1',10000),
                          (2,'mobile2',30000),
                          (3,'mobile3',40000);
                          
                          
update product
set price = 40000
where pid = 1;


create table stu (
sid int, 
sname varchar (50),
class int
);
select * from stu;

insert into stu values (1,'karan',5),
                        (2,'kiran',10),
                        (3,'om',3);
                        
update stu set class=class+1;


create table stu_info(
user varchar(100),
description varchar(200)
);
select * from stu_info;



create table emp3(
empno int,
ename varchar(50),
sal int 
);

insert into emp3 values (1,'karan',2000),
						(2,'kiran',3000);


create table backup (
empno int,
ename varchar (50),
sal int ,
toe timestamp default now()
);


delete from emp3 ;


select * from emp3;

select * from backup;

                       
                       