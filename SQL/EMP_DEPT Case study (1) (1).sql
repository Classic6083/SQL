CREATE DATABASE CompanyDB;

USE CompanyDB;

CREATE TABLE DEPT (
    deptno INT PRIMARY KEY,
    dname VARCHAR(30),
    loc VARCHAR(30));

INSERT INTO DEPT VALUES (10, 'OPERATIONS', 'BOSTON');
INSERT INTO DEPT VALUES (20, 'RESEARCH', 'DALLAS');
INSERT INTO DEPT VALUES (30, 'SALES', 'CHICAGO');
INSERT INTO DEPT VALUES (40, 'ACCOUNTING', 'NEW YORK');

select * from dept;

CREATE TABLE EMP (
    empno INT PRIMARY KEY,
    ename VARCHAR(30),
    job VARCHAR(20) DEFAULT 'Clerk',
    mgr INT,
    hiredate DATE,
    sal DECIMAL(10,2) CHECK (sal > 0),
    comm DECIMAL(10,2),
    deptno INT,
    FOREIGN KEY (deptno) REFERENCES DEPT(deptno));


INSERT INTO EMP VALUES (7369, 'SMITH', 'CLERK', 7902, '1890-12-17', 800, NULL, 20);
INSERT INTO EMP VALUES (7499, 'ALLEN', 'SALESMAN', 7698, '1981-02-20', 1600, 300, 30);
INSERT INTO EMP VALUES (7521, 'WARD', 'SALESMAN', 7698, '1981-02-22', 1250, 500, 30);
INSERT INTO EMP VALUES (7566, 'JONES', 'MANAGER', 7839, '1981-04-02', 2975, NULL, 20);
INSERT INTO EMP VALUES (7654, 'MARTIN', 'SALESMAN', 7698, '1981-09-28', 1250, 1400, 30);
INSERT INTO EMP VALUES (7698, 'BLAKE', 'MANAGER', 7839, '1981-05-01', 2850, NULL, 30);
INSERT INTO EMP VALUES (7782, 'CLARK', 'MANAGER', 7839, '1981-06-09', 2450, NULL, 10);
INSERT INTO EMP VALUES (7788, 'SCOTT', 'ANALYST', 7566, '1987-04-19', 3000, NULL, 20);
INSERT INTO EMP VALUES (7839, 'KING', 'PRESIDENT', NULL, '1981-11-17', 5000, NULL, 10);
INSERT INTO EMP VALUES (7844, 'TURNER', 'SALESMAN', 7698, '1981-09-08', 1500, 0, 30);
INSERT INTO EMP VALUES (7876, 'ADAMS', 'CLERK', 7788, '1987-05-23', 1100, NULL, 20);
INSERT INTO EMP VALUES (7900, 'JAMES', 'CLERK', 7698, '1981-12-03', 950, NULL, 30);
INSERT INTO EMP VALUES (7902, 'FORD', 'ANALYST', 7566, '1981-12-03', 3000, NULL, 20);
INSERT INTO EMP VALUES (7934, 'MILLER', 'CLERK', 7782, '1982-01-23', 1300, NULL, 10);


select * from emp;

-- 3.	List the Names and salary of the employee whose salary is greater than 1000

SELECT ename, sal FROM EMP WHERE sal > 1000;

-- 4.	List the details of the employees who have joined before end of September 81.

SELECT * FROM EMP WHERE hiredate < '1981-09-30';

-- 5.	List Employee Names having I as second character.

SELECT ename FROM EMP WHERE ename LIKE '_I%';

-- 6.	List Employee Name, Salary, Allowances (40% of Sal), P.F. (10 % of Sal) and Net Salary. Also assign the alias name for the columns

SELECT ename AS "Employee Name",
       sal AS "Salary",
       ROUND(sal * 0.40,2) AS "Allowance",
       ROUND(sal * 0.10,2) AS "PF",
       ROUND(sal + (sal * 0.40) - (sal * 0.10),2) AS "Net Salary"
FROM EMP;

-- 7.	 Employee Names with designations who does not report to anybody

SELECT ename, job FROM EMP WHERE mgr IS NULL;

-- 8.	List Empno, Ename and Salary in the ascending order of salary.

SELECT empno, ename, sal FROM EMP ORDER BY sal ASC;

-- 9.	How many jobs are available in the Organization?

SELECT COUNT(DISTINCT job) AS total_jobs FROM EMP;

-- 10.	Determine total payable salary of salesman category

SELECT SUM(sal + IFNULL(comm, 0)) AS total_payable_salary
FROM EMP
WHERE job = 'SALESMAN';

-- 11.	List average monthly salary for each job within each department   

SELECT deptno, job, ROUND(AVG(sal), 2) AS avg_monthly_salary
FROM EMP
GROUP BY deptno, job;

-- 12.	Use the Same EMP and DEPT table used in the Case study to Display EMPNAME, SALARY and DEPTNAME in which the employee is working.

SELECT e.ename AS empname, e.sal AS salary, d.dname AS deptname
FROM EMP e
JOIN DEPT d ON e.deptno = d.deptno;

-- 13.	Create the Job Grades Table as below

-- Create JOB_GRADES Table

CREATE TABLE JOB_GRADES (
    grade CHAR(1) PRIMARY KEY,
    lowsal INT,
    hisal INT);

-- Insert Data into JOB_GRADES

INSERT INTO JOB_GRADES VALUES ('A', 0, 999);
INSERT INTO JOB_GRADES VALUES ('B', 1000, 1999);
INSERT INTO JOB_GRADES VALUES ('C', 2000, 2999);
INSERT INTO JOB_GRADES VALUES ('D', 3000, 3999);
INSERT INTO JOB_GRADES VALUES ('E', 4000, 5000);

SELECT * FROM JOB_GRADES;

-- 14.	Display the last name, salary and  Corresponding Grade.

SELECT e.ename AS "Emp Name", e.sal AS "Salary", g.grade AS "Grade"
FROM EMP e
JOIN JOB_GRADES g
ON e.sal BETWEEN g.lowsal AND g.hisal;

-- 15.	Display the Emp name and the Manager name under whom the Employee works in the below format.

SELECT e.ename AS "Emp", m.ename AS "Reports_to"
FROM EMP e
LEFT JOIN EMP m ON e.mgr = m.empno;

-- 16.	Display Empname and Total sal where Total Sal (sal + Comm)

SELECT ename AS "Emp Name",
       sal AS "Salary",
       comm AS "Commission",
       (sal + IFNULL(comm, 0)) AS "Total Salary"
FROM EMP;

-- 17.	Display Empname and Sal whose empno is a odd number

SELECT ename AS "Emp Name", sal AS "Salary"
FROM EMP
WHERE empno % 2 = 1;

-- 18.	Display Empname , Rank of sal in Organisation , Rank of Sal in their department

SELECT ename, deptno, sal,
       DENSE_RANK() OVER (ORDER BY sal DESC) AS OrgRank,
       DENSE_RANK() OVER (PARTITION BY deptno ORDER BY sal DESC) AS DeptRank
FROM EMP;

-- 19.	Display Top 3 Empnames based on their Salary

SELECT ename, deptno, sal
FROM EMP e
WHERE sal = (
    SELECT MAX(sal)
    FROM EMP
    WHERE deptno = e.deptno) ORDER BY sal DESC;
    
-- 20.	Display Empname who has highest Salary in Each Department.

SELECT ename, deptno, sal
FROM EMP e
WHERE sal = (
    SELECT MAX(sal)
    FROM EMP
    WHERE deptno = e.deptno) ORDER BY deptno;
