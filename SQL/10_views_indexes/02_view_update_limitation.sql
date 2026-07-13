-- This update will FAIL because the view is based on aggregate functions
-- Views with GROUP BY, HAVING, DISTINCT, or aggregates are not updatable
UPDATE dept_salary_stats 
SET avg_sal = 50000 
WHERE department_id = 10;

-- Views ARE updatable when based on a single table with no aggregates
CREATE VIEW employee_names AS
SELECT employee_id, first_name, last_name, salary
FROM employees;

-- This UPDATE works because the view is simple and key-preserved
UPDATE employee_names 
SET salary = salary * 1.10 
WHERE employee_id = 100;
