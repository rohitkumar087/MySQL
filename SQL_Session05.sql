use world;

-- Numeric functins , Dates
-- rouund() function 
select lifeexpectancy , round(lifeexpectancy) from country;
-- If the next digit ≥ 5 → increase
--  the next digit < 5 → decrease
select 83.62 , round(83.674,1);

select (456.23) , round(476.23,-1);
-- ceiling/ceil() Always rounds up to the next integer
-- Works even if decimal is small
select ceiling(14.1);  -- 15

-- floor() Always rounds down to the previous integer
select floor(14.9);  -- 14

-- truncate() fuction
-- Just removes extra decimals
-- No increase, no decrease
SELECT TRUNCATE(12.9, 0);   -- 12
SELECT TRUNCATE(12.567, 2); -- 12.56

-- date
-- inbuilt date function to print date and time
select now(), curdate(), current_timestamp() , current_time();

-- add date
select now() , adddate( now() ,2), adddate(now(),interval -3 month);

select now() , subdate( now() , 2) , year(now());

select now() , extract(week from now());

select now() , date_format( now() , 'Month is %M & year is %w');

select distinct(continent) from country;

select count(continent) , count(distinct(continent)) from country;