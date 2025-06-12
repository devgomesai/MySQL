-- SELECT -- 
-------------------------------------
-- SELECT * from actor;
-- SELECT film_id, description from film ORDER BY film_id;
-- Challenge:
-- Grab the first and the last names of every customer  and their email addresses
-- SELECT first_name, last_name, email from customer;
-------------------------------------

-- DISTINCT --
-------------------------------------
-- SELECT DISTINCT (release_year) from film;
-- SELECT DISTINCT rental_rate, description from film ;
-- Challenge:   
-- Grab the distinct rating types our films could have in our database
-- SELECT DISTINCT(rating) from film;
-------------------------------------

-- COUNT --
-------------------------------------
-- SELECT COUNT(DISTINCT(amount)) FROM payment;
-------------------------------------

-- WHERE --
-------------------------------------
--opt1: SELECT * from customer WHERE first_name like 'Jared';
--opt2: SELECT * from customer WHERE first_name = 'Jared';

-- SELECT COUNT(*) from film
-- WHERE rental_rate > 4;

-- SELECT * from film
-- WHERE rental_rate > 4 AND replacement_cost >= 19.99;

-- SELECT * from film
-- WHERE rental_rate > 4 AND
-- replacement_cost >= 19.99 AND
-- rating = 'R';

-- SELECT Count(*) from film
-- WHERE rating = 'R' OR rating = 'PG-13';

-- SELECT * from film
-- WHERE rating != 'R';

-- Challenge 1:   
-- A Customer forgot their wallet at our store! We need to track down their email to inform them
-- What is the email for the customer with the name Nancy Thomas?
-- SELECT email from customer WHERE
-- first_name like 'Nancy' and last_name like 'Thomas';

-- Challenge 2:   
-- A Customer wants to know what the movie "Outlaw Hanky" is about.
-- Could you give them the description for the movie "Outlaw Hanky"
-- SELECT description from film WHERE
-- title like 'Outlaw Hanky';

-- Challenge 3:
-- A Customer os late on their movie return, and we've mailed them a latter to their address at '259 Ipoh Drive'.
-- We should also call them on the phone to let them know.
-- Can you get the phone number for the customer who lives at '259 Ipoh Drive'?
-- SELECT phone from address WHERE
-- address = '259 Ipoh Drive';

-------------------------------------


-- ORDER BY --
-------------------------------------
-- SELECT first_name, last_name FROM customer as CS
-- ORDER BY 2 DESC;

-- SELECT store_id, first_name, last_name FROM customer
-- ORDER BY 1 ;

-- SELECT store_id, first_name, last_name FROM customer
-- ORDER BY store_id DESC, first_name ASC;
-- Challenge 1:
-- what are the customer ids of the first 10 customers who created a payment?
-- SELECT customer_id from payment
-- ORDER BY payment_date
-- LIMIT 10;

-- Challenge 2:
-- What are the titles of the 5 shortlisted(in length of run time) movies?
-- SELECT title, length from film
-- ORDER BY length ASC
-- LIMIT 5;
-------------------------------------

-- LIMIT --
-------------------------------------
-- SELECT * FROM payment
-- WHERE amount != 0.0
-- ORDER BY payment_date DESC
-- LIMIT 5;
-------------------------------------
