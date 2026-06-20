-- Find employees hired during a specific date range
SELECT first_name, hire_date 
FROM employees 
WHERE hire_date >= '1987-06-01' AND hire_date <= '1987-07-30';

-- Find employees hired in June (any year), using DATE_FORMAT
SELECT first_name, last_name 
FROM employees 
WHERE DATE_FORMAT(hire_date, "%M") LIKE "June";
