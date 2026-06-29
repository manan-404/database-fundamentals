-- Show each employee's salary alongside the company average
SELECT 
    first_name, 
    last_name,
    salary,
    (SELECT AVG(salary) FROM employees) AS "Company Average",
    salary - (SELECT AVG(salary) FROM employees) AS "Difference"
FROM employees;
