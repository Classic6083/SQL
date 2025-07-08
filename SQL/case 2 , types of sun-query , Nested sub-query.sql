use excelr;

select *
from emp;

/*
WAQTD name and hiredate of employee if employee is hired after allen but before king
*/

select ename , hiredate 
from emp
where hiredate > (select hiredate
from emp 
where ename = 'allen') and hiredate < (select hiredate 
from emp
where ename = 'king');



/*
WAQTD details of employee if employee is getting a salary more than blake but less than king 
*/
select *
from emp
where sal > (select sal 
from emp
where ename = 'blake') and sal < (select sal 
from emp
where ename = 'king');

/*
WAQTD ename , sal , hiredate of a employee if employee name starts with m and getting salary more than james 
but less then scott and hired during 1981
*/

select ename , sal , hiredate 
from emp
where ename like "m%" and sal > (select sal
from emp
where ename = 'james') and sal < (select sal 
from emp 
where ename = 'scott') and hiredate between '1981-01-01' and '1981-12-31';



/*
.WAQTD details of emp if emp is working as salesman and working in 20 or 30 and getting salary more than 
martin but less than aleen and hired after james but hired before scott
*/
select *
from emp
where job = "salesman" and deptno in (20,30) and sal > (select sal
from emp
where ename = 'martin') and sal < (select sal 
from emp
where ename = 'aleen') and hiredate > (select hiredate 
from emp
where ename = 'james') and hiredate < (select hiredate 
from emp
where ename = 'scott');



/*
.WAQTD deptno of miller 
*/
select deptno
from emp
where ename = 'miller';


/*
WAQTD dname of miller
*/
 select dname 
 from dept
 where deptno = ( select deptno
from emp
where ename = 'miller');
 
 select * from dept;

/*
WAQTD location of blake
*/
select loc 
from dept 
where deptno = (select deptno 
from emp
where ename = 'blake');


/*
WAQTD name of employee working in a location newyork
*/
select ename  
from emp
where deptno = (select deptno
from dept
where loc = 'new york'); 


/*
WAQTD name job hiredate of employee if employee working in dname sales
*/
select ename , job , hiredate 
from emp
where deptno = (select deptno
from dept 
where dname = 'sales') ;



/*
WAQTD details of employee if employee name last but one character is E and working in a location 
dallas or chicago
*/
select *
from emp
where ename like "%E_" and deptno in (select deptno
from dept
where loc = 'dallas'  or loc = 'chicago');



/*
types of sub-query
1) single row sub-query
2) multi row sub-query
*/


/*
WAQTD 3rd maximum sal of employee
*/
select max(sal) 
from emp
where sal < (select max(sal) 
from emp 
where sal < (select max(sal)
from emp));



/*
WAQTD 4th max salary of employee
*/
 select max(sal)
 from emp
 where sal < (select max(sal)
 from emp
 where sal < (select max(sal)
 from emp
 where sal<(select max(sal)
 from emp)));
 
 
 /*
 WAQTD 2nd minimum sal of employee
 */
 select min(sal)
 from emp
 where sal > (select min(sal)
 from emp);
 
 
 
 /*
 WAQTD name of employee if employee is getting 2nd maximum sal
 */
 select ename , max(sal)
 from emp 
 where sal < (select max(sal)
 from emp);