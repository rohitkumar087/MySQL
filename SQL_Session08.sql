use world;
-- join is used to extract data of 2 tables

-- id is primary key 
select count(id) , count(distinct id) , count(population), count(distinct population) from city;

-- in country table country code id primary key
select * from country;
-- here we give name to city table as ct 
select ct.name , ct.countrycode from city as ct;

select cntry.name , cntry.code from country as cntry;

-- join two tables
-- find out the city and their respective country name
select ct.name , ct.countrycode, cntry.code, cntry.name from city as ct 
join country as cntry 
where cntry.code = ct.countrycode;

-- find the city name and the population of city along with the govt form in that city with the population from highest to lowest;
select ct.name , ct.population ,cntry.governmentform from city as ct
join country as cntry
where ct.countrycode = cntry.code order by ct.population asc;

-- get the country name , population and all the language spoken in each country countrylanguage ;
select ct.name , ct.population, cntrylang.language from country as ct
join countrylanguage as cntrylang
where ct.code = cntrylang.countrycode;

use sakila;

-- get the actor id and first name along with its film id 
select act.actor_id , act.first_name , flmact.film_id from actor as act 
join film_actor as flmact 
where act.actor_id = flmact.actor_id;

-- actor , film_actor , film
select act.actor_id, act.first_name , flmact.film_id ,flm.title from actor as act
join film_actor as flmact , film as flm 
where act.actor_id = flmact.actor_id && flm.film_id = flmact.actor_id;

