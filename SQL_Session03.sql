use world;
-- get the name , continent and region where the continent is not same as europe
select name , continent , region from country where continent != 'europe';

-- get the name, continet and region where the second letter of region is 'a'
select name , continent , region from country where region like '_a%';

-- get the name, continet and region where the continent is last third char is 'i'
select name , continent , region from country where continent like '%i__';

-- get the name, continet and region where the name should be minimum 5 char
select name , continent , region from country where name like '_____%';

-- get the name, continet and region where the continent second letter is 'c' and last second char is 'i'
select name , continent , region from country where continent like '_c%i_';

-- get the name, continet and region where two 'a,a' present seperated with the character
select name , continent , region from country where name like  '%a_a%';


-- Operator in SQL
-- 1. And -> All conditions must be TRUE.
select * from country where name='India' and indepyear=1947;
-- 2. Or -> Only one of the conditions must be TRUE.
select * from country where continent='Asia' or population > 200000000;

-- CONCAT() is a function used to join (combine) two or more strings/columns  into one string/columns.
-- In this query we concat both name and code into one column 
select name , code  , concat(name,' ',code) as CountryandCode from country;



select * from country;
 