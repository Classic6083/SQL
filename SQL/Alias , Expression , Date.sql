use excelr;

select * 
from emp;

select deptno
from emp;

select* 
from emp;

/--  write a query to disply ename and anual salary
select ename,sal,sal*12
from emp;

/--  write a query to disply name of employee anong with 10% hike
select ename,sal,sal+sal*0.1
from emp;

/--  write a query to disply name of a employee along with 30% diduction in salary
select ename,sal,sal-sal*0.3
from emp;

/--  write a query to disply name of employee along with 100rs penalty in salary
select ename,sal,sal-100
from emp;

/--  write a query to disply name of employee along with halfterm salary
select ename,sal*6
from emp;


/--
select ename ,sal*6 "6Month Salary"
from emp;

select ename ,sal*12 as annulesalary
from emp;

select ename , sal*12 annulesalary
from emp;

select ename , sal*12 annule_salary
from emp; 




select ename , deptno
from emp
where deptno=20;

/--  write a query to disply name and salary of employee if emp is gating a salary more than 2000
select ename ,sal
from emp
where sal>2000;


select *
from emp;
/--  write a query to disply name and job of a employee if employee is working as manager
select ename , job
from emp
where job="MANAGER";

/--  write a query to disply details of employee if employee is gating comminision of 1400
select *
from emp
where comm=1400;

/--  write a query to disply details of employee if employee is gating annuale salary more than 11000
select *
from emp
where sal*12>11000;

/--  write a query to disply name and hiredate of employee if employee is hired after 1981
select ename , hiredate 
from emp
where hiredate > '1981-12-31';


/--  write a query to disply anme and hired date od employee if employee is hired before 1981
select ename , hiredate
from emp
where hiredate <'1981-01-01';



