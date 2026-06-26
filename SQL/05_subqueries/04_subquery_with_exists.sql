-- Find employees who have a record in job history
SELECT * 
FROM employees 
WHERE EXISTS (
    SELECT 1 
    FROM job_history 
    WHERE employees.employee_id = job_history.employee_id
);
