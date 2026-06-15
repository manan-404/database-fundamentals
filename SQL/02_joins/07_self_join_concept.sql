-- Show employees alongside their manager's ID (self-referencing relationship)
SELECT 
    e.employee_id, 
    e.first_name AS "Employee", 
    e.manager_id, 
    m.first_name AS "Manager Name"
FROM employees e
LEFT JOIN employees m ON e.manager_id = m.employee_id;
