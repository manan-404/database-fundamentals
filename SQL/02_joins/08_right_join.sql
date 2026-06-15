-- Get all departments and their employees
-- Departments with no employees will show NULL for employee columns
SELECT 
    e.first_name, 
    e.last_name, 
    d.department_name
FROM employees e
RIGHT JOIN departments d ON e.department_id = d.department_id;
