-- Find employees in IT department earning above company average
SELECT first_name, last_name, salary 
FROM employees 
WHERE salary > (
    SELECT AVG(salary) FROM employees
) 
AND department_id IN (
    SELECT department_id 
    FROM departments 
    WHERE department_name REGEXP '^IT'
);

-- Find employees earning above average in IT specifically
SELECT first_name, last_name, salary 
FROM employees 
WHERE department_id IN (
    SELECT department_id 
    FROM departments 
    WHERE department_name = 'IT'
) 
AND salary > (
    SELECT AVG(salary) FROM employees
);

-- Find employees earning more than the max salary in IT
SELECT first_name, last_name, salary 
FROM employees 
WHERE salary > (
    SELECT MAX(salary) 
    FROM employees 
    WHERE department_id IN (
        SELECT department_id 
        FROM departments 
        WHERE department_name = 'IT'
    )
);
