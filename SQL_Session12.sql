/*
 Datatypes in MySql
-1. number -> int , decimal
 tinyint - size(1 byte)
 smallint - size(2 byte)
 int - size(4 byte)
 mediumint - size(3 byte)
 bigint - size(8 byte)
 
 1 byte = 8 bit 2**8 => 256  (-128 - 127)
 */
 
 create database regex2;
 create table tb1(salary float , price double);
 insert into tb1 values(100.4567334, 100.34839);
 select * from tb1;
 
 /*
2. String vlaues char vs varchar()
 -> char are fixed size character
 -> variable length character
 */
 
 create table tb2(name varchar(20) , gender char(10));
 insert into tb2 values('aman','male') ,('raman','male'),('rohan','male');
 insert into tb2 values('raj       ','male        '); -- char will trucncate all the whitespaces form the last and varchar will have all the whitespaces up to size of column
 select *, length(name), length(gender) from tb2;
 
/*
DDL(Data Defintion Language)
Commands - create , drop , truncate , alter
*/

-- create table using select query(CTAS)
create table actor_cp as  
select first_name , last_name from sakila.actor;
select * from actor_cp;

-- delete table -> delete both data and structure
drop table actor_cp;

create table actor_cp as  
select first_name as fname , last_name as lname from sakila.actor 
where actor_id between 10 and 14;
select * from actor_cp ;

-- alter 
alter table actor_cp add column (salary int);  -- add new column
alter table actor_cp add constraint new_key primary key(fname);  -- add constraint 
alter table actor_cp drop column lname;  -- delete any column 
alter table actor_cp rename column salary to newSalary;
desc actor_cp;
select * from actor_cp;


-- DML (Data Manipulation language)
-- commands - insert , update 
 update actor_cp set newSalary=1000; -- set value on all the columns 
 SET SQL_SAFE_UPDATES = 0;
 
 update actor_cp set newSalary=2000 where fname='UMA';



 
