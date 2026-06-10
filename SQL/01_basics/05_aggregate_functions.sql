-- Total salary of all employees
SELECT SUM(salary) AS "Total Salaries" FROM employees;

-- Highest and lowest salary
SELECT 
    MAX(salary) AS "Maximum Salary", 
    MIN(salary) AS "Minimum Salary" 
FROM employees;

-- Average salary and total employee count
SELECT 
    AVG(salary)   AS "Average Salary", 
    COUNT(salary) AS "Number of Employees" 
FROM employees;

-- Count of all employee records
SELECT COUNT(employee_id) AS "Total Employees" FROM employees;
