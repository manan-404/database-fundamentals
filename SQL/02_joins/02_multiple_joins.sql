-- Get employee, department, and location details together
SELECT 
    e.first_name, 
    e.last_name, 
    d.department_name, 
    l.city, 
    l.state_province
FROM employees e
INNER JOIN departments d ON e.department_id = d.department_id
INNER JOIN locations l ON d.location_id = l.location_id;
