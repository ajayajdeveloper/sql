---------------single view------------------
use ajay

create table india (id int identity(1,1), player varchar(100), runs int,dob date)
insert into india values('dhoni',183,'07-july-1983')
insert into india values('raina',154,'05-oct-1990')
insert into india values('virat',183,'11-dec-1992')

select*from india

select player as player  from  india 
select runs as runs from  india 
select DATEPART(yy,dob) as year from india


alter view viiew
as
select id,player,DATEPART(MM,dob) as months from india
select * from viiew where months=7              
select* from india

----------------------multiple view------------------------------------

create table india (id int identity(1,1), player varchar(100), runs int,dob date,division int)
insert into india values('dhoni',183,'07-july-1983',1)
insert into india values('raina',154,'05-oct-1990',2)
insert into india values('virat',183,'11-dec-1992',3)
insert into india values('vijay',127,'14-jan-1991',4)


create table nz (id int identity(1,1), player varchar(100), runs int,dob date,division int)
insert into nz values('kane',177,'08-may-1984',1)
insert into nz values('ross',153,'06-sep-1997',2)
insert into nz values('tom',123,'11-dec-1989',5)
insert into nz values('tim',128,'14-jan-1988',6)

select *from india
select *from nz


create view viewss
as
select s1.player,s2.runs from india as s1 join nz as s2 on s1.division=s2.division 

select * from viewss

select *from india
select *from nz


insert into viewss values('mah','k','sql')--error

update viewss set player='starc' where player='dhoni'--execute

delete from viewss where Grade='B'--error








