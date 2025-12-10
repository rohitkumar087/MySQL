use world;

select * from city;

-- where clause we will fiter the data
select * from city where countrycode='ARG'; -- filter city for ARG country code 

-- acces city where population more than 6 lakh or more
select * from city where population>600000;

-- <> != (not equals to) access country code is not equal to ARG
select * from city where countrycode!='ARG';

select * from country;

-- in operator
select * from country where continent='North America';-- access data on the basis of specific continent

-- but in operator is use to access data on the basis on set of specific values
select * from country where continent in ('North America', 'Europe', 'Asia');

-- access data on the basis of some specific values not in range 
select name, continent from country where indepyear in (1901,1960);

-- access data on the basis of range of values
select name , continent , indepyear from country where indepyear between 1901 and 1960;

-- access data which is not between the 1901 to 1947
select name , continent, indepyear from country where indepyear not between 1901 and 1947;

-- get the contryname and the region where the region is not middleesast
-- get the name,indepyear and population with expected 10% increment in population
-- get all the columnasa of the countries where lies especenty is 38.3 and 66.4 
-- get the name , continent , population and gnp columns where poplation is not from 5000 to 200000

select name , continent , population , gnp from country where population not between 5000 and 200000; -- 4

select * from country where LifeExpectancy in (38.3,66.4); -- 3

select name , region from country where region != 'middleeast'; -- 1

select name , indepyear , population,  population*1.1 from country;


-- like operator
-- life -> to search any pattern

-- to meet with pattern 
-- special character is calld wildcard character
-- % ( we are finding zero or more character)
-- Asian Asia%

select  name , continent from country where name like 'A%';

-- _ ( inderscore Matches exactly one character)
select name , continent from country where name like 'Ir__';



