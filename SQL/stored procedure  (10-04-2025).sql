use excelr;

/* Stored procedure */ 

call emp_info;
call ends_s;
call dept_details(30);
call job_name('manager');
call mgr_name ('james');
call emp_deptname ('king');
call no_nature(0);

call maximum(@records);
select @records;

call sum_sal(@num1);
select @num1;

call total_sal(20,@num1);
select @num1;



