use excelr;

/*
no of emp working in each dept no
(group by caluse)
*/
select count(*),deptno
from emp
group by deptno;

/*
WQTD no of employee working in each deptno except analyst
*/
select count(*),deptno
from emp 
where job != 'Analyst'
group by deptno;


/*
wQTD maximum sal given to each job
*/
select max(sal),job
from emp
group by job;



/*
wQTD no of times salalry present in emp table
*/
select count(*),sal
from emp 
group by sal;



/*
WQTD  total salary given to each deptno if employee name starts with character alter
*/
select sum(sal),deptno
from emp
where ename like "A%"
group by deptno;



/*
WQTD no of employee working in each deptno. if there are atleast 3 employee working in each deptno
having clause
*/
select count(*),deptno
from emp
group by deptno
having count(*) >= 3;



/*
WQTD no of employees working in each deptno if there are atleast 4 emlpoyees working in each deptno
except clerk
*/
select count(*)
from emp
where job != 'clerk'
group by deptno
having count(*) >= 4;



/*
WQTD salary which is repated
*/
select count(*),sal
from emp
group by sal
having count(*)>1;



/*
WQTD  hiredate is repeated
*/
  select hiredate,count(*)
  from emp
  group by hiredate
  having count(*) > 1;
  
  
  
  
  /*
  WQTD  job is repeated
  */
  select job ,count(*)
  from emp
  group by job 
  having count(*)>1;
  
  
  
  /*
  WQTD maximum salary given to each deptno. if maximum salary for each deptno is more than 2450
  */
  select max(sal) ,deptno
  from emp
  group by deptno
  having max(sal)>2450;
  
  
  
  /*
  WQTD total salary of a employee along with job if employee is getting salary more than 1500
  */
  select sum(sal) , job 
  from emp
  where sal > 1500
  group by job;




/*
WQTD total sal given to each deptno if employee getting salary more than 1800
and total salary given to each deptno is more than 3450
*/
select sum(sal) , deptno
from emp
where sal > 1800
group by deptno
having sum(sal)>3450;



/*
WQTD 

*/


-- View 
create view excelr_view as 
select ename , sal
from emp;

select * 
from excelr_view;


