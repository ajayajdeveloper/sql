use ajay
create table stud(sid int,sname varchar(30),courseid int,Grade Char(1))
create table course(courseid int,courseName varchar(30),Duration int) 

insert into stud values(1,'siva',500,'A')
insert into stud values(2,'sakthi',503,'A')
insert into stud values(3,'Ranbhir',500,'A')
insert into stud values(4,'Imrankhan',503,'A')
insert into stud values(5,'sachin',504,'A')
insert into stud values(6,'yuvi',500,'A')

insert into course values(500,'PHP\MYSQL ',2)
insert into course values(501,'JAVA ',4)
insert into course values(502,'.NET ',4)
insert into course values(503,'Oracle ',3)
insert into course values(504,'SQL ',2)
insert into course values(505,'MYSQL ',1)
 
select * from course
select * from stud

select * from stud where courseid =(select courseid from course where duration!1)
select * from stud where courseid in(select courseid from course where duration = 2)
select courseid from stud where grade ='A'

select * from course where courseid > all (select courseid from stud where grade ='A') 
select * from course where courseid > any (select courseid from stud where grade ='A') 
select * from course where exists (select courseid from course where duration = 4) 



select * from stud 
select sid,sname from stud s1 where s1.courseid =
 ( select courseid from course s2 where s1.courseid  = s2.courseid  )
