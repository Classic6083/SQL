use excelr;

/* joins */
/* caresian join */
select ename , dname 
from emp cross join dept;


/* inner join */
select ename , dname 
from emp inner join dept
on emp.deptno = dept.deptno;


/* waqtd ename and location of emo */
select ename , loc
from emp inner join dept
on emp.deptno = dept.deptno;

/* WAQTD ename ,sal,job and dname of emp  if emp is working as manager*/
select ename , sal, job , dname
from emp inner join dept
on emp.deptno = dept.deptno
where job ='manager';

/* WAQTD  details of emp and details of dept table if emp is working in new york*/

select emp.* , dept.*
from emp inner join dept
on emp.deptno=dept.deptno
where loc='new york';


/* WAQTD name , sal dname,loc if emp is getting a sal and working in deptno research or sales */
select ename , sal, dname , loc 
from emp inner join dept
on emp.deptno=dept.deptno
where sal is not null and dname in ('research' , 'sales'); 


/* WAQTD name , sal , job , hiredate , location , dname of emp if emp is working as salesman and working in deptno 
20 or 30 and getting sal more than allen*/
select ename , sal , job , hiredate ,loc ,dname
from emp inner join dept
on emp.deptno=dept.deptno
where job = 'salesman' and emp.deptno in (20,30) and sal > (select sal
from emp
where ename = 'allen');


/* WAQTD name and deptno of a emp and location if emp name has 4 characters and hired after 1981 and working loc 
new york or dallas or chicago*/
select ename , emp.deptno  , loc
from emp inner join dept
on emp.deptno = dept.deptno
where ename like '____' and hiredate > '1980-12-31' and loc in ('new york' , 'dallas' , 'chicago');



/* Natural join */ 
