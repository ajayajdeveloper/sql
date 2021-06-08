use ajay

---1--
create table eemployee1 (emp_num int identity(1,1),emp_name varchar(100),salary int, hr varchar(100) ,tl varchar(100))
select*from eemployee1

insert into eemployee1 values ('ajay',100000,'vijay','sanjay')
insert into eemployee1 values ('dhoni',70000,'raina','jaddu')
insert into eemployee1 values ('ronaldo',50000,'messi','bale')
----2 to 6 -----
select emp_name as name  from eemployee1

select emp_num as employee_name ,salary as salary from eemployee1

-------------7----------
create table eemployee1 (emp_num int identity(1,1),emp_name varchar(100),salary int, hr varchar(100) ,tl varchar(100),depart int)
select*from eemployee1

insert into eemployee1 values ('ajay',100000,'vijay','sanjay',10)
insert into eemployee1 values ('dhoni',70000,'raina','jaddu',11)
insert into eemployee1 values ('ronaldo',50000,'messi','bale',12)


select*from eemployee1 where depart=10

drop table eemployee1

--------8--------------
create table empp(empp_num int identity(1,1),emp_name varchar(100),salary int, desg  varchar(100))
select*from empp

insert into empp values ('mandrekar',10000,'clerk')
insert into empp values ('dhoni',700,'clerk')

select emp_name as name from empp where salary>3000

--------------9 and 10---------
create table em(emp_n0 int identity(1,1),emp_name varchar(1000) ,commsion int)

select *from em

insert into em values ('ashwin',10000)
insert into em values ('ash',10000)
insert into em values ('ashwini',0000)

select *from em where commsion<1
select emp_n0 as emp_number ,emp_name as name  from em where commsion<1

-----------------------11-------------------
create table desg(id int identity(1,1),name varchar(100),desgnation varchar(100) ,salary int)
select *from desg
insert into desg values('a','clerk',5000)
insert into desg values('b','clerk',2000)
insert into desg values('c','salesman',5000)
insert into desg values('d','salesman',2000)
insert into desg values('e','analyst',25000)
insert into desg values('f','analyst',2000)

select name as name from desg where salary>3000


------------------12--------------------

create table work (emp_id int identity(1,1),name varchar(100),experience int)
select * from work

insert into work values ('a',7)
insert into work values ('b',3)

select name as name from work where experience>5

-----------13-----------------------
create table work1(emp_id int identity(1,1),name varchar(100),joining date )

select * from work1

insert into work1 values ('a','29-JUNE-90') 
insert into work1 values ('b','30-JUNE-91') 

select name as name from work1 where joining<('30-JUNE-90')
----------------14----------------------------------------












