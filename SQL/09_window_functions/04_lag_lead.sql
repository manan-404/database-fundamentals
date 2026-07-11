-- LAG: access the previous row's salary value
SELECT 
    first_name, 
    last_name, 
    hire_date, 
    salary,
    LAG(salary) OVER (ORDER BY hire_date) AS "Previous Hire Salary"
FROM employees;

-- LEAD: access the next row's salary value
SELECT 
    first_name, 
    last_name, 
    hire_date, 
    salary,
    LEAD(salary) OVER (ORDER BY hire_date) AS "Next Hire Salary"
FROM employees;

-- LAG with offset and default value
SELECT 
    first_name,
    salary,
    LAG(salary, 2, 0) OVER (ORDER BY salary) AS "2 Rows Behind"
FROM employees;
