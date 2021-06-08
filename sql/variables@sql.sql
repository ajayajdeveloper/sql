use ajay

declare @id int
select @id=10
select @id


declare @a int
declare @b int 
declare @tot int 

select @a=10
select @b=20
select @tot=@a+@b
select @tot



select @@CONNECTIONS
select @@CPU_BUSY
select @@TEXTSIZE

declare @name varchar(100)
select @name='ajay'
select @name