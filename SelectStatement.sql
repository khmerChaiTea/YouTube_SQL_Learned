/* Running SQL on VS code */
USE Parks_and_Recreation;
GO

/* Selecting everything "*" */
SELECT *
FROM dbo.employee_demographics;

/* Select specific */
SELECT first_name,
last_name,
birth_date,
age,
(age + 10) * 10 + 10
FROM dbo.employee_demographics;

/* Nothing change due to no duplication (all are unique) */
SELECT first_name
FROM dbo.employee_demographics;

SELECT DISTINCT first_name
FROM dbo.employee_demographics;

/* gender are not unique */
SELECT gender
FROM dbo.employee_demographics;

SELECT DISTINCT gender
FROM dbo.employee_demographics;

/* What happen if it two columns
   The name and gender columns combination are unique */
SELECT DISTINCT first_name, gender
FROM dbo.employee_demographics;