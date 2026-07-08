-- Compare each employee's salary against their department average
SELECT 
    first_name, 
    last_name, 
    salary, 
    department_id,
    AVG(salary) OVER (PARTITION BY department_id) AS "Dept Average",
    salary - AVG(salary) OVER (PARTITION BY department_id) AS "Difference"
FROM employees;

-- Show department total salary alongside each employee
SELECT 
    department_id, 
    first_name, 
    last_name, 
    salary,
    SUM(salary) OVER (PARTITION BY department_id) AS "Dept Total"
FROM employees;
