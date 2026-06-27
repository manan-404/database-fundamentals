-- Find employees earning more than their own department's average
SELECT e.first_name, e.last_name, e.salary, e.department_id 
FROM employees e 
WHERE e.salary > (
    SELECT AVG(salary) 
    FROM employees 
    WHERE department_id = e.department_id
);

-- Find top 2 highest paid employees per department (no LIMIT)
SELECT e1.first_name, e1.last_name, e1.department_id, e1.salary 
FROM employees e1 
WHERE 2 > (
    SELECT COUNT(*) 
    FROM employees e2 
    WHERE e2.department_id = e1.department_id 
    AND e2.salary > e1.salary
);
