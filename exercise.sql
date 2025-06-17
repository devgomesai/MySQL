 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
-- ╔═════════════════════════════════════════════════════════════════════════════════════════╗
-- ║                                   Exercise                                              ║
-- ╠═════════════════════════════════════════════════════════════════════════════════════════╣
-- ║    Available at: https://drive.google.com/file/d/1wDqIK6zt5twWnCOx97ywipaiWR2d0OfT/view ║
-- ╚═════════════════════════════════════════════════════════════════════════════════════════╝
-- 🔥 CHALLENGE  🔥  :
-- Q1.How can you retrieve all the information from the cd.facilities table?
SELECT * FROM cd.facilities f ;
-- Q2. You want to print out a list of all of the facilities and their cost to members.
--     How would you retrieve a list of only facility names and costs?
SELECT f.name, f.membercost FROM cd.facilities f ;
-- Q3. How can you produce a list of facilities that charge a fee to members?
--     Expected Results should have just 5 rows:
SELECT * FROM cd.facilities f 
WHERE f.membercost != 0;
-- Q4. How can you produce a list of facilities that charge a fee to members (tells is that members are charged),
-- f.membercost > 0
--and that fee is less than 1/50th of the monthly maintenance cost? Return the facid (just the formula),
-- f.monthlymaintenance / 50
--facility name, member cost, and monthly maintenance of the facilities in question.
-- Result is just two rows:
SELECT f.facid, f.name,f.membercost, f.monthlymaintenance FROM facilities f 
WHERE f.membercost <= f.monthlymaintenance / 50 
AND f.membercost > 0 ;    
-- Q5. How can you produce a list of all facilities with the word 'Tennis' in their name?
SELECT * FROM facilities f 
WHERE f."name" like '%Tennis%';
-- Q6. How can you retrieve the details of facilities with ID 1 and 5?
-- Try to do it without using the OR operator.
SELECT * FROM facilities f 
WHERE f.facid in (1,5);
-- Q7. How can you produce a list of members who joined after the start of September 2012?
--     Return the memid, surname, firstname, and joindate of the members in question.
SELECT m.memid, m.surname, m.firstname, m.joindate FROM members m
WHERE m.joindate >= '2012-09-01'
LIMIT 8;

-- Q8. How can you produce an ordered list of the first 10 surnames in the members table?
--     The list must not contain duplicates.
--     Expected Result should be 10 rows if you include GUEST as a last name
SELECT DISTINCT (m.surname) FROM members m 
ORDER BY m.surname
LIMIT 10;

-- Q9. You'd like to get the signup date of your last member. How can you retrieve this information?
SELECT MAX(m.joindate) AS last_signup_date
FROM members m;

-- Q10. Produce a count of the number of facilities that have a cost to guests of 10 or more.
SELECT COUNT(*) FROM facilities f 
WHERE f.guestcost >= 10;

-- Q11. Produce a list of the total number of slots booked per facility in the month of September 2012.
--      Produce an output table consisting of facility id and slots, sorted by the number of slots.
SELECT f.facid, SUM(b.slots) as total_slots FROM bookings b 
JOIN facilities f ON
b.facid = f.facid
WHERE to_char(b.starttime,'MONTH') ilike 'September' AND to_char(b.starttime, 'YYYY') ilike '2012' 
GROUP by f.facid
ORDER BY 2;

--- ROUGH FOR TESTING Q11.
-- *********** USE to_char for typecasting and getting values from timestamp data by converting to string
-- the extract and compare the values
-- *** IMP to_char() to extract day => 'D', Month =>'MM', Year => 'YYYY' from '2012-07-03 11:00:00.000'
SELECT b.starttime FROM bookings b ;
--SELECT to_char(b.starttime,'DD'), to_char(b.starttime,'MM'), to_char(b.starttime, 'YYYY')  FROM bookings b 
--WHERE to_char(b.starttime,'MONTH') ilike 'September' AND to_char(b.starttime, 'YYYY') ilike '2012'; 

-- ***Q12. Produce a list of facilities with more than 1000 slots booked.
--      Produce an output table consisting of facility id and total slots, sorted by facility id.
SELECT b.facid, SUM(b.slots) from bookings b 
GROUP by b.facid 
HAVING SUM(b.slots) > 1000
ORDER by b.facid ;

-- Q13. How can you produce a list of the start times for bookings for tennis courts,
---  for the date '2012-09-21'? Return a list of start time and facility name pairings, ordered by the time.
-- Ans 1: 
SELECT b.starttime as start, f."name" from facilities f 
JOIN bookings b 
ON f.facid = b.facid     
WHERE to_char(b.starttime, 'YYYY-MM-DD') = '2012-09-21' AND f."name" like 'Tennis Court%'
ORDER BY b.starttime;

-- Ans 2:
SELECT b.starttime as start, f."name" from facilities f 
JOIN bookings b 
ON f.facid = b.facid     
WHERE to_char(b.starttime, 'YYYY-MM-DD') = '2012-09-21' AND f."name" ilike 'tennis court%'
ORDER BY b.starttime;

-- Q14. How can you produce a list of the start times for bookings by members named 'David Farrell'?
-- Ans 1:
SELECT b.starttime FROM members m 
JOIN bookings b 
ON m.memid = b.memid 
WHERE m.firstname like 'David' AND m.surname like 'Farrell';

-- Ans 2:
SELECT b.starttime FROM members m 
JOIN bookings b 
ON m.memid = b.memid 
WHERE m.firstname ilike 'david' AND m.surname ilike 'farrell';

- - - - - - - - - - - - - - - - - - - - - - - - - - - - END - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -












