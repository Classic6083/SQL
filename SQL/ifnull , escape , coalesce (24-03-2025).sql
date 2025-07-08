use excelr;

/*
WAQTD the name of employee whose name dose not start with vowels
*/

select ename
from emp
where ename not like "A%" and ename not like "E%" and  ename not like "I%" and  ename not like "O%" and ename not like "U%";



-- ifnull
select ename , sal , comm , sal+comm , sal+ifnull(comm,0)
from emp;



/*
WAQTD the maximum salary of employee
*/
select max(sal)
from emp;


/*
WAQTD maximum salary given to the namager
*/
select max(sal)
from emp
where job = 'manager';


/*
WAQTD minimum salary to deptno 30
*/
select min(sal)
from emp
where deptno = 30;


/*
WAQTD total salary given to the salesman
*/
select sum(sal)
from emp
where job = 'salesman';


/*
WAQTD avg sal of all the emp
*/
select avg(sal)
from emp;


/*
WAQTD no of employee working as manager
*/
select  count(ename) 
from emp
where job = 'manager';


-- length
select length('krushna');

-- upper()
select upper('krushna');

-- lower()
select lower('KRUSHNA');

-- Reverse()
select reverse('Krushna');

/*
WAQTD name of emp if emp has a palindrome or not
*/
select ename
from emp
where ename = reverse(ename); 


-- mod()
-- it is used to find the modulus / riminder of the number

select *
from emp;

/*
WAQTD to check the even no of emp numbers
*/
select empno
from emp
where mod (empno,2)=0;


-- round()
select round(4.5);


-- date and time 
select now();

-- power
select power(2,4);

/*
trim
1) Ltrim :- remove left side spaces
2) Rtrim :- remove right side spaces
*/
select ltrim('     k');
select rtrim('m     ');


-- case

select ename , sal ,
case when sal > 1500 then
'Maximum salary'
else
'Minimum salary' 
end as status
from emp;

