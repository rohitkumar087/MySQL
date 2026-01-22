create database practice_Question;
use practice_Question;

CREATE TABLE events (
  event_id   INT PRIMARY KEY,
  event_name VARCHAR(100) NOT NULL,
  city       VARCHAR(50)  NOT NULL
);

CREATE TABLE ticket_sales (
  sale_id          INT PRIMARY KEY,
  event_id         INT NOT NULL,
  sale_date        DATE NOT NULL,
  ticket_type      VARCHAR(20) NOT NULL,
  qty              INT NOT NULL,
  price_per_ticket INT NOT NULL,
  CONSTRAINT fk_ticket_sales_event
    FOREIGN KEY (event_id) REFERENCES events(event_id)
);

INSERT INTO events (event_id, event_name, city) VALUES
(1, 'Music Fest', 'Mumbai'),
(2, 'Tech Summit', 'Bengaluru'),
(3, 'Food Carnival', 'Delhi'),
(4, 'Startup Meetup', 'Mumbai');

INSERT INTO ticket_sales (sale_id, event_id, sale_date, ticket_type, qty, price_per_ticket) VALUES
(101, 1, '2025-01-05', 'Regular', 2, 1500),
(102, 1, '2025-01-10', 'VIP',     1, 5000),
(103, 2, '2025-02-03', 'Regular', 3, 2000),
(104, 2, '2025-02-10', 'VIP',     1, 6000),
(105, 3, '2025-03-01', 'Regular', 5,  800),
(106, 3, '2025-03-15', 'VIP',     2, 2500),
(107, 4, '2025-01-20', 'Regular', 4, 1200),
(108, 4, '2025-02-05', 'Regular', 1, 1200);

SELECT * FROM events ORDER BY event_id;
SELECT * FROM ticket_sales ORDER BY sale_id;

-- Find the total quantity sold per event_id
select event_id,sum(qty) from ticket_sales group by event_id;

-- Find the total revenue per event_id
select event_id,sum(qty * price_per_ticket) from ticket_sales group by event_id;

-- Find monthly total revenue (group by month of sale_date).
select  month(sale_date),sum(qty * price_per_ticket) from ticket_sales group by month(sale_date);

-- Find the maximum price_per_ticket per event_id. 
select event_id , max(price_per_ticket) from ticket_sales group by event_id;

-- Find the second higest ticekt-price
select max(price_per_ticket) from ticket_sales where price_per_ticket < (select max(price_per_ticket) from ticket_sales);

-- Find total revenue per month and ticket_type.
select  month(sale_date),ticket_type,sum(qty * price_per_ticket) from ticket_sales group by month(sale_date),ticket_type;

-- List all sales with event_name and sale_date.
select ts.sale_id , es.event_name , ts.sale_date from ticket_sales as ts join events as es on ts.event_id = es.event_id;

-- Show event_name, ticket_type, qty for each sale. 
select es.event_name , ts.ticket_type , ts.qty from ticket_sales as ts join events as es on ts.event_id = es.event_id;

-- Show sales where the event city is Mumbai. 
select ts.sale_id ,es.event_name ,es.city, ts.sale_date from ticket_sales as ts join events as es on es.event_id = ts.event_id where es.city = 'mumbai';

-- Show all events and matching sales 




