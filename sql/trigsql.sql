use ajay
--------------------------insert------------------------------------------
create table student1(id int identity(1,1),name varchar(100),dept varchar(100))
create table staff(id int identity(1,1),name varchar(100),dept varchar(100))

select *from student1
select *from staff

drop table student1
drop table staff

 create  trigger iinsert 
on student1
for insert
as
declare @name varchar(50),@dept varchar(25)

select @name=name,@dept=dept from inserted
insert into staff values(@name,@dept)


insert into  student1 values('sekar','java')

---------------------------delete-------------------------------
create table student2(id int identity(1,1),name varchar(100),dept varchar(100))
create table staff2(id int identity(1,1),name varchar(100),dept varchar(100))

select *from student2
select *from staff2

drop table student2
drop table staff2

create    trigger ddelete
on student2
for delete
as
declare @name varchar(50),@dept varchar(25)

select @name=name,@dept=dept from deleted
 insert into staff2 values (@name,@dept)
 

insert into  student2 values('sekar','java')

delete from staff2  where id=1

select * from staff2

select * from student1



-----------------------update--------------------


create table updateee(id int,Sname varchar(50),Course varchar(25),dept varchar(25))

insert into updateee values(3,'ABHI','java','cse')

SELECT * FROM updateee


UPDATE updateee SET id=25 WHERE ID=3

create TRIGGER upp
ON updateee
FOR UPDATE 
AS
IF UPDATE(ID)
BEGIN
 PRINT 'DONT HAVE RIGHTS'
 ROLLBACK TRANSACTION
END










