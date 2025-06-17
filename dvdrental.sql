
-- ╔════════════════════════════════════════════════════════════════════════════╗
-- ║                            DB Used is dvdrental                            ║
-- ╠════════════════════════════════════════════════════════════════════════════╣
-- ║    Available at: https://github.com/robconery/dvdrental                    ║
-- ╚════════════════════════════════════════════════════════════════════════════╝
-- ╔════════════════════════════════════════════╗
-- ║                 SELECT                     ║
-- ╠════════════════════════════════════════════╣
-- SELECT * from actor;
-- SELECT film_id, description from film ORDER BY film_id;
-- 🔥 CHALLENGE  🔥  :
-- Grab the first and the last names of every customer  and their email addresses
-- SELECT first_name, last_name, email from customer;
-------------------------------------
-- ╔════════════════════════════════════════════╗
-- ║                DISTINCT                    ║
-- ╠════════════════════════════════════════════╣

-- SELECT DISTINCT (release_year) from film;
-- SELECT DISTINCT rental_rate, description from film ;
-- 🔥 CHALLENGE  🔥  :   
-- Grab the distinct rating types our films could have in our database
-- SELECT DISTINCT(rating) from film;
-------------------------------------

-- ╔════════════════════════════════════════════╗
-- ║               COUNT                        ║
-- ╠════════════════════════════════════════════╣

-------------------------------------
-- SELECT COUNT(DISTINCT(amount)) FROM payment;
-------------------------------------

-- ╔════════════════════════════════════════════╗
-- ║               WHERE                        ║
-- ╠════════════════════════════════════════════╣

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

-- 🔥 CHALLENGE  🔥   1:   
-- A Customer forgot their wallet at our store! We need to track down their email to inform them
-- What is the email for the customer with the name Nancy Thomas?
-- SELECT email from customer WHERE
-- first_name like 'Nancy' and last_name like 'Thomas';

-- 🔥 CHALLENGE  🔥   2:   
-- A Customer wants to know what the movie "Outlaw Hanky" is about.
-- Could you give them the description for the movie "Outlaw Hanky"
-- SELECT description from film WHERE
-- title like 'Outlaw Hanky';

-- 🔥 CHALLENGE  🔥   3:
-- A Customer os late on their movie return, and we've mailed them a latter to their address at '259 Ipoh Drive'.
-- We should also call them on the phone to let them know.
-- Can you get the phone number for the customer who lives at '259 Ipoh Drive'?
-- SELECT phone from address WHERE
-- address = '259 Ipoh Drive';

-------------------------------------


-- ╔════════════════════════════════════════════╗
-- ║               ORDER BY                     ║
-- ╠════════════════════════════════════════════╣

-------------------------------------
-- SELECT first_name, last_name FROM customer as CS
-- ORDER BY 2 DESC;

-- SELECT store_id, first_name, last_name FROM customer
-- ORDER BY 1 ;

-- SELECT store_id, first_name, last_name FROM customer
-- ORDER BY store_id DESC, first_name ASC;
-- 🔥 CHALLENGE  🔥   1:
-- what are the customer ids of the first 10 customers who created a payment?
-- SELECT customer_id from payment
-- ORDER BY payment_date
-- LIMIT 10;

-- 🔥 CHALLENGE  🔥   2:
-- What are the titles of the 5 shortlisted(in length of run time) movies?
-- SELECT title, length from film
-- ORDER BY length ASC
-- LIMIT 5;

-- 🔥 CHALLENGE  🔥   3:
-- If the prev customer can watch any movie that is 50 min or less in runtime, 
-- how many options does she have

-- SELECT COUNT(title) FROM film
-- WHERE length <= 50;

-------------------------------------

-- ╔════════════════════════════════════════════╗
-- ║               LIMIT                        ║
-- ╠════════════════════════════════════════════╣

-------------------------------------
-- SELECT * FROM payment
-- WHERE amount != 0.0
-- ORDER BY payment_date DESC
-- LIMIT 5;
-------------------------------------
-- ╔════════════════════════════════════════════╗
-- ║               BETWEEN                      ║
-- ╠════════════════════════════════════════════╣
-------------------------------------
-- SELECT * FROM payment
-- WHERE payment_date BETWEEN '2007-02-01' AND '2007-02-15'; 

-------------------------------------

-- ╔════════════════════════════════════════════╗
-- ║                 IN                         ║
-- ╠════════════════════════════════════════════╣
-------------------------------------
-- SELECT DISTINCT(amount) from payment
-- ORDER BY amount;

-- SELECT count(amount) from payment
-- WHERE amount in (0.99, 1.98, 1.99);

-- SELECT count(amount) from payment
-- WHERE amount not in (0.99, 1.98, 1.99);

-- SELECT * from customer
-- WHERE first_name in ('John', 'Jake', 'Julie');

-------------------------------------

-- ╔════════════════════════════════════════════════════════╗
-- ║   LIKE (CASE-SENSITIVE) & ILIKE (NOT CASE-SENSITIVE)   ║
-- ╠════════════════════════════════════════════════════════╣
-------------------------------------
-- '%'ANY LENGTH
-- Eg: 'HER%' % MEANS CHAR LEN DOES'NT MATTER
-- '_' ALLOWS YOU TO REPLACE A SINGLE CHAR
-- Eg: 'VERSION#A4', 'VERSION#B7' -> WHERE VALUE LIKE 'VERSION#_ _' ==> REPLACES _ _ BY CHAR IN DB
-- Eg: WHERE NAME LIKE '_HER%'
-- * CHERYL *THERSSA *SHERIIE
-- SELECT * FROM customer
-- WHERE first_name LIKE 'J%' AND last_name LIKE 'S%';

-- SELECT * FROM customer
-- WHERE first_name ILIKE 'j%' AND last_name ILIKE 'S%';

-- SELECT * FROM customer
-- WHERE first_name like '%er%';

-- SELECT * from customer
-- WHERE first_name ilike '_Her%'

-- SELECT * from customer
-- WHERE first_name like 'A%' and last_name not like 'B%'
-- ORDER BY last_name;
-------------------------------------

-- ╔════════════════════════════════════════════╗
-- ║              🔥 CHALLENGE  🔥              ║
-- ╠════════════════════════════════════════════╣
-- ║ Welcome to the arena where queries get tough║
-- ║ and only optimized logic survives! ⚔️       ║
-- ╚════════════════════════════════════════════╝

-- How many payment transactions were greater than $5.00?
-- SELECT count(amount) from payment
-- where amount > 5;

-- How many actors have a first name that starts with the letter P?
-- SELECT count(first_name) from actor
-- WHERE first_name like 'P%';

-- How many unique districts are our customers from?
-- SELECT count(DISTINCT(district)) FROM address;

-- Retrieve the list of names for those distinct districts from the previous question.
-- select DISTINCT(district) from address;


-- How many films have a rating of R and a replacement cost between $5 and $15?
-- SELECT count(title) from film
-- where rating = 'R' AND
-- replacement_cost BETWEEN 5 and 15;

-- How many films have the word Truman somewhere in the title?
-- select count(*) from film
-- where title like '%Truman%';    


-- ╔════════════════════════════════════════════════════════╗
-- ║ Aggregate Functions:  AVG() COUNT() MAX() MIN() SUM()  ║
-- ╠════════════════════════════════════════════════════════╣

-- SELECT MIN(replacement_cost) FROM film; 

-- ╔════════════════════════════════════════════╗
-- ║         MAX() & MIN()                      ║
-- ╠════════════════════════════════════════════╣

-- SELECT MAX(replacement_cost), MIN(replacement_cost) FROM film; 

-- ╔════════════════════════════════════════════════════════════════════╗
-- ║  AVG() => gives floating value; to round it use ROUND(val, no)     ║
-- ║  'no' in ROUND tells how many decimal places to keep              ║
-- ╠════════════════════════════════════════════════════════════════════╣

-- no in ROUND tells till what decimal value 

-- SELECT ROUND(AVG(replacement_cost),3) FROM film;

-- ╔════════════════════════════════════════════╗
-- ║                 SUM()                      ║
-- ╠════════════════════════════════════════════╣
-- SELECT SUM(replacement_cost) from film;

-------------------------------------
-- ╔════════════════════════════════════════════╗
-- ║              GROUP BY                      ║
-- ╠════════════════════════════════════════════╣
-------------------------------------
-- SELECT customer_id, SUM(amount) from payment
-- GROUP BY customer_id
-- ORDER BY SUM(amount) DESC;

-- SELECT * from payment;
-- SELECT customer_id , COUNT(amount) from payment
-- WHERE customer_id = '184'
-- GROUP BY customer_id;

-- SELECT customer_id, staff_id , SUM(amount) from payment
-- GROUP BY staff_id, customer_id
-- ORDER BY SUM(amount);

-- SELECT DATE(payment_date), SUM(amount) from payment
-- GROUP BY 1
-- ORDER BY SUM(amount) DESC;

-- 🔥 CHALLENGE  🔥:
-- How many payments did each staff member handle and who gets the bonus    
-- SELECT staff_id , COUNT(amount) from payment
-- GROUP BY staff_id;

-- 🔥 CHALLENGE  🔥:
-- What is average replacement cost per MPAA rating?
-- SELECT  rating, ROUND(AVG(replacement_cost),2) FROM film
-- GROUP BY rating

-- 🔥 CHALLENGE  🔥:
-- What are the customers ids of the top 5 customers by total spend
-- SELECT customer_id, SUM(amount) from payment
-- GROUP BY customer_id
-- ORDER BY SUM(amount) DESC
-- LIMIT 5;

-- ╔════════════════════════════════════════════╗
-- ║ HAVING => Used to filter on agg func       ║
-- ╠════════════════════════════════════════════╣

-- SELECT customer_id, SUM(amount) from payment
-- GROUP BY customer_id
-- HAVING SUM(amount) > 100;

-- SELECT store_id, COUNT(customer_id) from customer
-- GROUP BY store_id
-- HAVING COUNT(customer_id) > 300;

-------------------------------------

-- ╔════════════════════════════════════════════╗
-- ║              🔥 CHALLENGE  🔥              ║
-- ╠════════════════════════════════════════════╣
-- ║ Welcome to the arena where queries get tough║
-- ║ and only optimized logic survives! ⚔️       ║
-- ╚════════════════════════════════════════════╝

---------------------------------------

-- Q1. Assign platinum status for customers having 40 or more transaction payments 
-- What customer_ids are eligible for platinum status

-- SELECT customer_id, COUNT(payment_id) from payment
-- GROUP BY customer_id
-- HAVING COUNT(payment_id) >= 40;

-- Q2. What are the customer ids of customers who have spent more than $100 in payment
-- transactions with out staff_id member 2?
-- SELECT customer_id, SUM(amount) from payment
-- WHERE staff_id = 2
-- GROUP BY customer_id
-- HAVING SUM(amount) > 100;   

-- ╔════════════════════════════════════════════╗
-- ║     🎖️  Assessment Test 1 🎖️               ║
-- ╠════════════════════════════════════════════╣
-- ║ Welcome to the arena where queries get tough║
-- ║ and only optimized logic survives! ⚔️       ║
-- ╚════════════════════════════════════════════╝

-- Q1. Return the customer IDs of customers who have spent at least $110
-- with the staff member who has an ID of 2.
-- SELECT customer_id, staff_id from payment
-- WHERE staff_id = 2
-- GROUP BY staff_id, customer_id
-- HAVING SUM(amount) >= 110;

-- Q2. How many films begin with the letter J?
-- SELECT COUNT(f.title) from film f
-- WHERE f.title like 'J%';

-- Q3. What customer has the highest customer ID number 
-- whose name starts with an 'E' and has an address ID lower than 500?
-- ANS 1: Using OrderBY
-- SELECT first_name,last_name from customer
-- WHERE first_name like 'E%' AND address_id < 500
-- ORDER BY customer_id DESC
-- LIMIT 1;

-- ANS 2: Using Nested Query
-- SELECT first_name, last_name
-- FROM customer
-- WHERE customer_id = (
--     SELECT MAX(customer_id)
--     FROM customer
--     WHERE first_name LIKE 'E%' AND address_id < 500
-- );

---------------------------------------------------------------------------------------------------------------------

-- ╔════════════════════════════════════════════╗
-- ║                JOINS                       ║
-- ╠════════════════════════════════════════════╣
---------------------------------------------------------------------------
-- ╔════════════════════════════════════════════╗
-- ║                 AS                         ║
-- ╠════════════════════════════════════════════╣

-- SELECT amount AS rental_price
-- FROM payment;

-- SELECT COUNT(*) AS number_of_transactions
-- FROM payment;

-- SELECT customer_id , SUM(amount) as total_spent
-- FROM payment
-- GROUP BY customer_id
-- HAVING SUM(amount) > 100
-- ORDER BY customer_id;

-- ╔════════════════════════════════════════════╗
-- ║  INNER JOIN same as JOIN                   ║
-- ╠════════════════════════════════════════════╣
-- SELECT payment_id, c.customer_id, first_name FROM customer c
-- JOIN payment p ON
-- c.customer_id = p.customer_id;

-- ╔════════════════════════════════════════════╗
-- ║  OUTER JOIN (LEFT, FULL, RIGHT)            ║
-- ╠════════════════════════════════════════════╣

-- ╔════════════════════════════════════════════╗
-- ║            FULL OUTER JOIN                 ║
-- ╠════════════════════════════════════════════╣
-- SELECT * FROM customer c
-- FULL OUTER JOIN payment p
-- ON c.customer_id = p.customer_id
-- ORDER BY c.customer_id;

-- ╔════════════════════════════════════════════╗
-- ║            LEFT OUTER JOIN                 ║
-- ╠════════════════════════════════════════════╣
-- SELECT f.film_id, title, inventory_id, store_id
-- FROM film f
-- LEFT JOIN inventory i ON
-- f.film_id = i.film_id
-- WHERE i.inventory_id is NULL;

-- ╔════════════════════════════════════════════╗
-- ║           RIGHT OUTER JOIN                 ║
-- ╠════════════════════════════════════════════╣
-- SELECT f.film_id, title, inventory_id, store_id
-- FROM film f
-- RIGHT OUTER JOIN inventory i ON
-- f.film_id = i.film_id
-- WHERE i.inventory_id is NULL;

-- ╔════════════════════════════════════════════╗
-- ║              🔥 CHALLENGE  🔥              ║
-- ╠════════════════════════════════════════════╣
-- ║ Welcome to the arena where queries get tough║
-- ║ and only optimized logic survives! ⚔️       ║
-- ╚════════════════════════════════════════════╝
-- Q1. What are the emails of the customers who live in California ?
-- SELECT a.district, c.email FROM
-- customer c JOIN address a ON
-- a.address_id = c.address_id
-- WHERE a.district = 'California';

-- Q2. Get the list of all the movies "Nick Wahlberg" has been in ?
-- SELECT f.title, b.first_name, b.last_name FROM film f
-- JOIN film_actor a ON
-- f.film_id = a.film_id JOIN
-- actor b ON
-- b.actor_id = a.actor_id
-- WHERE b.first_name = 'Nick' and b.last_name = 'Wahlberg';

-- ╔══════════════════════════════════════════════════════════════════╗
-- ║                        Advanced SQL Topics                       ║
-- ║     (Math Functions, String Functions, Sub-Queries, Self-Join)   ║
-- ╚══════════════════════════════════════════════════════════════════╝
-- SHOW TIMEZONE;   

-- SELECT NOW();

-- SELECT TIMEOFDAY();

-- SELECT CURRENT_TIME;

-- SELECT CURRENT_DATE;

-- ╔══════════════════════════════════════════════════════════════════╗
-- ║              Extracting info from time based type                ║
-- ║                  EXTRACT() AGE() TO_CHAR()                       ║
-- ╚══════════════════════════════════════════════════════════════════╝
-- Eg: 2007-02-15
--- EXTRACT() => extracts info from existing like day from the date including all i.e year month day ,etc
-- 15
-- SELECT EXTRACT(DAY FROM payment_date) as day
-- from payment;

-- 02
-- SELECT EXTRACT(MONTH FROM payment_date) as month
-- from payment;

-- 2007 
-- SELECT EXTRACT(YEAR FROM payment_date) as year
-- from payment;

-- SELECT payment_id, EXTRACT(QUARTER FROM payment_date) AS pay_quarter
-- FROM payment;

-- SELECT EXTRACT(HOUR FROM payment_date),EXTRACT(MINUTE FROM payment_date),EXTRACT(SECOND FROM payment_date)
-- FROM payment;

-- SELECT AGE(payment_date) FROM
-- payment;

-- SELECT TO_CHAR(payment_date, 'month-YYYY') FROM
-- payment;

-- SELECT NOW();

-- SELECT TO_CHAR(payment_date, 'DD || MM || YYY ') from payment;
-- ╔════════════════════════════════════════════╗
-- ║              🔥 CHALLENGE  🔥              ║
-- ╠════════════════════════════════════════════╣
-- ║ Welcome to the arena where queries get tough║
-- ║ and only optimized logic survives! ⚔️       ║
-- ╚════════════════════════════════════════════╝
-- Q1. During which months did payments occur? Format the answer to return the full month name?
-- SELECT DISTINCT(TO_CHAR(payment_date, 'MON')) as Months FROM payment;

-- Q2. How many payments occurred on a Monday?
 SELECT COUNT(*) FROM payment
 WHERE TRIM(TO_CHAR(payment_date, 'DAY')) = 'MONDAY'
 GROUP BY 1; 



