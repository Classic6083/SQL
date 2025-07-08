use classic;

create table student
(
stuID char(5),
stuName varchar(50),
stuDOB date,
stuAge int

);

desc student;

/--  to change the name of table
rename table student to StudentINFO;


/-- to add column name into the existing table 
alter table studentINFO
add stuClass int,
add pincode int;

desc studentINFO;


/-- to delete an column from an existing table
alter table studentINFO
drop column pincode;

desc studentINFO;


/-- to change the column name from existing table
alter table studentINFO
rename column stuID to StudentID,
rename column stuNAME to StudentNAME,
rename column stuAge to StudentAGE;

desc studentINFO;


/-- to change the data_type 
alter table studentINFO
modify StudentAGE bigint,
modify stuClass char(5);

desc studentINFO;



/-- to delete table from data_base 

/-- first create an table 
use classic;
create table EMP
(
emp_ID bigint,
emp_Name varchar(30),
emp_Salary int
);

desc EMP;

drop table EMP;

desc EMP;

desc studentINFO;

create table employee
(
empID int,
empNAME varchar(50),
empSALARY int,
empMAIL_ID varchar(50),
empADDRESS varchar(50)

);

desc employee;

use classic;
/-- to insert the records into the table 

insert into employee values (5,"Kiran Jadhav",35000,"kiran jadhav@gmail.com","Karve Nagar Pune");

select *
from employee





