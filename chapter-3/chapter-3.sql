-----------------------------
-- Query the `teachers` table
-----------------------------
SELECT
  *
FROM
  teachers;

-- "id","first_name","last_name","school","hire_date","salary"
-- "1","Janet","Smith","F.D. Roosevelt HS","2011-10-30","36200"
-- "2","Lee","Reynolds","F.D. Roosevelt HS","1993-05-22","65000"
-- "3","Samuel","Cole","Myers Middle School","2005-08-01","43500"
-- "4","Samantha","Bush","Myers Middle School","2011-10-30","36200"
-- "5","Betty","Diaz","Myers Middle School","2005-08-30","43500"
-- "6","Kathleen","Roush","F.D. Roosevelt HS","2010-10-22","38500"
--
---------------------------------------------------
-- Query specific columns from the `teachers` table
---------------------------------------------------
SELECT
  last_name,
  first_name,
  salary
FROM
  teachers;

-- "last_name","first_name","salary"
-- "Smith","Janet","36200"
-- "Reynolds","Lee","65000"
-- "Cole","Samuel","43500"
-- "Bush","Samantha","36200"
-- "Diaz","Betty","43500"
-- "Roush","Kathleen","38500"
--
---------------------------
-- Sort Data Using ORDER BY
---------------------------
SELECT
  last_name,
  first_name,
  salary
FROM
  teachers
ORDER BY
  salary DESC;

-- "last_name","first_name","salary"
-- "Reynolds","Lee","65000"
-- "Cole","Samuel","43500"
-- "Diaz","Betty","43500"
-- "Roush","Kathleen","38500"
-- "Smith","Janet","36200"
-- "Bush","Samantha","36200"
--
-------------------------------------------
-- Sort Data Using ORDER BY with nth column
-------------------------------------------
SELECT
  last_name,
  first_name,
  salary
FROM
  teachers
ORDER BY
  3 DESC;

-- "last_name","first_name","salary"
-- "Reynolds","Lee","65000"
-- "Cole","Samuel","43500"
-- "Diaz","Betty","43500"
-- "Roush","Kathleen","38500"
-- "Smith","Janet","36200"
-- "Bush","Samantha","36200"
--
-----------------------------------------------
-- Sort Data Using ORDER BY on multiple columns
-----------------------------------------------
SELECT
  last_name,
  school,
  hire_date
FROM
  teachers
ORDER BY
  school ASC,
  hire_date DESC;

-- "last_name","school","hire_date"
-- "Smith","F.D. Roosevelt HS","2011-10-30"
-- "Roush","F.D. Roosevelt HS","2010-10-22"
-- "Reynolds","F.D. Roosevelt HS","1993-05-22"
-- "Bush","Myers Middle School","2011-10-30"
-- "Diaz","Myers Middle School","2005-08-30"
-- "Cole","Myers Middle School","2005-08-01"
--
----------------------------------------------
-- Use DISTINCT to Find Unique List of Schools
----------------------------------------------
SELECT DISTINCT
  school
FROM
  teachers
ORDER BY
  school;

-- "school"
-- "F.D. Roosevelt HS"
-- "Myers Middle School"
--
------------------------------------------------------
-- Use DISTINCT to Find Unique School and Salary Pairs
------------------------------------------------------
SELECT DISTINCT
  school,
  salary
FROM
  teachers
ORDER BY
  school,
  salary;

-- "school","salary"
-- "F.D. Roosevelt HS","36200"
-- "F.D. Roosevelt HS","38500"
-- "F.D. Roosevelt HS","65000"
-- "Myers Middle School","36200"
-- "Myers Middle School","43500"
--
------------------------------------------------------------------
-- Use WHERE to Find All Teachers that work at Myers Middle School
------------------------------------------------------------------
SELECT
  last_name,
  school,
  hire_date
FROM
  teachers
WHERE
  school = 'Myers Middle School';

-- "last_name","school","hire_date"
-- "Cole","Myers Middle School","2005-08-01"
-- "Bush","Myers Middle School","2011-10-30"
-- "Diaz","Myers Middle School","2005-08-30"
--
-------------------------------------------------------------------
-- Compare use of LIKE & ILIKE to Find Teachers with First Name Sam
-------------------------------------------------------------------
SELECT
  first_name
FROM
  teachers
WHERE
  first_name LIKE 'sam%';

-- No Results
--
SELECT
  first_name
FROM
  teachers
WHERE
  first_name ILIKE 'sam%';

--"first_name"
-- "Samuel"
-- "Samantha"
--
----------------------------------------------------------------------------------------
-- Use WHERE + AND to Find Teachers at Myers Middle School w/ a salary less than $40,000
----------------------------------------------------------------------------------------
SELECT
  *
FROM
  teachers
WHERE
  school = 'Myers Middle School'
  AND salary < 40000;

-- "id","first_name","last_name","school","hire_date","salary"
-- "4","Samantha","Bush","Myers Middle School","2011-10-30","36200"
--
------------------------------------------------------------------
-- Use WHERE + OR to Find Teachers with the last name Cole or Bush
------------------------------------------------------------------
SELECT
  *
FROM
  teachers
WHERE
  last_name = 'Cole'
  OR last_name = 'Bush';

-- "id","first_name","last_name","school","hire_date","salary"
-- "3","Samuel","Cole","Myers Middle School","2005-08-01","43500"
-- "4","Samantha","Bush","Myers Middle School","2011-10-30","36200"
--
-----------------------------------------------------------
-- Use WHERE + AND + Parenthesis
-- Find Teachers at
--   - F.D. Roosevel HS
--   - with a salary less than $38,000 or more than $40,000
-----------------------------------------------------------
SELECT
  *
FROM
  teachers
WHERE
  school = 'F.D. Roosevelt HS'
  AND (salary < 38000
    OR salary > 40000);

-- "id","first_name","last_name","school","hire_date","salary"
-- "1","Janet","Smith","F.D. Roosevelt HS","2011-10-30","36200"
-- "2","Lee","Reynolds","F.D. Roosevelt HS","1993-05-22","65000"
--
-----------------------------------------------------------
-----------------------------------------------------------
--EXERCISES
-----------------------------------------------------------
-- Exercise 1
-- The school district superintendent asks for a list of teachers in each school.
-- Write a query that lists the schools in:
--   - alphabetical order
--   - teachers ordered by last name A → Z.
---------------------------------------------------------------------------------
SELECT
  school,
  last_name
FROM
  teachers
ORDER BY
  school,
  last_name;

-- "school","last_name"
-- "F.D. Roosevelt HS","Reynolds"
-- "F.D. Roosevelt HS","Roush"
-- "F.D. Roosevelt HS","Smith"
-- "Myers Middle School","Bush"
-- "Myers Middle School","Cole"
-- "Myers Middle School","Diaz"
--
--------------------------------------------------
-- Exercise 2
-- Write a query that finds the one teacher whose:
--   - first name starts with the letter S
--   - AND who earns more than $40,000.
--------------------------------------------------
SELECT
  first_name,
  last_name,
  salary
FROM
  teachers
WHERE
  first_name ILIKE 's%'
  AND salary > 40000;

-- "first_name","last_name","salary"
-- "Samuel","Cole","43500"
--
-------------------------------------------------------------------------------
-- Exercise 3
-- Rank teachers hired since January 1, 2010, ordered by highest paid to lowest
-------------------------------------------------------------------------------
SELECT
  first_name,
  last_name,
  hire_date,
  salary
FROM
  teachers
WHERE
  hire_date >= '2010-01-01'
ORDER BY
  salary DESC;

-- "first_name","last_name","hire_date","salary"
-- "Kathleen","Roush","2010-10-22","38500"
-- "Janet","Smith","2011-10-30","36200"
-- "Samantha","Bush","2011-10-30","36200"
