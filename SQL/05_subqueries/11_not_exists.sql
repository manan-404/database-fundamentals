-- Find employees with no job history record
SELECT first_name, last_name 
FROM employees e
WHERE NOT EXISTS (
    SELECT 1 
    FROM job_history j 
    WHERE j.employee_id = e.employee_id
);
