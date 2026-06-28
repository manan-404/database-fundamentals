-- Find employees earning more than at least one IT programmer
SELECT first_name, last_name, salary 
FROM employees 
WHERE salary > ANY (
    SELECT salary 
    FROM employees 
    WHERE job_id = 'IT_PROG'
);
