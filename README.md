## Postrgres / MySQL
---
![image](https://github.com/user-attachments/assets/06445eba-5e41-46bd-897b-9d030ea35119)

## Overview

This repository contains a collection of SQL scripts and exercises designed to facilitate learning and practice with MySQL. The scripts utilize different sample databases to demonstrate a wide range of SQL operations, from basic queries to more advanced topics, including joins, aggregate functions, and date/time manipulations.

## Contents

*   [`dvdrental.sql`](https://github.com/devgomesai/MySQL/blob/main/dvdrental.sql)
*   [`exercise.sql`](https://github.com/devgomesai/MySQL/blob/main/exercise.sql)
*   [`general+challenge+1.pptx`](https://github.com/devgomesai/MySQL/blob/main/general%2Bchallenge%2B1.pptx)
*   [`cheat-sheet`](https://github.com/devgomesai/MySQL/blob/main/Screen%2BShot%2B2016-04-17%2Bat%2B12.22.49%2BPM.png)

## `dvdrental.sql`

This SQL script provides a comprehensive walkthrough of various SQL commands and concepts using the `dvdrental` sample database. The original `dvdrental` database schema and data can be found at [https://github.com/robconery/dvdrental](https://github.com/robconery/dvdrental).

The script is structured with explanations, examples, and challenges for each topic.

### Key Concepts and Commands Covered:

*   **Basic Queries:**
    *   `SELECT`: Retrieving all columns (`*`) or specific columns from tables.
    *   `SELECT DISTINCT`: Fetching unique values from a column.
*   **Counting:**
    *   `COUNT()`: Counting rows or distinct values.
*   **Filtering Data:**
    *   `WHERE`: Applying conditions to filter rows (e.g., `=`, `>`, `AND`, `OR`, `!=`).
*   **Sorting Results:**
    *   `ORDER BY`: Arranging results in ascending (`ASC`) or descending (`DESC`) order, referencing columns by name or position.
*   **Limiting Results:**
    *   `LIMIT`: Restricting the number of rows returned.
*   **Range and List Conditions:**
    *   `BETWEEN`: Selecting values within a specified range (inclusive).
    *   `IN`: Checking if a value matches any value in a list.
    *   `NOT IN`: Checking if a value does not match any value in a list.
*   **Pattern Matching:**
    *   `LIKE`: Searching for a specified pattern in a column (case-sensitive, behavior may vary by RDBMS/collation).
    *   `ILIKE`: Searching for a specified pattern in a column (case-insensitive, common in PostgreSQL, MySQL `LIKE` is often case-insensitive by default depending on collation). Wildcards `%` (any sequence of characters) and `_` (any single character) are demonstrated.
*   **Aggregate Functions:**
    *   Demonstrations of `AVG()`, `COUNT()`, `MAX()`, `MIN()`, `SUM()`.
    *   `ROUND()`: Used with `AVG()` to specify decimal precision.
*   **Grouping Data:**
    *   `GROUP BY`: Grouping rows that have the same values in specified columns into summary rows, often used with aggregate functions.
    *   `HAVING`: Filtering groups produced by `GROUP BY` based on aggregate conditions.
*   **Aliases:**
    *   `AS`: Used to rename columns or tables in query results for clarity or brevity.
*   **Joins:**
    *   `INNER JOIN` (or `JOIN`): Returns rows that have matching values in both tables.
    *   `FULL OUTER JOIN`: Returns all rows from both tables, with `NULL` values where there is no match.
    *   `LEFT OUTER JOIN` (or `LEFT JOIN`): Returns all rows from the left table and matched rows from the right table; `NULL` for right table columns where no match.
    *   `RIGHT OUTER JOIN` (or `RIGHT JOIN`): Returns all rows from the right table and matched rows from the left table; `NULL` for left table columns where no match.
*   **Date and Time Functions:**
    *   `SHOW TIMEZONE`, `NOW()`, `TIMEOFDAY()`, `CURRENT_TIME`, `CURRENT_DATE`: Functions to retrieve current time, date, and timezone information.
    *   `EXTRACT()`: Extracts specific parts (e.g., `YEAR`, `MONTH`, `DAY`, `QUARTER`, `HOUR`, `MINUTE`, `SECOND`) from date/time values.
    *   `AGE()`: Computes the interval between two timestamps.
    *   `TO_CHAR()`: Converts date/time values to formatted strings according to a specified pattern.
*   **Challenges and Assessments:**
    *   The script is interspersed with "🔥 CHALLENGE 🔥" sections to apply the learned concepts.
    *   An "🎖️ Assessment Test 1 🎖️" section provides more complex problems.

## `exercise.sql`

This script contains a series of practical SQL exercises, labeled Q1 through Q14. These exercises are designed to test and reinforce understanding of SQL querying against a database that appears to manage club facilities, members, and bookings.

### Exercises Focus On:

*   **Q1-Q2:** Basic data retrieval (`SELECT *`, selecting specific columns).
*   **Q3-Q4:** Filtering data using `WHERE` clauses, including conditions on numerical values and calculated expressions.
*   **Q5:** String pattern matching using `LIKE`.
*   **Q6:** Using the `IN` operator for multiple value matching.
*   **Q7:** Filtering based on date comparisons.
*   **Q8:** Retrieving unique sorted values with a limit (`DISTINCT`, `ORDER BY`, `LIMIT`).
*   **Q9:** Using `MAX()` aggregate function on date columns.
*   **Q10:** Using `COUNT(*)` with a `WHERE` clause.
*   **Q11:** Complex aggregation (`SUM()`), `JOIN` operations, `GROUP BY`, and date filtering using `to_char()` for month and year extraction.
*   **Q12:** Using `SUM()` with `GROUP BY` and filtering groups with `HAVING`.
*   **Q13:** Combining `JOIN` operations with specific date filtering (`to_char()`) and string matching (`LIKE` or `ILIKE`).
*   **Q14:** `JOIN` operations to link member information with bookings, filtering by member name.
---
