use excelr;



set autocommit = off;

select *
from emp;

commit;

delete from emp 
where ename = 'Allen';

rollback;


-- savepoint

select * from dept;
savepoint a1;
delete from dept where deptno = 10;
savepoint a2;
delete from dept where deptno = 20;
savepoint a3;
delete from dept where deptno = 30;
savepoint a4;
delete from dept where deptno = 40;

rollback to a4;
rollback to a3;
rollback to a2;
rollback to a1;


select * from emp;


/*
WQTD if employee is getting salary of more than rs 2400
*/

select sal
from emp
where sal > 2400;


-- subquery

/*
WQTD name of a  employee if emlpoyee is getting salary of more than allen
*/
select ename,sal
from emp
where sal > (  select sal
			   from emp
			   where ename ='allen');





/*
WQTD name and salary of a employee if employee is getting a salary less than martin
*/
select ename , sal
from emp
where sal < ( select sal
			  from emp 
              where ename = 'martin');
              
              
              
              
  /*
  WQTD name and deptno of employee if emlpoyee is working in same deptno as jones
  */
  select ename , deptno
  from emp
  where deptno = (select deptno
                  from emp
                  where ename = 'jones');
                  
                  
                  
 /*
  WQTD name of a empoyee if employee name start with A and getting a salary more than james
  */
  select ename
  from emp
  where ename like 'A%' and sal> ( select sal
  from emp
  where ename = 'james');
  
  
  
  /*
  WQTD details of employee if employee is working as salesman and working in same deptno as miller
  */
  select *
  from emp
  where job = 'salesman' and deptno = (select deptno
                                       from emp
                                       where ename = 'miller');
  
  

