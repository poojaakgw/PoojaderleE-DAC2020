create database DBT_Assignment2;
use DBT_Assignment2;
create table Publishers(Pname varchar(200),phone int(255),Email varchar(600));
insert into Publishers values("Pooja",70578533,"poojaderle08@gmail.com");
select * from Publishers;
create table Authors(Aname varchar(200),phone int(255));
insert into Authors values("ABC",9764019);
select * from Authors;
create table Titles(titleid int(200),title varchar(200),pubdate int(255));
insert into Titles values(304,"SDF",29/1/2);
select * from Titles;
create table TitlesAuthors(titleid int(200),Importance varchar(20));
insert into TitlesAuthors values(506,"Yes");
select * from TitlesAuthors;
create table Subject(subid int(200),subjectname varchar(20));
insert into Subject values(678,"oracle");
create table Titles(titleid int(200),title varchar(200),pubdate date);
insert into Titles values(304,"SDF",date '2020-12-04');
select pname,phone,email from Publishers;
select aname,phone from Authors;
select titleid,title,pubdate from titles;
select titleid,importance from TitlesAuthors;
select subjectname from Subject where subjectname like '%oracle%';
alter table Titles add price int(200);
select * from Titles;
select * from Subject;
select subjectname from Subject where subjectname like 'J%';
select subjectname  from Subject where subjectname  like '%.net%';
select Pname  from Publishers where Pname like '%hill%';
select Aname  from Authors where Aname like '%er';
select * from Titles;
select title from Titles where price  < 500;
select title from Titles where pubdate >'2005-04-03';
select * from Subject ;
select subid from Subject where subjectname='java' OR subjectname='jee';
select * from Authors;
alter table Authors add author_id int(200);
select * from Authors;
insert into Authors values("ED Romans",9764019,101);
insert into Authors values("stepthen Walther",45664019,102);
select * from Authors;
select Aname from Authors where author_id<103;
select * from Titles;
insert into Titles values(101,"HIM",date '1990-02-23',400);
select * from Titles;
select * from Titles where titleid=101 OR price>400;
select * from Publishers;
alter table Publishers add pub_id int(200);
select * from Publishers;
insert into Publishers values('WROX',234555,'DFGGH@GMAIL.COM',1);
insert into Publishers values('TECHMEDIA',5554555,'GHSSSS@GMAIL.COM',2);
select * from Publishers where Pname in('WROX','TECHMEDIA');
select max(price) from Titles;
insert into  TitlesAuthors values(101,34.4);
insert into  TitlesAuthors values(102,17.2);
insert into  TitlesAuthors values(103,7.5);
select * from  TitlesAuthors;
select avg(Importance) from TitlesAuthors;
select count(author_id) from Authors;
select sum(price) from Titles;
select count(*) from Titles where month(pubdate)='04';
select count(*) from Titles where Year(pubdate)='2002' and month(pubdate)='04';
select year('2020-12-8');
select month('2020-12-8');
select Last_Day(now());
create table Employee(emp_id  numeric,emp_name varchar(200));
insert into Employee values(1,"pooja");
insert into Employee values(2,"komal");
select * from Employee;
alter table Employee add dept_id numeric;
set SQL_SAFE_UPDATES=0;
update Employee set emp_name= char(200);
desc Employee;
insert into Employee values(1,"pooja",101);
insert into Employee values(2,"Komal",102);
update Employee set emp_name='Scott' where emp_id=1;
truncate table Employee;
select round(30.5);
select ceil(23.4);
select floor(23.4);
select sign(-12);
select Mod(23,4);
select power(20,2);
select char_length("pooja Derle");
select concat("A","B","C");
select concat_ws("_","A","B","C");
select length("Pooja Derle");
select Lower("Pooja");
select Upper("Pooja");
select Replace("Pooja Derle","Derle","Gawali");
select reverse("Pooja Derle");
select strcmp("Pooja","Poojas");
select substring("Pooja Derle",2,4);
select substring_index("Pooja Derle","a","2");
select trim("       Pooja Derle    ");
select date('2020-10-12');
select current_date();
select current_time();
select CURRENT_TIMESTAMP();
select now();
select month(CURRENT_DATE);
select month(CURRENT_DATE+7);
select day(CURRENT_DATE);





















