-- Find employees working in IT department
SELECT first_name, last_name 
FROM employees 
WHERE job_id = 'IT_PROG';

-- Find employees whose managers are based in the US
SELECT first_name, last_name 
FROM employees 
WHERE manager_id IS NOT NULL 
AND department_id IN (
    SELECT department_id 
    FROM departments 
    WHERE location_id IN (
        SELECT location_id 
        FROM locations 
        WHERE country_id = 'US'
    )
);

-- Find all managers (employees who manage someone)
SELECT first_name, last_name 
FROM employees 
WHERE employee_id IN (
    SELECT DISTINCT manager_id 
    FROM employees 
    WHERE manager_id IS NOT NULL
);
