use excelr;

select * 
from emp;
/*
WAQTD details of employee if employee is getting a salary as 1250 or 3000 or 5000
and working as salesman , analyst , or prisident
*/
select *
from emp 
where sal in (1250,3000,5000)
and job in ('SALESMAN' , 'ANALYST' , 'PRESIDENT');



/* 
WAQTD name and job of employee if employee is not working as salesman and clerk and manager
*/

select ename , job 
from emp
where job not in ('SALESMAN' , 'MANAGER' , 'CLERK'); 



/*
WAQTD name and hiredate of employee if employee is hired during 1981
*/
select ename , hiredate 
from emp
where  hiredate >= '1981-01-01' and hiredate <='1981-12-31';

select ename , hiredate 
from emp
where hiredate between '1981-01-01' and '1981-12-31';



/* 
 WAQTD name , salary of a employee if employee is getting in range of 3000 and 1000
*/
select ename , sal
from emp
where sal between 1000 and 3000;



/* 
WAQTD name and salary of emlpoyee if employee id getting salary between 1500 and 3000
*/
select ename , sal 
from emp
where sal between 1501 and 2999;



/*
WAQTD details of employee if employee is getting salary in range between 1000 and 2000
*/
select *
from emp
where sal between 1001 and 1999;


/* 
WAQTD name and hiredate of employee if employee is hired between '1981-01-01' and '1981-12-31'
*/
select ename , hiredate 
from emp
where hiredate between '1981-01-02' and '1981-12-30';


/*
WAQTD name and hiredate of emloyee if employee is not hired during 1981
*/
select ename , hiredate
from emp
where hiredate not between '1981-01-01' and '1981-12-31';


update emp
set comm = 1500
where comm = 0.00;

/*
WAQTD name and salary and commission of employee if employee is not getting a commission
*/
select ename , sal, comm
from emp
where comm is null;


/*
WAQTD name and salary of employee if employee is not getting a salary
*/
select ename , sal
from emp
where sal is null;


/*
WAQTD details of emlpoyee if employee is getting commission
*/
select *
from emp
where comm is not null;


/*
WAQTD name and salary and commission of a employee if employee is getting salary but not commission
*/
select ename , sal , comm
from emp
where sal is not null and comm is null;



/*
WAQTD name of a employee if employee name starting character is T
*/
select ename 
from emp
where ename like 'T%';


/*
WAQTD name of a employee if employee name starting character is N
*/
select ename 
from emp
where ename like '%N';


/*
WAQTD name of a employee if employee name starting character is J and ends with S
*/

select ename 
from emp
where ename like 'J%' and ename like '%S';
-- where ename like 'J%S'


/*
WAQTD name of a employee if employee name has a character  A in their name 
*/
select ename 
from emp
where ename like '%A%';


/* 
WAQTD name of a employee if employee name has 4 character 
*/
select ename 
from emp
where ename like '____';


/*
WAQTD name of a employee if employee name 2 character starts with load
*/
select ename 
from emp
where ename like '_L%';


/*
WAQTD name of a employee if employee names 3rd character sterts with release savepoint
*/
select ename 
from emp
where ename like '__R%';


/*
WAQTD name of a employee if employee name character starts with  Vowels 
*/
select ename 
from emp
where ename like 'A%' or ename like 'E%' or ename like 'I%' or ename like 'O%' or ename like 'U';


/*
WAQTD name of a employee if employee names last but one character is M 
*/
select ename 
from emp
where ename like '%M_';



/*
WAQTD name of a employee if employee name has _ in their name 
*/

select ename 
from emp
where ename like '% _%'; 

update emp 
set ename = 'S_SMITH'
where ename = 'SMITH';






