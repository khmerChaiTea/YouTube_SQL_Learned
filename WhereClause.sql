/* Running SQL on VS code */
USE Parks_and_Recreation;
GO

/* WHERE clause; '=' use for comparison operator */
SELECT *
FROM employee_salary
WHERE first_name = 'Leslie';

/* To get greater than 50000 use comparison operator to '>' */
SELECT *
FROM employee_salary
WHERE salary > 50000;

/* To include Tom and Jerry who made 50000 use '='*/
SELECT *
FROM employee_salary
WHERE salary >= 50000;

/* To get less than 50000 change comparison operator to '<' */
SELECT *
FROM employee_salary
WHERE salary < 50000;

/* Check for Female */
SELECT *
FROM employee_demographics
WHERE gender = 'Female';

/* Check for Male */
SELECT *
FROM employee_demographics
WHERE gender != 'Female';

/* Born (after) greater than 1985 */
SELECT *
FROM employee_demographics
WHERE birth_date > '1985-01-01';

/* AND OR NOT -- Logical Operators */
SELECT *
FROM employee_demographics
WHERE birth_date > '1985-01-01'
AND gender = 'Male';

/* AND OR NOT -- Logical Operators */
SELECT *
FROM employee_demographics
WHERE birth_date > '1985-01-01'
OR gender = 'Male';

/* AND OR NOT -- Logical Operators */
SELECT *
FROM employee_demographics
WHERE birth_date > '1985-01-01'
OR NOT gender = 'Male';

/* Let go specific */
SELECT *
FROM employee_demographics
WHERE first_name = 'Leslie' And age = 44;

SELECT *
FROM employee_demographics
WHERE (first_name = 'Leslie' And age = 44) OR age > 55;

/* No output it has to be exact match */
SELECT *
FROM employee_demographics
WHERE first_name = 'Jer';

/* LIKE statement */
-- Similar to LIKE '%' and '_'
SELECT *
FROM employee_demographics
WHERE first_name LIKE 'Jer%';

/* LIKE statement */
-- Similar to LIKE '%' and '_'
SELECT *
FROM employee_demographics
WHERE first_name LIKE '%er%';

/* LIKE statement */
-- Similar to LIKE '%' and '_'
SELECT *
FROM employee_demographics
WHERE first_name LIKE 'a%';

/* LIKE statement */
-- Similar to LIKE '%' and '_'
-- '_' each represent a char for the fill in
-- Ann fit for this search
SELECT *
FROM employee_demographics
WHERE first_name LIKE 'a__';

/* LIKE statement */
-- Similar to LIKE '%' and '_'
-- '_' each represent a char for the fill in
-- Andy fit for this search
SELECT *
FROM employee_demographics
WHERE first_name LIKE 'a___';

/* LIKE statement */
-- Similar to LIKE '%' and '_'
-- '_' each represent a char for the fill in
-- April and Andy fit for this search
SELECT *
FROM employee_demographics
WHERE first_name LIKE 'a___%';

/* LIKE statement */
-- Similar to LIKE '%' and '_'
-- '_' each represent a char for the fill in
-- April and Andy fit for this search
SELECT *
FROM employee_demographics
WHERE birth_date LIKE '1989%';