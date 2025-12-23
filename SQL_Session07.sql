use world;

-- Where will only filter the data which is exist in our table 
-- we can't use where with the aggreagate function

-- Difference b/w where and having clause 
-- where clause is used to filter the data from   the table 
-- having clause is used with the aggreagate columns

-- having tp filter data based on aggregate clumn like sum , count ,max
select continent , sum(population) from country  group by continent having sum(population)>30401150;

-- get the name of continent name and total population where lifeexpectency is greater than 35%
select *from country ;

-- get the total countries for each govetform where the total nuo. of countries should be greater than 30
select governmentform ,count(name) as totalCountry from country group by governmentform having totalCountry>30 ;

-- get the  total countries for each govetform where only for the countries having their cpital greater than 30 and total ppopulation greater than 300000
select governmentform , count(name) , sum(population) from country where capital>30 group by governmentform having sum(population)>300000;

-- we get toatl countries in an continent than we than we get the total countries on the basis of region
select continent , region , count(name) from country group by continent, region;

select max(population)-min(population) from country;
-- Practice some questions on the HackerRank: