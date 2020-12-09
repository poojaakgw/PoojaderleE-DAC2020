create database db_Assignment1;
use db_Assignment1;
create table member(Member_Id int primary key NOT NULL AUTO_INCREMENT,Member_Name varchar(30),Member_address varchar(50), Acc_Open_Date Date,Membership_type varchar(20),Penalty_Amount int(200));
create table Books(Book_No int(6),Book_Name varchar(30), Author_Name  varchar(30),Cost int(7),category char(10));
create table Issue(Lib_Issue_Id int(10),Book_No int(6),Member_Id int(5), Issue_Date Date,return_Date Date);
select * from member;
select * from Books;
select * from Issue;
alter table member drop column Penalty_Amount;
select * from member;
insert into member values(1,"Richa Sharma","Pune",DATE '2020-12-07',"Liftime");
select * from member;
insert into member values(2,"Gauri Sharma","Mumbai",DATE '2020-12-06',"Annual");
insert into member values(3,"Shirya kadam","Dubai",DATE '1993-11-23',"on the basic");
insert into member values(4,"Kuldeep Ahire","Gujrat",DATE '1990-07-23',"Annual");
select * from member;
insert into member values(5,"Nutan bora","Nashik",DATE '1888-06-08',"Annual");
select * from member;
insert into Books values(101,"Let Us C","Denis Ritchie",450,"System");
insert into Books values(102,"Oracle-Complete Ref","Loni",550,"Database");
insert into Books values(103,"Mastring SQL","Loni",250,"Database");
insert into Books values(104,"PL SQL-Ref","ScottUrman",750,"Database");
select * from Books;
set SQL_SAFE_UPDATES=0;
UPDATE Books SET Cost=300 ,category='RDBMS' WHERE Book_No=103;
select * from Books;
drop table Issue;
create table Issue(Lib_Issue_Id int(10),Book_No int(6),Member_Id int(5), Issue_Date Date,return_Date Date);
insert into Issue(Lib_Issue_Id,Book_No,Member_Id, Issue_Date ) values(7001,101,1,STR_TO_DATE('10-Dec-06', '%d-%M-%Y'));
insert into Issue(Lib_Issue_Id,Book_No,Member_Id, Issue_Date ) values(7002,102,2,STR_TO_DATE('25-Dec-06', '%d-%M-%Y'));
insert into Issue(Lib_Issue_Id,Book_No,Member_Id, Issue_Date ) values(7003,104,1,STR_TO_DATE('15-Jan-06', '%d-%M-%Y'));
insert into Issue(Lib_Issue_Id,Book_No,Member_Id, Issue_Date ) values(7004,101,1,STR_TO_DATE('04-july-06', '%d-%M-%Y'));
insert into Issue(Lib_Issue_Id,Book_No,Member_Id, Issue_Date ) values(7005,104,2,STR_TO_DATE('15-nov-06', '%d-%M-%Y'));
insert into Issue(Lib_Issue_Id,Book_No,Member_Id, Issue_Date ) values(7006,101,3,STR_TO_DATE('18-feb-06', '%d-%M-%Y'));
select * from Issue;





