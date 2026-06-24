-- Find employees earning more than 'Bull'
SELECT first_name, last_name, salary 
FROM employees 
WHERE salary > (
    SELECT salary 
    FROM employees 
    WHERE last_name = 'Bull'
);

-- Find employees earning more than 'Bell'
SELECT CONCAT(first_name, ' ', last_name) AS "Name", salary 
FROM employees 
WHERE salary > (
    SELECT salary 
    FROM employees 
    WHERE last_name = 'Bell'
);

-- Find employees earning the minimum salary
SELECT first_name, last_name, salary 
FROM employees 
WHERE salary = (
    SELECT MIN(salary) 
    FROM employees
);

-- Find employees earning above the company average
SELECT first_name, last_name, salary 
FROM employees 
WHERE salary > (
    SELECT AVG(salary) 
    FROM employees
);
