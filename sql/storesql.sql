use ajay
--------------without parameter-----------------------
create table one(id int identity(1,1),emp_id int , name varchar(100))
insert into one values (451,'a')
insert into one values (484,'b')
insert into one values (498,'c')

alter procedure without
as 
select *from one
exec without


drop table one 

----------------------with parameter------------------------
create table one(id int ,emp_id int , name varchar(100))
select *from one
insert into one values (1,451,'a')
insert into one values (2,484,'b')
insert into one values (3,498,'c')

create procedure withh(@id int,@emp_id int,@name varchar(100))
as 
insert into one values(@id,@emp_id,@name)
execute withh 1,48,'ajay'

create procedure pupdate(@id,@emp_id,@name )
as
update one set emp_id=@emp_id,name=@name where id=@id
select*from one
execute updatee @salary=100000

create procedure deletee (@emp_id int)
as
select from one where @emp_id=emp_id
select*from one

exec one @emp_id=484



--------------------------output---------------------------
create table two(id int ,emp_id int , name varchar(100))
select *from two
insert into two values (1,451,'a')
insert into two values (2,484,'b')
insert into two values (3,498,'c')

create procedure outputt (@id int output,@emp_id output,@name varchar(100_))
as
select @id=id,@emp_id from two where @name=name

declare @id int,@emp_id int
exec two @id output,@emp_id output,'a'
select @id as i,@emp_id as emp