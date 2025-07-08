use excelr;

/* 1 wqtd name of a emp */
select ename 
from emp;


/* 2 wqtd designation of emp */
select job
from emp;


/* 3 wqtd name and sal of emp */
select ename , sal
from emp;


/* 4 wqtd name , hiredate , sal  , deptno of emp */
select ename , sal , hiredate , deptno
from emp;


/* 5 wqtd dname of employee */
select dname 
from dept;


/* wqtd details of emp */
select *
from emp;


/* Distinct */
select distinct deptno
from emp;


/* wqtd unique column of job column */
select distinct job
from emp;


/* wqtd name and anuual salary of emp */
select ename , sal*12 as annual_salary
from emp;

/* wqtd name and salary of emp along with 10% hike in salary */
select ename , sal , sal*1.1 as hike
from emp;


/* wqtd name of emp along with 30% of deduction in sal */
select ename , sal-sal*30/100
from emp;


/* wqtd name of employee along with 100 rs penalty */
select ename , sal-100 as penalty
from emp;


/* wqtd name of a employee along with halfterm salary */
select ename , sal*6 as halfterm_salary
from emp;


/* wqtd name of a emp along with deptno if emp is working in deptno 20 */
select ename , deptno
from emp
where deptno= 20;


/* wqtd name and sal of a emp if emp is getting salary more than 2000 */
select ename , sal
from emp
where sal > 2000;


/* wqtd name and job of a emp if emp is working as manager */
select ename , job
from emp
where job = 'manager';


/* wqtd details of emp if emp is getting comm as 1400 */
select *
from emp
where comm = 1400;


/* wqtd details of emp if emp is getting a aanual sal more than 11000 ; */
select *
from emp
where sal*12 > 11000;


/* wqtd name and hiredate of emp if emp is hired after 1981 */
select ename , hiredate
from emp
where hiredate > "1981-12-31";


/* wqtd name and hiredate of emp if emp is hired before 1981 */
select ename , hiredate 
from emp
where hiredate < "1981-01-01";


/* wqtd name , sal , deptno of a emp if employee is getting sal more 3000 and working in deptno 10 */
select ename , sal , deptno
from emp
where sal > 3000 and deptno = 10;


/* wqtd name , sal  , designation , deptno of a emp if emp is working as manager and working in depto no 20 */
select ename , job , deptno , sal
from emp
where job = 'manager' and deptno = 20;


/* wqtd details of emp along with annual sal if emp is working in deptno 10 and and getting sal more than 1000 */ 
select * , sal*12 'Annual Salary'
from emp
where deptno = 10 and sal > 1000;


/* wqtd name and hiredate of a emp if emp id hired after 1981 but before 1987 */
select ename , hiredate
from emp
where hiredate > '1981-12-31' and hiredate < '1987-01-01';


/* wqtd details of emp if emp is working in deptno 10,20,30 */
select *
from emp
where deptno in (10,20,30);


/* wqtd name and job of emp if emp working as salesman or analyst */
select ename , job
from emp
where job in ('salesman' , 'analyst');


/* wqtd details of emp if emp is getting sal as 2400 or 3500 */
select *
from emp
where sal = 2400 or sal = 3500;


/* wqtd name ,sal ,hiredate and deptno of a emp if emp is working as manager or salesman and working in deptno 20 or 30
   and getting sal more than 1500 */ 
   select ename , sal , hiredate , deptno , job
   from emp
   where (job in ('salesman' , 'manager'))
   and (deptno in (20 , 30))
   and
   (sal > 1500);
   
   
   /* wqtd name and deptno of a emp if emp is not working in deptno 30 */
   select ename , deptno
   from emp
   where deptno != 30;
   -- where not deptno = 30;
   -- where deptno <> 30;
   
   
   /* waqtd details of emp working as manager or salesman or analyst and getting a sal more than 2000 and not working 
   in deptno 30 and hired after 1980 */
   select *
   from emp
   where job in ('salesman','manager','analyst') and 
   sal > 2000 and 
   not deptno = 30 and 
   hiredate > '1980-12-31';
   
   
   /* waqtd name , job , deptno of a emp if emp is working in deptno 20, 30 and workung as president and clerk */
   select ename , job , deptno
   from emp
   where deptno in (20,30) and 
   job in ('president' , 'clerk');
   
   
   /* waqtd details of emp if emp is getting sal of rs 1250 , 3000 , 5000 and working as a salesman , president , analyst */
   select *
   from emp
   where sal in (1250 , 3000 , 5000) and job in ('salesman' , 'president' , 'analyst');
   
   
   /* waqtd name and job of a emp if emp is not working salesman , manager , clerk */
   select ename , job 
   from emp
   where job not in ('salesman' , 'manager' , 'clerk');
   
   
   /* waqtd name , hiredate of a emp if emp is hiread during 1981 */
   select ename , hiredate
   from emp
   where hiredate >= '1981-01-01' and hiredate <= '1981-12-31';
   
   
    /* waqtd name , hiredate of a emp if emp is hiread during 1981 */
    select ename , hiredate 
    from emp
    where hiredate between '1981-01-01' and '1981-12-31';
    
    
    /* waqtd name and sal of a emp if emp is getting sal in a range of 3000 , 1000 */
    select ename , sal
    from emp
    where sal between 1000 and 3000;
    
    
    /* waqtd name and sal of a emp if emp is getting sal between 1500 ,3000 */
    select ename , sal
    from emp
    where sal between 1501 and 2999;
    
    
    /* waqtd details of emp if emp is getting sal in range of between 1000 and 2000 */
    select *
    from emp
    where sal between 1001 and 1999;
    
    
    /* waqtd name and hiredate of emp if emp is hired between '1981-01-01' and '1981-12-31' */
    select ename , hiredate 
    from emp
    where hiredate between '1981-01-02' and '1981-12-30';
    
    
    /* waqtd name and hiredate of emp if emp is not hired during 1981 */
    select ename , hiredate
    from emp
    where hiredate not between '1981-01-01' and '1981-12-31';
    
    
    /* waqtd name and sal and comm of a employee if emp is not gerring commission */
    select ename , sal , comm
    from emp
    where comm is null;
    
    
    
    /* waqtd name and sal of a employee if emp is not gerring sal */
    select ename , sal
    from emp
    where sal is null;
    
    
    /* waqtd details of emp if emp is getting comm */
    select *
    from emp
    where comm is not null;
    
    
    /* waqtd name , sal ,comm of emp if emp is getting sal but not comm */
    select ename , sal ,comm
    from emp 
    where sal is not null and comm is null;
    
    
    /* waqtd name of emp if emp name 1st character start with t */
    select ename 
    from emp
    where ename like 't%';
    
    
    /* waqtd name of emp if emp name ends with character with n */
    select ename 
    from emp
    where ename like '%n';
    
    
    
    /* waqtd name of emp if emp name starts with character j and ends with s */
    select ename 
    from emp
    where ename like 'j%s';
    
    
    /* waqtd name of emp if emp name has a character a in their name */
    select ename 
    from emp
    where ename like '%a%';
    
    
    /* waqtd name of emp if emp name has 4 characters */
    select ename 
    from emp
     where ename like '____';
     
     
     /* waqtd name of emp if emp name 2nd character sarts with l */
     select ename 
     from emp
     where ename like '_l%';
     
     
     /* waqtd name of emp if emp names 3rd character starts with r */
     select ename 
     from emp
     where ename like '__r%';
     
     
     /* waqtd name of emp if emp name character starts with vowels */
     select ename 
     from emp 
     where ename like 'a%' or ename like 'e%' or ename like 'i%' or ename like 'o%' or ename like 'u%';
     
     
     
	/* waqtd name of emp if emp names last but one character is m */
    select ename 
    from emp
    where ename like '%m_';
    
    
    /* waqtd name of emp if emo name has _ in their name */
    select ename 
    from emp
    where ename like '%@_%' escape '@';
    
    
    /* waqtd name of a emp if emp name does not starts with vowels */
    select ename 
    from emp 
    where ename not like 'a%' and ename not like 'e%' and ename not like 'i%' and ename not like 'o%' and ename not like 'u%';
     
    
    /* waqtd name , sal ,  comm , sal + comm */
    select ename , sal , comm , sal+comm , sal+ifnull(comm , 0)
    from emp;
    
    
    /*  waqtd maximum sal of a emo */
    select max(sal)
    from emp;
    
    /*  waqtd maximum sal given to the manager */
    select max(sal)
    from emp
    where job = 'manager';
    
    /*  waqtd  minimum sal given to deptno */
    select min(sal)
    from emp
    where deptno =30;
    
    /*  waqtd  total sal given to salesman */
    select sum(sal)
    from emp
    where job = 'salesman';
    
    
    /*  waqtd avg sal given to all the emp */
    select avg(sal)
    from emp;
    
    
    /*  waqtd  no of emp working as manager */
    select count(ename)
    from emp
    where job = 'manager';
    
    
    /* length */
    select length('KANDHAR');
    
    /* upper */
    select upper('kandhar');
    
    /* lower */
    select lower('KANDHAR');
    
    /* reverse */
    select reverse('kandhar');
    
    
    /* waqtd name of a emp if emp name has a palindrome or not */
    select ename 
    from emp
    where ename = reverse(ename);
    
    select * 
    from emp;
    
    
    /* waqtd even no of empno */
    select empno
    from emp
    where mod(empno,2) = 0;
    
   
    /*  waqtd odd no of empno */
    select empno
    from emp 
    where mod(empno,2)=1;
    
    
    select pi();
    
    select now();
    
    select ('             kandhar');
    select ltrim('        kandhar');
    
   select ('kandhar              ');
   select rtrim('kandhar         ');
   
   
   /* case statement */
   select ename , sal ,
   case when sal <= 1500 then 'Minimum salary'
   when sal >= 1500 then 'Good salary'
   end as ststus
   from emp;
   
   
   
   /* constraints */
   
   create table product23
   (
   pid int primary key,
   pname varchar(50) not null,
   price int check (price > 0),
   mfgdate date not null ,
   expdate date not null 
   );
   
select *
from product1;

create table customer23
(
cid int primary key,
cname varchar(50) not null,
cadd varchar(50) not null,
cphno bigint check (length(cphno)=10) unique not null,
city varchar(50) default'pune',
pid int ,
constraint pid23 foreign key (pid) references product23(pid)
);

drop table product23;


/*    Group by    */ 
/* WAQTD no of emp working in each deptno */
select count(ename),deptno
from emp
group by deptno;


/* WAQTD no of emp working in each deptno except the analyst */
select count(*) ,deptno
from emp 
where job != 'analyst'
group by deptno;


/* WAQTD max sal given to each job*/
select max(sal),job
from emp
group by job;


/*WAQTD no of times sal present in emp table */
select count(sal) , sal
from emp
group by sal; 


/* WAQTD total sal given to the each deptno if emp name starts with A*/
select sum(sal),deptno
from emp
where ename like 'A%'
group by deptno;




/*      Having caluse      */

/*WAQTD no of emp working in each deptno if there are at least 3 emp working in each deptno  */
select count(*) , deptno
from emp
group by deptno
having count(deptno)>=3;


/* WAQTD no of emp working in each deptno if there are atleast 4 emp working in each deptno except clerk*/
select count(*) , deptno
from emp
where job != 'clerk'
group by deptno
having count(*) >= 4;


/*WAQTD sal which is repeated  */
select sal,count(*)
from emp
group by sal
having count(*)>1;


/*WAQTD hiredate which is repeated */
select hiredate,count(*) 
from emp
group by hiredate
having count(*)>1;


/*WAQTD job which is repeated */
select job , count(*)
from emp
group by job
having count(*)>1;


/* WAQTD max sal given to each deptno if max sal for each deptno is greater than 2450 */
select max(sal) , deptno
from emp
group by deptno
having max(sal) > 2450; 


/*WAQTD total sal of a emp along with job if emp is getting sal more than 1500 */
select sum(sal),job
from emp
where sal > 1500
group by job;
   
   
/* WAQTD total sal given to each deptno if emp getting sal more than 1800 and 
total sal given to each deptno is greater than 3450*/
select sum(sal) , deptno
from emp
where sal > 1800
group by deptno
having sum(sal) > 3450;


/*  order by caluse  */
select sal
from emp
order by sal asc ;


select sal
from emp
order by sal desc ;


select ename 
from emp
order by ename asc ;

select ename 
from emp
order by ename  desc ;



/* limit */
select *
from emp
limit 11;


/*  View */

create view gym_view as 
select  ename , deptno
from emp;

select * from gym_view;
drop view gym_view;


/* commit */

set autocommit = off;
select * from placement;
commit;

delete from placement;
rollback;




