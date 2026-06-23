-- Departments where average salary exceeds the company-wide average
SELECT 
    department_id, 
    AVG(salary) AS "Dept Average"
FROM employees 
GROUP BY department_id 
HAVING AVG(salary) > (SELECT AVG(salary) FROM employees);

-- Departments with at least 3 employees showing full salary stats
SELECT 
    department_id, 
    COUNT(*) AS "Total Employees",
    AVG(salary) AS "Avg Salary",
    MAX(salary) AS "Max Salary"
FROM employees 
GROUP BY department_id 
HAVING COUNT(*) >= 3;

-- Departments where salary range (max - min) exceeds 50,000
SELECT 
    department_id,
    MAX(salary) - MIN(salary) AS "Salary Range"
FROM employees 
GROUP BY department_id 
HAVING (MAX(salary) - MIN(salary)) > 50000;

-- Departments where employee count exceeds the average count per department
SELECT 
    department_id, 
    COUNT(*) AS "Employee Count"
FROM employees 
GROUP BY department_id 
HAVING COUNT(*) > (
    SELECT COUNT(*) / COUNT(DISTINCT department_id) 
    FROM employees
);
