-- Create the `analysis` database
CREATE DATABASE analysis;

--
-- CREATE `teachers` table
CREATE TABLE teachers(
  id bigserial,
  first_name varchar(25),
  last_name varchar(50),
  school varchar(50),
  hire_date date,
  salary numeric
);

--
-- Insert data into `teachers`
INSERT INTO teachers(first_name, last_name, school, hire_date, salary)
  VALUES ('Janet', 'Smith', 'F.D. Roosevelt HS', '2011-10-30', 36200),
('Lee', 'Reynolds', 'F.D. Roosevelt HS', '1993-05-22', 65000),
('Samuel', 'Cole', 'Myers Middle School', '2005-08-01', 43500),
('Samantha', 'Bush', 'Myers Middle School', '2011-10-30', 36200),
('Betty', 'Diaz', 'Myers Middle School', '2005-08-30', 43500),
('Kathleen', 'Roush', 'F.D. Roosevelt HS', '2010-10-22', 38500);

-- Query the `teachers` table
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
