use ajay

create table employee1(empno int ,empname varchar(20),salary int constraint pk_emplyoyee1 primary key )

select * from employee1

insert into employee1 values(1,'sathish',10000)
insert into employee1 values(2,'priya',15000)
insert into employee1 values(3,'ish',20000)
insert into employee1 values(4,'hema',10000)
insert into employee1 values(5,'hari',10000)

insert into employee1 values(6,'harii',94559)
insert into employee1 values(7,'mr',null)
drop table employee1

-----------------unique key----------------

create table employee1(empno int constraint pk_employee1 unique ,empname varchar(20),salary int)

select * from employee1

insert into employee1 values(1,'sathish',10000)
insert into employee1 values(2,'priya',15000)
insert into employee1 values(3,'ish',20000)
insert into employee1 values(4,'hema',10000)
insert into employee1 values(5,'hari',10000)

insert into employee1 values(6,'harii',94559)

insert into employee1 values(7,'mr',null)

drop table employee1
----------------------check key -------------------------
create table gen(gender varchar(10) constraint ck_gen check(gender in('male','female')))
select * from gen
insert into gen values('male')
insert into gen values('female')
insert into gen values('ma')
insert into gen values('MALE')

------------------------default-------------------------------

create table emp(empno int ,ename varchar(20),city varchar(20) default 'chennai')
select * FROM emp
insert into emp values(555,'SIVA','bangalore')
insert into emp values(195,'SMS',default)


--------------null and not null--------------------------------
create table enull(empno int not null,ename varchar(20) null )
select* from enull
insert into enull values(10,'sat')
insert into enull (ename)values ('sat')
drop table enull

------------rule----------------------
create table ruule(id int constraint pk_test primary key,sname varchar(50))
select *from ruule

create rule tes
as @@range between 100 and 1000

 sp_bindrule tes,'ruule.id'

insert into ruule values(101,'siva')
insert into ruule values(102,'sakthi')
insert into ruule values(56,'sachin')
insert into ruule values(1501,'Ranbhir')


---------foreign key------------------------------

create table emp_det(empno int constraint pk_empdet primary key,ename varchar(20),desg char(3),salary money,deptno int)

select * from emp_det

insert into emp_det values(111,'siva','TRN',10000.00,10)
insert into emp_det values(112,'sakthi','TRN',20000.00,20)
insert into emp_det values(113,'Ranhir','ACT',30000.00,30)
insert into emp_det values(114,'Imran','PRG',40000.00,40)
insert into emp_det values(115,'sachin','BAT',50000.00,50)
insert into emp_det values(116,'Yuvi','LFT',60000.00,60)

create table sal_det(salno int constraint fk_dno references emp_det(empno),ename varchar(20))



insert into sal_det values(111,'sat')
insert into sal_det values(112,'hema')
insert into sal_det values(113,'ebi')
insert into sal_det values(114,'kriba')

insert into sal_det values(214,'ppp')

select * from emp_det
select *from sal_det


delete from emp_det where empno=111

delete from sal_det where salno=112
delete from emp_det where empno=112
