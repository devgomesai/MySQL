---------------------------------------------
-- 🌟 CASE 🌟
---------------------------------------------

-- 🎯 Syntax Reference
-- CASE
--     WHEN condition1 THEN result1
--     WHEN condition2 THEN result2
--     ELSE resultN
-- END

-- 🧩 Example 1: Categorize Customers by Tier
SELECT 
    customer_id,
    CASE
        WHEN customer_id <= 100 THEN 'PREMIUM'
        WHEN customer_id BETWEEN 101 AND 200 THEN 'PLUS'
        ELSE 'NORMAL'
    END AS customer_tier
FROM customer;

-- 🏆 Example 2: Raffle Results Based on Customer ID
SELECT 
    customer_id,
    CASE customer_id 
        WHEN 2 THEN 'Winner'
        WHEN 5 THEN 'Second Place'
        ELSE 'Normal'
    END AS raffle_results
FROM customer;

-- 🎬 Example 3: Count Films by Rental Rate
SELECT 
    SUM(CASE WHEN f.rental_rate = 0.99 THEN 1 ELSE 0 END) AS cheap,
    SUM(CASE WHEN f.rental_rate = 2.99 THEN 1 ELSE 0 END) AS regular,
    SUM(CASE WHEN f.rental_rate = 4.99 THEN 1 ELSE 0 END) AS premium
FROM film f;

-- ✅ CHALLENGE: Count Films by Rating
SELECT 
    SUM(CASE WHEN f.rating = 'R' THEN 1 ELSE 0 END)      AS rated_r,
    SUM(CASE WHEN f.rating = 'PG' THEN 1 ELSE 0 END)     AS rated_pg,
    SUM(CASE WHEN f.rating = 'PG-13' THEN 1 ELSE 0 END)  AS rated_pg13
FROM film f;

-------------------------------------------------------
-- 🌟 COALESCE 🌟 - used to handle null values
-------------------------------------------------------

-- Exmaple
-- SELECT item, (price - COALESCE(discount, 0)) as FINAL_PRICE FROM TABLE;

----------------------------------------------------------
-- 🌟 CAST() OR :: 🌟 - convert datatypes from one type to another
----------------------------------------------------------
-- SELECT CAST('5'as INTEGER)
-- PostgresSQL CAST operator
-- SELECT '5'::INTEGER         also cast using :: 

SELECT CAST('5' as INTEGER) as integer_val;   
-- OR

 SELECT '1990-02-12'::TIMESTAMP as TIMESTAMP_VALUE;

SELECT CHAR_LENGTH(r.rental_id ::VARCHAR) as rental_id_in_varchar_ FROM rental r;

----------------
-- 🌟 NULLIF 🌟 
----------------
-- Takes in 2 args if both same then returns => NULL else the first arg 
SELECT NULLIF(10,10) as null_value; 
---
SELECT 
SUM(CASE 
     WHEN DEPARTMENT = 'A' THEN 1 ELSE 0
END) /
NULLIF (SUM(CASE 
     WHEN DEPARTMENT = 'B' THEN 1 ELSE 0
END),0) AS RATIO_OF_A_B
FROM DEPTS;






     






