use excelr;
desc amazon;

/* 
update :-
its a command to update an records from the tables row wise only 
Syntax :-  
update table_name
set column_name1=value1 , column_name2=value2,
    column_namen=valuen
  */
  select*
  from employee;
  
  update employee
  set empname = "Honrao Krushna",salary = 50000,age=26
  where empno = 1250093;
  
  
  
  /* 
  delete
  it is a command used to delete the specific records from the table 
  syntax :-
  
  delete from table_name where <condition>;
  */
  
  delete from employee where empno=123;
  
  select *
  from employee;
  
  
  
  /* truncate
    it is a command used to delete all the records permanently but the structure of the table remain same 
    syntax :-
    truncate table table_name 
    
*/

truncate table amazon;

select *
from amazon;

select *
from employee;

CREATE TABLE emp
(
 empno decimal(4,0) NOT NULL,
 ename varchar(10) default NULL,
 job varchar(9) default NULL,
 mgr decimal(4,0) default NULL,
 hiredate date default NULL,
 sal decimal(7,2) default NULL,
 comm decimal(7,2) default NULL,
 deptno decimal(2,0) default NULL
);

CREATE TABLE dept (
 deptno decimal(2,0) default NULL,
 dname varchar(14) default NULL,
 loc varchar(13) default NULL
);


INSERT INTO emp VALUES
('7369','SMITH','CLERK','7902','1980-12-17','800.00',NULL,'20');
INSERT INTO emp VALUES
('7499','ALLEN','SALESMAN','7698','1981-02-20','1600.00','300.00','30');
INSERT INTO emp VALUES
('7521','WARD','SALESMAN','7698','1981-02-22','1250.00','500.00','30');
INSERT INTO emp VALUES 
('7566','JONES','MANAGER','7839','1981-04-02','2975.00',NULL,'20');
INSERT INTO emp VALUES
('7654','MARTIN','SALESMAN','7698','1981-09-28','1250.00','1400.00','30');
INSERT INTO emp VALUES
('7698','BLAKE','MANAGER','7839','1981-05-01','2850.00',NULL,'30');
INSERT INTO emp VALUES
('7782','CLARK','MANAGER','7839','1981-06-09','2450.00',NULL,'10');
INSERT INTO emp VALUES
('7788','SCOTT','ANALYST','7566','1982-12-09','3000.00',NULL,'20');
INSERT INTO emp VALUES
('7839','KING','PRESIDENT',NULL,'1981-11-17','5000.00',NULL,'10');
INSERT INTO emp VALUES
('7844','TURNER','SALESMAN','7698','1981-09-08','1500.00','0.00','30');
INSERT INTO emp VALUES
('7876','ADAMS','CLERK','7788','1983-01-12','1100.00',NULL,'20');
INSERT INTO emp VALUES
('7900','JAMES','CLERK','7698','1981-12-03','950.00',NULL,'30');
INSERT INTO emp VALUES
('7902','FORD','ANALYST','7566','1981-12-03','3000.00',NULL,'20');
INSERT INTO emp VALUES
('7934','MILLER','CLERK','7782','1982-01-23','1300.00',NULL,'10');
INSERT INTO dept VALUES ('10','ACCOUNTING','NEW YORK');
INSERT INTO dept VALUES ('20','RESEARCH','DALLAS');
INSERT INTO dept VALUES ('30','SALES','CHICAGO');
INSERT INTO dept VALUES ('40','OPERATIONS','BOSTON');

select *
from emp;

select *
from dept;

/--  write a query to disply name
select ename
from emp;

/-- write a query to disply designation of emp
select job
from emp;

/--  write a query to disply name and salary of emp
select ename , sal
from emp;

/--  write a query to disply name , joining date , salary , deptno
select ename,hiredate,sal,deptno
from emp;

/--  write a query to disply dname of employee
select dname
from dept;

/--  write a query to disply details of employee
select *
from emp;

select *
from dept;


 






    
  
  
  
  
    
