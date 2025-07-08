use excelr;

select * 
from emp;


/*
1.WAQTD NAME OF THE EMPLOYEES EARNING MORE THAN ADAMS
*/
select ename 
from emp
where sal > (select sal 
             from emp 
             where ename = 'ADAMS');
             

/*
2.WAQTD NAME AND SALARY OF THE EMPLOYEES EARNING LESS THAN KING 
*/
select ename , sal
from emp
where sal < (select sal
from emp
where ename = 'KING');


/*
3.WAQTD NAME AND DEPTNO OF THE EMPLOYEES IF THEY ARE
WORKING IN THE SAME DEPT AS JONES
*/
select ename , deptno
from emp
where deptno = (select deptno
from emp
where ename = 'JONES');



/*
4.WAQTD NAME AND JOB OF ALL THE EMPLOYEES WORKING
IN THE SAME DESIGNATION AS JAMES 
*/
select ename , job 
from emp
where job = (select job
from emp
where ename = 'JAMES');



/*
5.WAQTD EMPNO AND ENAME ALONG WITH ANNUAL SALARY
OF ALL THE EMPLOYEES IF THEIR ANNUAL SALARY IS
GREATER THAN WARDS ANNUAL SALARY.
*/
select empno , ename , sal*12 as "annual_salary"
from emp 
where (sal*12) > (select sal*12
from emp
where ename = 'WARD');



/*
6.WAQTD NAME AND HIREDATE OF THE EMPLOYEES IF THEY
ARE HIRED BEFORE SCOTT 
*/
select ename , hiredate
from emp
where hiredate < (select hiredate 
from emp
where ename = 'scott');



/*
7.WAQTD NAME AND HIREDATE OF THE EMPLOYEES IF THEY
ARE HIRED AFTER THE PRESIDENT
*/
select ename , hiredate 
from emp
where hiredate > (select hiredate
from emp
where job = 'PRESIDENT');



/*
8.WAQTD NAME AND SAL OF THE EMPLOYEE IF THEY ARE
EARNING SAL LESS THAN THE EMPLOYEE WHOS EMPNO IS 7839
*/
select ename , sal 
from emp
where sal < (select sal
from emp
where empno = 7839 );



/*
9.WAQTD ALL THE DETAILS OF THE EMPLOYEES IF THE
EMPLOYEES ARE HIRED BEFORE MILLER
*/
select *
from emp
where hiredate < (select hiredate
from emp
where ename = 'MILLER');



/*
10.WAQTD ENAME AND EMPNO OF THE EMPLOYEES IF
EMPLOYEES ARE EARNING MORE THAN ALLEN 
*/
select ename , empno , sal
from emp
where sal > (select sal 
from emp
where ename = 'allen');



/*
11.WAQTD ENAME AND SALARY OF ALL THE EMPLOYEES WHO
ARE EARNING MORE THAN MILLER BUT LESS THAN ALLEN .
*/
select ename , sal
from emp 
where sal > (select sal
 from emp 
where ename = 'miller')
 and
 sal < (select sal 
from emp 
where ename = 'allen');



/*
12.WAQTD ALL THE DETAILS OF THE EMPLOYEES WORKING IN
DEPT 20 AND WORKING IN THE SAME DESIGNATION AS SMITH 
*/
select * 
from emp
where deptno = 20 and  job =  (select job 
from emp
where ename = 'SMITH');




/*
13.WAQTD ALL THE DETAILS OF THE EMPLOYEES WORKING AS
MANAGER IN THE SAME DEPT AS TURNER 
*/
select *
from emp
where job = 'manager' and deptno = (select deptno
from emp
where ename = 'turner');



/*
14.WAQTD NAME AND HIREDATE OF THE EMPLOYEES HIRED
AFTER 1980 AND BEFORE KING
*/
select ename , hiredate
from emp
where hiredate > '1980-12-31' and hiredate < (select hiredate 
from emp
where ename = 'king');



/*
15.WAQTD NAME AND SAL ALONG WITH ANNUAL SAL FOR ALL
EMPLOYEES WHOS SAL IS LESS THAN BLAKE AND MORE THAN
3500
*/
select ename , sal , sal*12 as annual_salary
from emp 
where sal < (select sal 
from emp
where ename = 'BLAKE') and (sal > 3500);




/*
16.WAQTD ALL THE DETAILS OF EMPLOYEES WHO EARN MORE
THAN SCOTT BUT LESS THAN KING 
*/
select *
from emp
where sal > (select sal 
from emp
where ename = 'scott') and sal < (select sal 
from emp 
where ename = 'king');



/*
17.WAQTD NAME OF THE EMPLOYEES WHOS NAME STARTS
WITH 'A' AND WORKS IN THE SAME DEPT AS BLAKE 
*/
select ename 
from emp
where ename like "A%" and deptno = (select deptno
from emp
where ename = 'blake');



/*
18.WAQTD NAME AND COMM IF EMPLOYEES EARN COMISSION
AND WORK IN THE SAME DESIGNATION AS SMITH 
*/
select ename , comm
from emp 
where comm is not null
 and 
 job = (select job 
 from emp
 where ename = 'smith');
 
 
 
 
 /*
 19.WAQTD DETAILS OF ALL THE EMPLOYEES WORKING AS
CLERK IN THE SAME DEPT AS TURNER .
*/
select *
from emp
where job = 'clerk' and deptno = ( select deptno
from emp
where ename = 'turner');



/*
20.WAQTD ENAME, SAL AND DESIGNATION OF THE EMPLOYEES
WHOS ANNUAL SALARY IS MORE THAN SMITH AND LESS THAN
KING.
*/
select ename , sal , job
from emp
where (sal*12) > (select sal*12
from emp
where ename = 'smith' ) and (sal*12) < ( select sal*12
from emp
where ename = 'king');