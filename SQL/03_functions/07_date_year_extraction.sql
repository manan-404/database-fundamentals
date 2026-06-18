-- Extract the year an employee was hired
SELECT first_name, YEAR(hire_date) AS "Hire Year" FROM employees;