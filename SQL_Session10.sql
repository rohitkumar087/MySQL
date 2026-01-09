use sakila ;
select * from payment;

select amount from payment where payment_id=3;
select * from payment where amount = 5.99;

select * from payment where amount=(select amount from payment where payment_id=3);

-- get all the payment information where the staff surving the id 7,8;
select staff_id from payment where  payment_id=7;

-- get the payment id amount and the date where the month of payment should be same as of payment id = 20
select month(payment_date) from payment where payment_id=20;
select payment_id , amount , payment_date from payment where month(payment_date)=(select month(payment_date) from payment where payment_id=20);

-- get the amount and total number of payemnt done for each amount where the amount should be less than the amount of rental id 1725;
select amount from payment where rental_id=1725;
select amount , count(*) from payment where amount < (select amount from payment where rental_id=1725) group by amount;

-- get the month and the total amount spend from the payement table wehere the month is greater than the month of customer id 1 on with the payment id 3
select month(payment_date) from payment where customer_id=1 and payment_id=3;

select month(payment_date) , sum(amount) from payment where month(payment_date) > (select month(payment_date) from payment where customer_id=1 and payment_id=3) group by amount;

-- Mullti-Row subquery 
-- in multi row subquery we can't use > , < ,= , != operators 
-- in multi row subquery we use in , any , all operators

-- get the data from payment table where payment_id is equal to 2 or 3 
select amount from payment where payment_id=2 or payment_id=3;
select * from payment where amount in (select amount from payment where payment_id=2 or payment_id=3);



