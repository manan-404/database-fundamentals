-- Find employees earning the minimum salary for their job role
SELECT first_name, last_name, salary 
FROM employees 
WHERE (job_id, salary) IN (
    SELECT job_id, MIN(salary) 
    FROM employees 
    GROUP BY job_id
);

-- Find employees who are the top earner in their department (handles ties)
SELECT * 
FROM employees 
WHERE (department_id, salary) IN (
    SELECT department_id, MAX(salary) 
    FROM employees 
    GROUP BY department_id
);
