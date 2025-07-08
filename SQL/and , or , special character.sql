use excelr;

select * 
from emp;

/*
 1.WAQTD name and designation and salary and deptno of employee if employee
 working as manager and working in dept 20
*/
select ename,job,sal,deptno
from emp
where job = "MANAGER" and deptno = 20;
 
 
 
/*
 2.WAQTD details of employee along with annual salary if employee is working in deptno 10 and 
getting salary more than 1000
*/
select * , sal*12 as "ANNUAL SALARY"
from emp
where deptno = 10 and sal > 1000;


/-- 3.WAQTD name and hired data of employee if employee is hired after 1981 but hired before 1987
select ename , hiredate
from emp
where hiredate > "1981-12-31" and hiredate < "1987-01-01";


/-- 4.WAQTD detaild of employee if employee working in deptno 10,20,30
select *
from emp
where deptno = 10 or deptno = 20 or deptno = 30;

/-- 5.WAQTD name and job of a employee if employee is working as salesman or analyst
select ename , job
from emp
where job = "SALESMAN" or job = "ANALYST";


/-- 6.WAQTD details of employee getting salary 2400 or 3500
select *
from emp
where sal = 2400 or sal = 3500;


/* 
7.WAQTD name ,salary and hiredate and deptno of employee if employee is working as managar or salesman
 and working in deptno 20 and 30 and getting salary more than 1500
 */
 select ename , sal , hiredate , deptno
 from emp
 where (job = 'MANAGER' or job = 'SALESMAN')and 
 (deptno = 20 or deptno = 30) and 
 sal > 1500;
 
 /* 
 8.WAQTD name and deptno of employee is not working in deptno 30
 */
 select ename , deptno
 from emp
 where deptno != 30;
 /-- where deptno <> 30;
 /-- where not deptno = 30;
 
 
 /*
 9.WAQTD details of employee working as manager or salesman or analyst 
 and salary getting more than 2000
 and not working in deptno 30 
 and hired after 1920
 */
 
 select * 
 from emp
 where (job='MANAGER' or job = 'SALESMAN' or job = 'ANAlyst') and
 (sal>2000) and
 (deptno != 30) and 
 (hiredate > '1920-12-31');
 
 
 select * 
 from emp
 where job in ('manager','analyst');
 
 
 select *
 from emp
 where job not in ('manager','analyst');
 
 
 
              