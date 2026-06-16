-- MySQL doesn't support FULL OUTER JOIN directly
-- Simulate it using LEFT JOIN + RIGHT JOIN with UNION

SELECT 
    e.first_name, 
    e.last_name, 
    d.department_name
FROM employees e
LEFT JOIN departments d ON e.department_id = d.department_id

UNION

SELECT 
    e.first_name, 
    e.last_name, 
    d.department_name
FROM employees e
RIGHT JOIN departments d ON e.department_id = d.department_id;
