create database dbt_assigment4;
use dbt_assigment4;
create table dept(dept_id int(200),dept_name varchar(200),primary key(dept_id),salary int);
insert into dept values(1,'Finance',3000);
insert into dept values(2,'Training',5000);
insert into dept values(3,'Marketing',7000);
insert into dept values(4,'Max',4000);
select * from dept;

create table employee(emp_id int(255),emp_name varchar(200),dept_id int(255),salary int(255),manager int(255),
primary key(emp_id),constraint employee foreign key(dept_id) references dept(dept_id));
desc employee;
insert into Employee values (1,'Arun',1,8000,4);
insert into Employee values (2,'Kiran',1,7000,1);
insert into Employee values (3,'Scott',1,4000,1);
insert into Employee values (4,'Max',2,9000,1);
insert into Employee values (5,'Jack',2,18000,4);
select * from employee;
select dept.dept_name,Employee.emp_name from 
dept inner join Employee on dept.dept_id=Employee.dept_id;

select * from dept inner join Employee on dept.dept_id=Employee.dept_id;


select dept.dept_id,SUM(salary) from dept inner join employee  group by dept_id;

select dept_name ,emp_name from dept left outer join employee  on dept.dept_id=Employee.dept_id;
select dept_name ,emp_name from dept right outer join employee  on dept.dept_id=Employee.dept_id;


select emp_name,manager from dept full join employee order by emp_name;

select emp_name,dept_name from dept full join employee order by dept_name;

create table emp1(emp_no int(200),emp_name varchar(200));

insert into Emp1 values(1,'A');
insert into Emp1 values(2,'B');
insert into Emp1 values(3,'C');

select * from emp1;
create table emp2(emp_no int(200),emp_name varchar(200));

insert into Emp2 values(1,'A');
insert into Emp2 values(2,'B');
insert into Emp2 values(4,'D');
insert into Emp2 values(5,'E');
select * from emp2;
select * from emp1 union select * from emp2;
select * from employee where emp_id=(select emp_id employee where emp_name='Arun');

select * from employee where emp_id=(select emp_id  from employee where emp_name='jack');
select emp_name,salary from employee where salary=(select salary from employee order by salary limit 1);
update(select salary from employee inner join dept where dept.dept_name='Marketing')set salary=15000;
set SQL_SAFE_UPDATES=0;
update employee set salary=1500 where dept_id =(select dept_id from (select dept_id from employee
where emp_name='Max')a) ;
select * from employee;
select * from dept;


