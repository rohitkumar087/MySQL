use world;

-- count() function is used to count the rows 
-- when we count all rows so it will retrun with null and without null rows
select count(*) from country;

-- but when we count any specific column rows so it will return only these rows count where data is presnet not the null row
select count(indepyear) from country;

-- distinct is used to store unique values 
select distinct continent , region from country;

-- sum is used to count the sum of all values of any column
select count(population), sum(population) from country;

-- find the total unique governmentform in the world 
select count(distinct governmentform) from country;

-- find the total unique governmentform where continent is Asia
select count(governmentform)  from country where continent='Asia';

-- find the total countires and the total population in world
select count(population),sum(population) from country where continent='Africa';

-- get the total countries avg suface area the total population for the coutnries which has got their indenpendece where 1947 to 1988 these years should be incluede
select count(name), avg(surfacearea) , sum(population) from country where indepyear>1947 && indepyear<1998;

-- get the total number of countries and number of uniuque continents along with the avg population and the total number of capitals for the countires from the countries stating with 'a' 0r 'd' 
select count(name) , count(continent) , avg(population) , count(capital) from country where name like 'a%' or 'd%';
select * from country;

-- group by 
 -- filtering similar value together
 
select continent from country group by continent;

select count(*) , continent from country group by continent;

select indepyear ,count(*) from country group by indepyear;

select continent , count(name) , sum(population) from country group by continent;

-- from the city find the total city , districts , unique ditricts . population from the city table;
 select count(name) , count(district) , count(distinct district) , sum(population) from city group by district;

