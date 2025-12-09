select database();

show tables;
-- to see the structure of table 
describe city;

-- to print whole data of table
select * from city;

-- column can be print in any order 
select population,name,district from city;

-- to add on some mathmatical opeartion line population+10
select name,population, population+10 from city;

-- query can be writtnen in multiple line 
-- sql in not case sensetive 
select name,
population,
countrycode 
from city;

-- alias (nickname)
select *,population+1+23+43+32 from country;