use excelr;
desc amazon ;

/* syntax to drop column from existing table 
alter table table_name 
drop column column_name;
*/

alter table amazon
drop column location;

desc amazon;

alter table amazon
drop column pincode,
drop column payment_details,
drop column payment_mode;

desc amazon;

/*
 Syntax to change the column name 
alter table table_name
remane column existing column_name to new column_name;
*/

alter table amazon
rename column address to EmpAdress;

desc amazon;

alter table amazon
rename column order_id to EMP_ID,
rename column rating to RATING;

desc amazon;


/* 
 Syntax to change the data_type 
alter table table_name
mofify column_name data_type;
*/

alter table amazon
modify EMP_ID char(50);

desc amazon;

/*
 Drop :
it is a command to remove table form database 
Syntax:-
drop table table_name;
*/

drop table student;
create table employee
(
empno int,
empname varchar(50),
salary int,
empmailid varchar(50),
emp_address varchar(50),
dog date,
age int

);

/* 
insert:
it an command used to insert records in table
syntax :-
insert into table_name values(v1,v2,v3........vn);
*/
use excelr;
insert into employee values(1250093,"krushna honrao",27000,"krushnahonrao@infosys.com","karve nagar pune","2023-04-11",24);
select*
from employee;

insert into employee values(123,"kiran jadhav",30000,"kiranjadhav@62.com","kandhar","2023-05-15",25),
                           (456,"prasad panchal",35000,"prasadpanchal@gmail.com","panchalpur","2025-03-10",26);
					
                    
select *
from employee;
