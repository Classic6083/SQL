use excelr;

create table product

(
pid int primary key,
pname varchar(50) not null,
price int check(price>0),
mfgdate date not null,
expdate date not null

);

desc product;


create table customer

(
cid int primary key,
cname varchar(50) not null,
cadd varchar(100) not null,
cphno bigint check (length(cphno)=10) unique not null ,
city varchar (50) default 'pune',
pid int,
constraint pid foreign key(pid) references product(pid)
);

drop table product;


create table placement
(
placement_id int primary key ,
cname varchar(50) not null,
package bigint not null
);

create table student
(
sid int ,
sname varchar(50) not null,
semailid varchar(50) not null,
sphno bigint check(length(sphno)=10),
placementid int,
constraint placementid foreign key (placementid) references placement (placementid)
);

drop table  placement;




