
/*
DDL(Data defintion Language) - defines structure 
Commands - create , alter , trucate , drop
*/
create database regex1;
create table student(sId int , name varchar(20));

-- DML(Data Mnaipulation Language)
-- Commands - insert , update , delete , merge
insert into student(sId , name) values(101,'Rohit');

/*
Constraints:- SQL constraints are used to specify rules for data in a table
1. NOT NULL - columns cannot have null values
-> Ex. column1 int NOT NULL;

2. UNIQUE - all values in column ar different
-> Ex. column1 int UNIQUE;

3. PRIMARY KEY - makes a column unique and not null but used onl for one
-> Ex. id int PRIMARY KEY;

4. FOREIGN KEY - prevents action that would destroy links between tables
-> 

5. DEFAULT - sets the default value of a coulmn
-> Ex. salary int DEFAULT 25000

6. CHECK - it can linit the values allowed inn a column 
-> Ex. create table city(id int , name varchar(20) , age i
*/
-- NOT NULL
create table test1(sno int not null , name varchar(20));
insert into test1(sno , name) values(101,'Rohan');
insert into test1(sno, name) values(102,null);
insert into test1(sno,name) values(null,'Mohan'); -- show error 

-- DEFAULT
create table test2(sno int not null default 100 , salary int);
insert into test2(salary) values(2000);
insert into test2(sno) values(101);

-- UNIQUE
-- Insert multiple null values but not default value
create table test3(sno int not null, salary int unique default 1000);
insert into test3(sno , salary) values(101,3000);
insert into test3(sno) values(102);
insert into test3(sno) values(103); -- gives error because defalut salary 1000 already exist
insert into test3(sno , salary) values(104,null);
insert into test3(sno , salary) values(105,null);

-- CHECK
create table test4(sno int , salary int , check(sno between 1 and 100), check(salary in (1000,2000)));
insert into test4(sno , salary) values(10,2000);
insert into test4(sno , salary) values(101,3000);

create table test5(sno int , salary int ,
constraint regex1_test4_sno_check check (sno between 1 and 100),
constraint regex1_test4_salary_check check(salary in (1000 , 2000)));
insert into test5(sno , salary) values(10,2000);
insert into test5(sno , salary) values(101,2000);
insert into test5(sno , salary) values(11,3000);

-- PRIMARY KEY
create table test6(sno int primary key , salary int);
insert into test6(sno , salary) values(10,2000);

-- Foreign Key :-
create table customer2(cid int primary key, cname varchar(20));
insert into customer2 values(101,'Aman'),(102,'Abhishek');

create table order1(order_id int primary key, city varchar(20),cid int);
insert into order1 values(1007,'Jipur',101),(1008,'Mumbai',102),(1009,'Goa',102);
drop table order1;
create table orders(order_no int primary key , city varchar(20) , cid int, foreign key (cid) references customer2(cid));
insert into orders values(10010,'jaipur',103);
