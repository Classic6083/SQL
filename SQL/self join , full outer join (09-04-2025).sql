use excelr;

/*                                             self join                                                 */
/* WAQTD name of a emp and their names */
select e1.ename ,m1.ename as manager
from emp e1 join emp m1
on e1.mgr = m1.empno;


/* WAQTD emp name , emp job and manager name , managers job of a emp */
select e1.ename , e1.job , m1.ename ,m1.job
from emp e1 join emp m1
on e1.mgr = m1.empno;


/* WAQTD emp name , emp job and manager name , manager job if emp is working as analyst */
select e1.ename , e1.job , m1.ename , m1.job
from emp e1 join emp m1
on e1.mgr = m1.empno
where e1.job ='analyst';


/* WAQTD emp name , emp sal and manager name , manager sal if manager is getting a sal less than emp */
select e1.ename , e1.sal , m1.ename ,m1.sal
from emp e1 join emp m1
on e1.mgr = m1.empno
where m1.sal < e1.sal;



/* WAQTD details of emp and details of manager if manager name ends with e*/
select e1.* , m1.*
from emp e1 join emp m1
on e1.mgr = m1.empno
where m1.ename like '%e';


/* WAQTD emp name emp sal and manager name , manager sal of a emp, managers manager name,
 managers manager sal of a emp  
 */
 select e1.ename ,e1.sal , m1.ename , m1.sal , m2.ename , m2.sal
 from emp e1 join emp m1 join emp m2
 on e1.mgr =m1.empno and m1.mgr =m2.empno;
 
 
 select* from emp;
 /* WAQTD emp name emp dname and manager name , managers dname if emp and manager work in same loc new york
 select 
*/
select e1.ename , d1.dname , m1.ename ,d2.dname 
from  emp e1 inner join dept d1 join  emp m1 inner join dept d2 join emp e1 join emp m1
on e1.deptno = d1.deptno and m1.deptno; 



/*              union         */
select job 
from emp
union
select job 
from emp;


select job
from emp
union
select deptno
from emp;


select job 
from emp
union all
select deptno
from emp;

-- intersect  
-- intersect  




