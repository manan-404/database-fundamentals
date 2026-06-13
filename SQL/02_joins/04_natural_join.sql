-- Count total employees per department using NATURAL JOIN
SELECT 
    department_name AS "Department", 
    COUNT(employees.employee_id) AS "Total Employees"
FROM departments
NATURAL JOIN employees
GROUP BY department_name;

-- Get department, employee name, and city together
SELECT 
    department_name, 
    employees.first_name, 
    locations.city
FROM departments
NATURAL JOIN employees
NATURAL JOIN locations;
