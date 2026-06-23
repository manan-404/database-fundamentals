-- Minimum salary per manager (excluding salary of 2000, valid managers only)
SELECT 
    manager_id, 
    MIN(salary) AS "Minimum Salary"
FROM employees 
WHERE manager_id IS NOT NULL AND salary <> 2000
GROUP BY manager_id 
ORDER BY MIN(salary) DESC;

-- Average salary and employee count per department
SELECT 
    d.department_name, 
    AVG(e.salary) AS "Average Salary", 
    COUNT(e.employee_id) AS "Total Employees"
FROM employees e
NATURAL JOIN departments d
WHERE e.commission_pct IS NOT NULL
GROUP BY d.department_name;
