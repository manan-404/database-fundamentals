-- CROSS JOIN produces every combination of rows from both tables
SELECT 
    e.first_name, 
    d.department_name
FROM employees e
CROSS JOIN departments d;
