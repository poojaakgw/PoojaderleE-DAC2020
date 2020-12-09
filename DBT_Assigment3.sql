create database dbt_Assignment3;
use dbt_Assignment3;
create table Department(dept_id int(255),dept_name varchar(50) ,primary key(dept_id));
insert into Department values(1,'Finance');
insert into Department values(2,'Training');
insert into Department values(3,'Marketing');
select * from Department;
create table employee(emp_id int(255),emp_name varchar(200),dept_id int(255),salary int(255),manager int(255),primary key(emp_id),constraint employee foreign key(dept_id) references Department(dept_id));
desc employee;
insert into Employee values (1,'Arun',1,8000,4);
insert into Employee values (2,'Kiran',1,7000,1);
insert into Employee values (3,'Scott',1,4000,1);
insert into Employee values (4,'Max',2,9000,1);
insert into Employee values (5,'Jack',2,18000,4);
insert into Employee values (6,'King',2,8000,1);
insert into Employee values (7,'Kong',2,18000,1);
insert into Employee values (8,'Emma',2,28000,1);
create table Publishers(pubid numeric(7),
pname varchar(25),
phone varchar(30),
email varchar(100) UNIQUE,
primary key(pubid));
create table Authors1(auid numeric(7),aname varchar(25),email varchar(50) UNIQUE,phone varchar(20),primary key(auid));
select * from Authors1 order by aname asc;
insert into Authors1 values(10,"Pooja","poojaderle07@gmail.com",233444);
insert into Authors1 values(9,"Komal","komalderle07@gmail.com",999944);
select * from Publishers;

insert into Publishers values(1,"akash","akashgawali90@gmail.com",122444);
insert into Publishers values(2,"sanket","sanketderle90@gmail.com",45566);
select * from Publishers order by pname desc;
select * ,sum(salary) from Employee group by dept_id;
select *,SUM(salary) from employee where (salary>17000)group by dept_id ;
select dept_id ,sum(salary) from employee group by dept_id having sum(salary>17000);
select dept_id ,sum(salary) from employee group by dept_id having sum(salary<20000);