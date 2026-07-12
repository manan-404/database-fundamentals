-- Create a view that shows department salary statistics
CREATE VIEW dept_salary_stats AS 
SELECT 
    department_id, 
    AVG(salary) AS "Avg Salary", 
    MIN(salary) AS "Min Salary", 
    MAX(salary) AS "Max Salary" 
FROM employees 
GROUP BY department_id;

-- Query the view like a regular table
SELECT * FROM dept_salary_stats;

-- Query with filter
SELECT * FROM dept_salary_stats WHERE department_id = 50;
