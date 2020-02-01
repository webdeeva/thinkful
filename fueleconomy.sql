-- 1. How many records are in the vehicles table?
-- Provide the query you’d use to determine this, 
-- as well as the answer.

SELECT COUNT(*) from vehicles;

-- The answer is 33,442

-- 2. Write a query that returns all the records 
-- in the vehicles table.

SELECT * from vehicles;

-- 3. Write a query that returns the id, make, and model fields
-- for all records for 2010 vehicles

SELECT id, make, model
FROM vehicles
WHERE year = 2010;


-- 4. Write a query that returns the count of vehicles from 2010. Also provide the answer

SELECT COUNT(*)
FROM vehicles
WHERE year = 2010;

-- Answer is 1,109


-- 5. Write a query that returns the count of vehicles in the vehicles table
-- from years 2010 to 2015, inclusive. Provide the query as well as the answer.

SELECT COUNT(*)
FROM vehicles
WHERE year BETWEEN 2010 AND 2015;

-- The answer is 5,995

-- 6. Write a query that returns the count of vehicles from the years 1990, 2000,
-- and 2010. Provide the query and the result.

SELECT COUNT(*)
FROM vehicles
WHERE year IN(1990, 2000, 2010);

-- The answer is 3,026


-- 7. Write a query that returns the count of all records between 1987 and 2005,
-- exclusive of the years 1990 and 2000.

SELECT COUNT(*)
FROM vehicles
WHERE year BETWEEN 1987 and 2005
AND year NOT IN (1990, 2000);

-- The answer is 17,235

-- 8. Create a query that returns the year, make, model and a field called average_mpg that 
-- calculates the average highway/city fuel consumption; i.e., if hwy is 24 and cty is 20 
-- then average_mpg = (24 + 20)/ 2 = 22.

SELECT year, make, model, (hwy + cty) / 2 AS average_mpg
FROM vehicles;


-- 9. reate a query that returns the year, make, model and a field called mpg_info that 
-- displays the text “X highway; Y city;” i.e., if hwy is 24 and cty is 20 then mpg_info 
-- is “24 highway; 20 city.”

SELECT year, make, model, CONCAT(hwy, ' highway; ', cty, ' city;') as mpg_info
FROM vehicles;

-- also possible

SELECT year, make, model, hwy || ' highway; ' || cty || ' city;' as mpg_info
FROM vehicles;

-- 10. Write a query that returns the id, make, model, and year for  all records
-- that have NULL for either the cyl or displ fields.

SELECT id, make, model, year
FROM vehicles
WHERE cyl IS NULL
OR displ IS NULL;

-- 11. Create a query that returns all fields for a records with for rear-wheel drive, diesel vehicles since 
-- 2000 (inclusive) and sort by year and highway mileage, both descending.

SELECT * 
FROM vehicles
WHERE
    drive = 'Rear-Wheel Drive'
    AND fuel = 'Diesel'
    AND year >= 2000
ORDER BY year DESC, hwy DESC;


-- 12. Create a query that counts the number of vehicles that are either Fords or Chevrolets and either 'Compact Cars' 
-- or 'Two Seaters.' Provide the query and the answer.

SELECT COUNT(*) 
FROM vehicles
WHERE
    make IN ('Ford', 'Chevrolet')
    AND class in ('Compact Cars', 'Two Seaters');

-- The answer is 612.

-- 13. Create a query that returns the records for 10 vehicles with the highest highway fuel mileage.

SELECT *
FROM vehicles
ORDER BY hwy DESC
LIMIT 10;

-- 14. Create a query that returns all records of vehicles since the year 2000 whose model name starts with a (capital) X. 
-- Sort the list A-Z by make.  What happens when you use a lowercase “x” instead? 

SELECT *
FROM vehicles
WHERE model LIKE 'X%'
AND year >=2000
ORDER BY make;

-- vs.

SELECT *
FROM vehicles
WHERE model LIKE 'x%'
AND year >=2000
ORDER BY make;

-- In second case, you get totally different results -- a bunch of Scions.


-- 15. Create a query that returns the count of records where the  “cyl” field is NULL.
-- Provide the query as well as the answer.

SELECT COUNT(*)
FROM vehicles
WHERE cyl IS NULL;

-- The answer is 58

-- 16. Create a a query that returns the count of all records before the year 2000 that got 
-- more than 20 mpg hwy and had greater than 3 liters displacement (“disp” field).
-- Provide the query as well as the answer.

SELECT COUNT(*)
FROM vehicles
WHERE
    year < 2000
    AND hwy > 20
    AND displ > 3;

-- The answer is 1,964

-- 17. Create a query that returns all records whose model name has a (capital) X in its third position
-- (hint: make sure your wildcard operator accommodates for any characters after the “X”!) . 

SELECT *
FROM vehicles
WHERE model LIKE '__X%';