--------------------------------------
-- sql_06_02_solution.sql
-- Solve each of the following usimg SQL

-------------------------------------
-- Retrieving All Rows and Columns from emp

SELECT * from emp;

-------------------------------------
/*
Retrieve all employees from the emp table who work in dept number 20 or 30, with
a salary > 2000, and a hiredate between 1980 and 1982 (inclusive).


More on dates and time:
https://popsql.com/learn-sql/postgresql/how-to-query-date-and-time-in-postgresql/

The columns in your result set should be as follows:
Employee No., Name, Job, Salary, Manager, Hire Date, Department Number
Hint consider the now() function for current date-time.
*/

SELECT empno AS Employee_No, ename AS Name, job AS Job, sal AS Salary, hiredate AS Hire_Date,
deptno AS Department_Number
FROM emp
WHERE deptno IN (10,20)
AND sal > 2000
AND (hiredate > '1-1-1980'  AND hiredate < '12-31-1982' ) ; 

-------------------------------------
/*
Retrieve all emp records with a commission that is non-null and a salary less than or equal to $2000, 
and department number is 10 */

SELECT empno AS Employee_No, ename AS Name, job AS Job, sal AS Salary, hiredate AS Hire_Date,
deptno AS Department_Number
FROM emp
WHERE
deptno = 10
AND comm IS NOT NULL
AND sal <= 2000;

	  
-------------------------------------
/*
Provide a query that retrieves a single column for for the first 5 records as follows:

'ALLEN was hired on 1981-02-20, current salary is $1600'
*/

SELECT CONCAT(ename, ' was hired on ', hiredate, ' current salary is $', sal) as msg   
FROM emp LIMIT 5; 

-------------------------------------
/*
Using Conditional Logic in a SELECT Statement
to add an additional column that returns:
'UNDERPAID' if salary <= 1000
'OVERPAID' if salary >=3000
'OK' in all other cases
*/

SELECT ename, sal,

CASE
       WHEN sal <= 1000 THEN 'UNDERPAID'
	   WHEN sal >= 3000 THEN 'OVERPAID'
	   ELSE 'OK'
	   END AS SALARYCOMMENTS

from emp;

-------------------------------------
-- Returning n Random Records from a Table
-- Use any built-in function supported by your DBMS for returning random values. 
-- Use that function in an ORDER BY clause to sort rows randomly. 
-- Then, use LIMIT to limit the number of randomly sorted rows to return.
-- Run each query multiple times.

SELECT * 
FROM emp 
ORDER BY random() * 8
LIMIT random() * 10;

-------------------------------------
/*
Retrieve all employees who have not been assigned a manager
*/

SELECT * FROM emp WHERE mgr IS NULL;



-------------------------------------
/*
Retrieve all employee name and manager who have not been assigned a manager, but
replace [null] with 0

*/

SELECT ename, mgr,  
CASE 
     WHEN mgr IS NULL THEN 0
	 END
FROM emp
WHERE mgr IS NULL;

-------------------------------------
/*
Retieve all employee records matching the substring 'MAN' in job
*/

SELECT * from emp WHERE job LIKE '%MAN%'; 
