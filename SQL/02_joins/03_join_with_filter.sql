-- Get employees working in departments located in London
SELECT 
    e.first_name, 
    e.last_name, 
    d.department_name, 
    e.job_id, 
    l.city
FROM employees e
INNER JOIN departments d ON e.department_id = d.department_id
INNER JOIN locations l ON d.location_id = l.location_id
WHERE l.city = 'London';
