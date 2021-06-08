
create table world(id int identity(1,1),country varchar(100) , place varchar(100))
select *from world
insert into world values('india','chennai')
insert into world values('australia','melbournue')
insert into world values ('england','london')
insert into world values ('west indies','jamica')

drop table world

declare c cursor
for select*from world

open c

fetch next from c

close c

deallocate c




declare cc scroll cursor
for select * from world 

open cc

fetch next from cc

fetch first from cc

fetch last from cc

fetch prior  from cc

fetch relative 2 from cc

fetch absolute 2 from cc

close cc

deallocate cc


