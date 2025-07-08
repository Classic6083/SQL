show databases;
create database classic;
create database excelr;
use excelr;



create table student 
(

sid char(5),
sname varchar(50),
spercentage decimal (5,2),
student_address varchar(100)

);

create table flipkart 
(

customer_name varchar(50),
product_name varchar(50),
order_id int ,
address varchar (50),
date_of_order date,
mfg_date date,
product_price decimal(6,1),
rating decimal(2,1),
payment_details varchar(50),
payment_mode varchar(50)

);

desc flipkart; -- this command use to describe table