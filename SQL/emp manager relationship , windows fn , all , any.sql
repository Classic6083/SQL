use excelr;

select * 
from emp;

select * 
from dept;

/* how is james manager */
select ename 
from emp
where empno = (select mgr 
from emp
where ename = 'james');


/* find fords manager's manager */
select ename 
from emp
where empno = (select mgr 
from emp
where empno =( select mgr 
from emp 
where ename = 'ford' ));



/* waqtd dname of martins manager */
select dname 
from dept
where deptno = (select deptno
from emp
where empno = ( select mgr 
from emp 
where ename = 'martin'));


/* waqtd location of blakes manager */
select loc 
from dept 
where deptno = (select deptno
from emp
where empno = (select mgr
from emp
where ename = 'blake'));


/* waqtd name of emp reporting to king */
select ename
from emp
where mgr =(select empno
from emp
where ename = 'king');



/* waqtd name of emp who are not directly to king */
select ename 
from emp
where mgr != (select empno
from emp
where ename = 'king' );



/* Windows function*/
/*       IMP      */

select ename , sal,
dense_rank() over (order by sal desc)
from emp;


/* waqtd 12th max sal of a emp */
select ename , sal   from (
select ename , sal , dense_rank() over(order by sal desc) as r1
from emp) as r2
where r1 in (12);


/* waqtd 2nd , 4th , 6th max sal of a emp */
select ename , sal   from (
select ename , sal , dense_rank() over(order by sal desc) as r1
from emp) as r2
where r1 in (2,4,6);



/* waqtd max sal given to each deptno */
select max(sal) ,deptno
from emp
group by deptno;


select ename , sal , deptno ,count(*) over (partition by deptno)
from emp;



/* to skip the records we use 
lead(column_name , NO_of_column_to_skip) from top
lag(column_name , NO_of_column_to_skip) from bottom
*/

select sal, lead(sal) over(order by sal desc ) as g1
from emp;

select sal, lag(sal,2) over(order by sal desc ) as g1
from emp;



select ename , sal ,job 
from emp
where sal < any (select sal 
from emp
where job ='manager');














