-- Find employees earning more than every IT programmer
SELECT first_name, last_name, salary 
FROM employees 
WHERE salary > ALL (
    SELECT salary 
    FROM employees 
    WHERE job_id = 'IT_PROG'
);

-- Find employees earning more than all HR department employees
SELECT e1.first_name, e1.salary 
FROM employees e1 
WHERE e1.salary > ALL (
    SELECT salary 
    FROM employees e2
    JOIN departments d ON e2.department_id = d.department_id
    WHERE d.department_name = 'HR'
);
