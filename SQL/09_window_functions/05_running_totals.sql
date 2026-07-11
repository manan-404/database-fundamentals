-- Running cumulative salary total within each department ordered by hire date
SELECT 
    first_name, 
    last_name, 
    department_id, 
    hire_date, 
    salary,
    SUM(salary) OVER (
        PARTITION BY department_id 
        ORDER BY hire_date
    ) AS "Running Total"
FROM employees;

-- Running count of employees hired over time
SELECT 
    first_name,
    hire_date,
    COUNT(*) OVER (ORDER BY hire_date) AS "Cumulative Hires"
FROM employees;
