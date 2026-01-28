use sakila;
select actor_id , first_name from sakila.actor where actor_id between 1 and 4 
union all
select first_name , actor_id from sakila.actor where actor_id between 3 and 5;

-- recursive cte 
with recursive cte as(
select 10 as num 
union all
select num+1 from cte 
where num<15
)
select * from cte;

CREATE TABLE employees (
    employeeid INT PRIMARY KEY,
    name VARCHAR(50),
    managerid INT
);
INSERT INTO employees (employeeid, name, managerid) VALUES
(1, 'Alice', NULL),      -- CEO
(2, 'Bob', 1),           -- Reports to Alice
(3, 'Charlie', 2),       -- Reports to Bob
(4, 'Diana', 2),         -- Reports to Bob
(5, 'Eve', 3);           -- Reports to Charlie

select * from employees;

WITH RECURSIVE cte AS (
    -- Anchor member (Boss)
    SELECT 
        employeeid,
        name,
        name AS hierarchy_path
    FROM employees
    WHERE managerid IS NULL

    UNION ALL

    -- Recursive member
    SELECT 
        e.employeeid,
        e.name,
        CONCAT(cte.hierarchy_path, ' -> ', e.name) AS hierarchy_path
    FROM employees e
    JOIN cte 
        ON e.managerid = cte.employeeid
    WHERE e.employeeid < 5
)

SELECT * FROM cte;

WITH RECURSIVE cte AS (

    -- Anchor member (Boss)
    SELECT 
        employeeid,
        name,
        name AS hierarchy_path,
        1 AS level
    FROM employees
    WHERE managerid IS NULL

    UNION ALL

    -- Recursive member
    SELECT 
        e.employeeid,
        e.name,
        CONCAT(cte.hierarchy_path, ' -> ', e.name) AS hierarchy_path,
        cte.level + 1 AS level
    FROM employees e
    JOIN cte 
        ON e.managerid = cte.employeeid
    WHERE e.employeeid < 5
)

SELECT * FROM cte;







