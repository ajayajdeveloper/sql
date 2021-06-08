use ajay


create table eemployee (emp_num int identity(1,1),emp_name varchar(100),salary int, hr varchar(100) ,tl varchar(100))
select*from eemployee

insert into eemployee values ('ajay',100000,'vijay','sanjay')
insert into eemployee values ('dhoni',70000,'raina','jaddu')
insert into eemployee values ('ronaldo',50000,'messi','bale')

select* from eemployee where emp_num<>1
select* from eemployee where emp_num!=2
select* from eemployee where emp_num<2
select* from eemployee where emp_num>2
select* from eemployee where emp_num<=
select* from eemployee where emp_num>=
select* from eemployee where emp_num!<
select* from eemployee where emp_num!>

select * from eemployee where salary  between 40000 and 80000
select * from eemployee where salary not between 40000 and 80000


select * from eemployee where emp_name like '[a-k]%'
select * from eemployee where emp_name like '[^a-k]%'

select * from eemployee where salary is null
select * from eemployee where salary is not null

select * from eemployee where (salary >20000 and emp_num < 2)
select * from eemployee where (salary >20000 or emp_num< 2)
select * from eemployee where  not (salary <60000 or emp_num < 3)

select * from eemployee where hr not in('vijay','messi')
select * from eemployee where hr in('vijay')



