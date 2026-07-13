-- Drop a view when no longer needed
DROP VIEW IF EXISTS dept_salary_stats;
DROP VIEW IF EXISTS employee_names;

-- Recreate with OR REPLACE instead of dropping manually
CREATE OR REPLACE VIEW dept_salary_stats AS
SELECT 
    department_id, 
    AVG(salary) AS "Avg Salary", 
    MIN(salary) AS "Min Salary", 
    MAX(salary) AS "Max Salary" 
FROM employees 
GROUP BY department_id;
