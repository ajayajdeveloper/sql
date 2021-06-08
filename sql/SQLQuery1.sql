create database ajay
use ajay
 
create table student(sid int identity(1,1), name varchar(100), age int)
select*from student

insert into student values('ajay',18)
insert into student values('sanjay',19)
insert into student values('vijay',20)

create table dep (sid int identity(1,1), dept varchar(100))
select*from dep

insert into dep values('cse')
insert into dep values('ece')
insert into dep values('mech')

select*from student
select*from dep

select s.sid ,s.name ,s.age , d.sid ,d.dept from student s left join dep d on s.sid=d.sid 

drop table student 
drop table dep

create table student(sid int identity(1,1), name varchar(100), age int)
 select*from student

drop table student

create table student(sid int identity(1,1), name varchar(100), location varchar(100) , city varchar(100))
select*from student


insert into student values('ajay','chennai','aa')
insert into student values('sanjay','chennai','bb')
insert into student values('vijay','chennai','cc')
insert into student values('dhoni','ranchi','dd')
insert into student values('raina','uttarpradesh','ee')
insert into student values('virat ','delhi','ff')

create table dep (sid int identity(1,1), dept varchar(100))
select*from dep

insert into dep values('cse')
insert into dep values('ece')
insert into dep values('mech')

select*from student
select*from dep

select s.sid ,s.name ,s.location ,s.city , d.sid ,d.dept from student s left join dep d on s.sid=d.sid 
select s.sid ,s.name ,s.location ,s.city , d.sid ,d.dept from student s inner join dep d on s.sid=d.sid 
select s.sid ,s.name ,s.location ,s.city , d.sid ,d.dept from student s right join dep d on s.sid=d.sid 
select s.sid ,s.name ,s.location ,s.city , d.sid ,d.dept from student s full join dep d on s.sid=d.sid 

select s.sid ,s.name ,s.location ,s.city , d.sid ,d.dept from student s cross join dep d
select s.sid ,s.name ,s.location ,s.city , d.sid ,d.dept from student s left join dep d on s.name=d.name

create table employee (emp_id int, emp_name varchar(100),emp_manger_id int)
select*from employee

insert into employee values(1,'ajay',null)
insert into employee values(2,'aashik',1)
insert into employee values(3,'vishwa',1)
insert into employee values(4,'dilip',2)
insert into employee values(5,'mukilan',4)
insert into employee values(6,'cena',1)


select e1.emp_name 'manger',e2.emp_name 'employee'
from employee e1 join employee e2
on e1.emp_id=e2.emp_manger_id

drop table employee



select distinct  employee 








