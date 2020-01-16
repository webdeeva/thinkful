-- 1. get a list of all unique values in the 'country' field

SELECT DISTINCT country
FROM ksprojects;

--2. How many unique values are there for the main_category field? What about for the category field?

SELECT COUNT(DISTINCT main_category) as count_main_category, COUNT(DISTINCT category) as count_category
FROM ksprojects;

-- 15, 158

--3. Get a list of all unique combinations of main_category and category fields, sorted A-Z by main_category.

SELECT DISTINCT main_category, category 
FROM ksprojects
ORDER BY main_category;

--4. How many unique categories are in each main_category?

SELECT main_category, COUNT(DISTINCT category)
FROM ksprojects
GROUP BY main_category
ORDER BY main_category;

-- main_category | count
-- ---------------+-------
--  Art           |    13
--  Comics        |     6
--  Crafts        |    15
--  Dance         |     5
--  Design        |     7
--  Fashion       |     9
--  Film & Video  |    20
--  Food          |    13
--  Games         |     8
--  Journalism    |     6
--  Music         |    18
--  Photography   |     7
--  Publishing    |    15
--  Technology    |    16
--  Theater       |     7

-- 5. Create a query that returns the average number of backers per
-- main_category, rounded to the nearest whole number and sorted from high to low.

SELECT main_category, round(AVG(backers),0) as avg_backers
FROM ksprojects
GROUP BY main_category
ORDER BY avg_backers DESC;

-- 6. Create a query that shows for each category how many campaigns
-- were successful and the avg difference b/w dollars pledged and
-- the goal (for records that category).

SELECT category, avg(usd_pledged - goal) as raised_over_goal, count(*)
FROM ksprojects
WHERE state = 'successful'
GROUP BY category;

-- 7. Create a query that for each main category shows how many projects 
-- had zero backers for that category and the largest goal amount for that category
-- (also for projects with zero backers).

SELECT main_category, MAX(goal), COUNT(*)
FROM ksprojects
WHERE backers = 0
GROUP BY main_category;

-- 8. For each category, find the average $ pledged per backer
-- and return only those categories where average $ pledged per backer < 50
-- Sort results high to low

SELECT category, avg(usd_pledged/NULLIF(backers,0)) as avg_pledge_per_backer
FROM ksprojects
GROUP BY category
HAVING avg(usd_pledged/NULLIF(backers,0)) < 50
ORDER BY avg_pledge_per_backer DESC;
							  
-- 9. Create a query that for each main_category shows how many successful
-- projects had between 5 and 10 backers.
							  
SELECT main_category, COUNT(*)
FROM ksprojects
WHERE state = 'successful' AND backers BETWEEN 5 AND 10
GROUP BY main_category;

-- 10. Get a total of the amount pledged for each type of currency grouped by 
--its respective currency. Sort by ëamount_pledgedí from high to low. 

SELECT currency, SUM(pledged)
FROM ksprojects
GROUP BY currency
ORDER BY SUM(pledged) DESC;

--11. Excluding Games and Technology records in the main_category field, 
-- return the total of all backers for successful projects by main_category 
-- where the total was over 100,000.  Sort by main_category from A-Z. 

SELECT main_category, SUM(backers)
FROM ksprojects
WHERE main_category NOT IN('Games','Technology') and state = 'successful'
GROUP BY main_category
HAVING SUM(backers) > 100000
ORDER BY main_category;