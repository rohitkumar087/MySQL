CREATE DATABASE REGEX;
USE REGEX;

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    city VARCHAR(50)
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    amount DECIMAL(10,2)
);



INSERT INTO customers (customer_id, customer_name, city) VALUES
(1, 'Alice', 'New York'),
(2, 'Bob', 'Los Angeles'),
(3, 'Charlie', 'Chicago'),
(4, 'David', 'Houston'),
(5, 'Eva', 'Phoenix'),
(6, 'Frank', 'Philadelphia'),
(7, 'Grace', 'San Antonio'),
(8, 'Henry', 'San Diego'),
(9, 'Ivy', 'Dallas'),
(10, 'Jack', 'San Jose');


INSERT INTO orders (order_id, customer_id, order_date, amount) VALUES
(101, 1, '2024-01-05', 250.00),
(102, 2, '2024-01-06', 150.00),
(103, 3, '2024-01-07', 300.00),
(104, 1, '2024-01-10', 120.00),
(105, 5, '2024-01-12', 450.00),
(106, 6, '2024-01-15', 200.00),
(107, 2, '2024-01-18', 175.00),
(108, 8, '2024-01-20', 500.00),
(109, 11, '2024-01-22', 90.00),
(110, 12, '2024-01-25', 60.00);

-- Returns only matching records from both tables
-- An INNER JOIN returns rows only when there is a match in both tables based on the join condition.
select cs.customer_id , cs.customer_name, o.customer_id ,o.amount ,o.order_id from customers as cs
inner join orders as o
where cs.customer_id = o.customer_id;

select cs.customer_id , cs.customer_name, o.customer_id ,o.amount ,o.order_id from customers as cs
inner join orders as o
on cs.customer_id = o.customer_id;

-- Left Join - Returns all records from LEFT table + matching records from RIGHT table
select cs.customer_id , cs.customer_name, o.customer_id ,o.amount ,o.order_id from customers as cs
left join orders as o
on cs.customer_id = o.customer_id;

--  Right Join - Returns all records from RIGHT table + matching records from LEFT table
select cs.customer_id , cs.customer_name, o.customer_id ,o.amount ,o.order_id from customers as cs
right join orders as o
on cs.customer_id = o.customer_id;

-- Natural join
-- A NATURAL JOIN automatically joins two tables based on columns with the same name and same data type in both tables.
select c.cid , c.customer_name ,  o.order_id , o.amount from customers as c natural join orders o;
alter table customers rename column customer_id to cid;
select * from customers;

-- 🔹 CROSS JOIN / CARTESIAN JOIN
-- A CROSS JOIN returns the Cartesian product of two tables.
-- Each row of Table A is combined with every row of Table B
 -- No join condition is used
 
 -- get the total sum of amount spend by the cumstomers table 
 select sum(amount) from orders;
 
 






