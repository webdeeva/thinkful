-- Name: Tavonia Evans

-- Select all fields & records from the houseprices table. 

SELECT *
FROM houseprices;

-- How many records are there?

SELECT 
    COUNT(*)
FROM
    houseprices;

-- number of records - 1460

-- Return only records for the 'OldTown' neighborhood

SELECT *
FROM houseprices
WHERE neighborhood='OldTown';


-- Return only records for the 'OldTown' neighborhood and columns for neighborhood, saleprice, yearbuilt, firstflrsf, secondflrsf, fullbath, halfbath

SELECT neighborhood, saleprice, yearbuilt, firstflrsf, secondflrsf, fullbath, halfbath
FROM houseprices
WHERE neighborhood='OldTown';



-- Return a field calculating the price per square foot (include both first and second floor). Name this field price_per_sqft

select ( saleprice / (firstflrsf + secondflrsf) ) 
as pricepersqf 
from houseprices 
where neighborhood = 'OldTown';

-- Return a field containing a string that reads like “This house was built in [yearbuilt]" for all records.

SELECT CONCAT('This house was built in ', yearbuilt)
FROM houseprices;



-- Generate a one-row report with the total number of rows, the earliest and latest year built, and the average lot area.


select count(*), min(yearbuilt), max(yearbuilt), AVG(lotarea) from houseprices;

-- Save this last script as a 'sql_06_01'.sql file.
