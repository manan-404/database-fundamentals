-- Convert to uppercase
SELECT UPPER(first_name) AS "Upper Name" FROM employees;

-- Convert to lowercase
SELECT LOWER(first_name) AS "Lower Name" FROM employees;

-- Get character length of first name
SELECT first_name, LENGTH(first_name) AS "Name Length" FROM employees;
