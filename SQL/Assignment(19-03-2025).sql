use excelr;

select *
from emp;


/-- 1.WAQTD THE ANNUAL SALARY OF THE EMPLOYEE WHOS NAME IS SMITH.
select sal
from emp
where ename="SMITH";


/-- 2.WAQTD NAME OF THE EMPLOYEES WORKING AS CLERK.
select ename
from emp
where job="CLERK";


/-- 3.WAQTD SALARY OF THE EMPLOYEES WHO ARE WORKING AS SALESMAN.
select sal
from emp
where job="SALESMAN";


/-- 4.WAQTD DETAILS OF THE EMP WHO EARNS MORE THAN 2000.
select *
from emp
where sal > 2000;


/-- 5.WAQTD DETAILS OF THE EMP WHOS NAME IS JONES.
select *
from emp
where ename = "JONES";


/-- 6.WAQTD DETAILS OF THE EMP WHO WAS HIRED AFTER 01-JAN-81.
select *
from emp
where hiredate > "1981-01-01";


/*
7.WAQTD NAME AND SAL ALONG WITH HIS ANNUAL 
SALARY IF THE ANNUAL SALARY IS MORE THAN 12000.
*/
select ename , sal ,sal*12 as "ANNUAL SALARY"
from emp
 where sal*12 > 12000;
 
 
/-- 8.WAQTD EMPNO OF THE EMPLOYEES WHO ARE WORKING IN DEPT 30.
select empno,deptno 
from emp
where deptno = 30;


/-- 9.WAQTD ENAME AND HIREDATE IF THEY ARE HIRED BEFORE 1981.
select ename,hiredate
from emp
where hiredate < "1981-01-01";


/-- 10.WAQTD DETAILS OF THE EMPLOYEES WORKING AS MANAGER.
select *
from emp
where job="MANAGER";


/*
11.WAQTD NAME AND SALARY GIVEN TO AN EMPLOYEE IF 
EMPLOYEE EARNS A COMMISSION OF RUPEES 1400.
*/
select ename,sal
from emp
where comm = 1400;


/-- 12.WAQTD DETAILS OF EMPLOYEES HAVING COMMISSION MORE THAN SALARY.
select*
from emp
where comm > sal;


/-- 13.WAQTD EMPNO OF EMPLOYEES HIRED BEFORE THE YEAR 87.
select empno ,hiredate 
from emp
where hiredate < "1987-01-01";


/-- 14.WAQTD DETAILS OF EMPLOYEES WORKING AS AN ANALYST
select * 
from emp
where job = "ANALYST";


/-- 15.WAQTD DETAILS OF EMPS EARNING MORE THAN 2000 RUPEES PER MONTH
select *
from emp
where sal > 2000;



/*  ************************************************************************************************************ */

/-- 1.WAQTD NAME OF THE EMPLOYEE ALONG WITH THEIR ANNUAL SALARY.
select ename , sal * 12 as "ANNUAL SALARY"
 from emp;
 
 
 /-- 2.WAQTD ENAME AND JOB FOR ALL THE EMPLOYEE WITH THEIR HALF TERM SALARY.
 select ename , job ,sal*6 as "HALF TERM SALARY"
 from emp;
 
 
 /-- 3.WAQTD ALL THE DETAILS OF THE EMPLOYEES ALONG WITH AN ANNUAL BONUS OF 2000.
 select * , sal+2000 as "ANNUAL BONUS"
 from emp;
 
 
 /-- 4.WAQTD NAME SALARY AND SALARY WITH A HIKE OF 10%.
 select ename , sal , sal+sal*0.1 as "HIKE"
 from emp;
 
 
 /-- 5.WAQTD NAME AND SALARY WITH DEDUCTION OF 25%.
 select ename ,sal, sal - sal*0.25 as "DEDUCTION OF 25%"
 from emp;
 
 
 /-- 6.WAQTD NAME AND SALARY WITH MONTHLY HIKE OF 50.
 select ename, sal + 50 as "MONTHLY HIKE"
 from emp;
 
 
 /--  7.WAQTD NAME AND ANNUAL SALARY WITH DEDUCTION OF 10%.
 select ename ,sal*12, sal*12-sal*12*0.1 as "DEDUCTION OF 10%"
 from emp;
 
 
 /-- 8.WAQTD TOTAL SALARY GIVEN TO EACH EMPLOYEE (SAL+COMM).
 select ename, sal + comm
 from emp;
 
 
 /--  9.WAQTD DETAILS OF ALL THE EMPLOYEES ALONG WITH ANNUAL SALARY.
 select * , sal*12 as "ANNUAL SALARY"
 from emp;
 
 
 /-- 10.WAQTD NAME AND DESIGNATION ALONG WITH 100 PENALTY IN SALARY. 
 select ename , job,sal-100
 from emp;
 












 








