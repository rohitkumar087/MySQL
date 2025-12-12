-- select ->  data retrieve/access 
-- Query -> mulitple line and in case sensitive
-- where ( filter ) and or between in like 
-- between , in like (%,_)

-- Functions :-
/*
Funnctions are set of statement which can be reusable 

Types :-
1. Scaler function -> A Scalar Function returns a single value (scalar value) like INT, VARCHAR, DATE, etc.
2. Multiline function ->  A Table-Valued Function returns a table (multiple rows & columns).
*/

use world ;
-- upper() function convert column data into uppercase
select name , continent , upper(name) from country;
-- lower() function convert column data into lowercase
select name , continent , lower(name) from country;

-- concat() is used to concat two columns data
select name , continent , concat(continent,'-',code,''-',REGex')from country;

-- 1. concat_ws() is used to seperate the data

-- 2. substr() -> extract the character bsed on the position
select name , substr(name,2) from country;   -- it this we access data from the 2nd index or character

select name , substr(name,1,5) from country;  -- get data from the 1st index to 5 index

select name , substr(name,-4) from country;  -- minus indexing in which we get last char on the basis of give index
-- get name and continent data whose first character are same 
select name , continent  from country where substr(name,1,1) = substr(continent,1,1);

-- get country whose first three character are 'alg'
select name , continent  from country where substr(name,1,3) = 'Alg';

-- 3. instr() -> search positon of character
select name , instr(name,'a') from country;


-- 4. length() always return how many bytes consumed 
select name , length(name) from country;

-- 5. char_length return total number of characters present 
select name , char_length(name) from country;

-- 6. trim() -> it is used to remove extra character and white space 
--    trim remove character form both left and right side
select char_length('   Mohit Singh    ');
select trim('     Mohit Singh    ');
select trim(both 'g' from '     mohitggggg');

select name , trim(both 'A' from name) from country;
-- ltrim -> removes character fromm left
select ltrim('    mohit    ');
-- rtrim -> removes character fromm right
select rtrim('    mohit    ');


-- lpad and rpad
select name , population ,lpad(population,9,'*') from country;
select name , population ,rpad(population,9,'*') from country;
