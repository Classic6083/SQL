use excelr;

/*
 1) WAQTD ename , sal and dname of the employee working as Clerk in dept 20 with a salary of more than 1800 .
*/
select ename , sal , dept.dname 
from emp inner join dept
on emp.deptno=dept.deptno
where job = 'clerk' and emp.deptno = 20 and sal > 1800;


/*
2)	WAQTD ename deptno , dname and loc of the employee earning more than 2000 in New York .
*/
select ename , emp.deptno , dname ,loc 
from emp inner join dept
on emp.deptno=dept.deptno
where sal > 2000 and loc ='New York'; 


/*
3)	NAME OF THE EMPLOYEE AND HIS LOCATION OF ALL THE EMPLOYEES .
*/
select ename , loc 
from emp inner join dept
on emp.deptno=dept.deptno;


select * from dept;
/*
4)	WAQTD DNAME AND SALARY FOR ALL THE EMPLOYEE WORKING IN ACCOUNTING.
*/
select dname , sal 
from emp inner join dept 
on emp.deptno=dept.deptno
where dname = 'accounting';


/*
5)	WAQTD DNAME AND ANNUAL SALARY FOR ALL  EMPLOYEES WHOS SALARY IS MORE THAN 2340
*/
select dname , sal*12 as annual_salary
from emp inner join dept
on emp.deptno=dept.deptno
where sal>2340;


/*
6)	WAQTD ENAME AND DNAME FOR EMPLOYEES HAVING CAHARACTER 'A' IN THEIR DNAME 
*/
select ename , dname 
from emp inner join dept
on emp.deptno = dept.deptno
where dname like '%A%'; 


/*
7)	WAQTD ENAME AND DNAME FOR ALL THE EMPLOYEES WORKING AS SALESMAN
*/
select ename , dname , job
from emp inner join dept
on emp.deptno=dept.deptno
where job = 'salesman';


/*
8) WADTD DNAME AND JOB FOR ALL THE EMPLOYEES WHOSE JOB 
       AND DNAME STARTS WITH CHARACTER 'S'
*/
select dname , job 
from emp inner join dept
on emp.deptno=dept.deptno
where job like 'S%' and dname like 'S%'; 


/*
9)WAQTD DNAME AND MGR Number FOR EMPLOYEES REPORTING 
       TO 7839.
*/
select dname , mgr
from emp inner join dept
on emp.deptno=dept.deptno
where mgr = 7839;



/*
10)WAQTD DNAME AND HIREDATE FOR EMPLOYEES HIRED AFTER
        83 INTO ACCOUNTING  OR RESEARCH DEPT .
*/
select dname , hiredate
from emp inner join dept
on emp.deptno=dept.deptno
where hiredate > '1983-12-31' and dname in ('Accounting' , 'Research');

select * from emp;
select * from dept;
/*
  11)WAQTD ENAME AND DNAME OF THE EMPLOYEES WHO ARE  
        GETTING COMM IN DEPT 10  OR 30. 
*/
select ename ,dname 
from emp inner join dept
on emp.deptno = dept.deptno
where comm is not null and emp.deptno in (10,30);


/*
 12)WAQTD DNAME AND EMPNO FOR ALL THE EMPLOYEES WHO'S   EMPNO ARE  (7839,7902) AND 
 ARE WORKING IN LOC NEW YORK.
 */
 select dname , empno
 from emp inner join dept
 on emp.deptno=dept.deptno
 where empno in (7839,7902) and loc = 'New York';
