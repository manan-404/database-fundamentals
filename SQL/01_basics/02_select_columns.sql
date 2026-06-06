-- Select specific columns from the employees table
SELECT first_name, last_name FROM employees;

-- Use aliases for cleaner column headers
SELECT 
    first_name AS "First Name", 
    last_name  AS "Last Name" 
FROM employees;