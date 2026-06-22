-- Show departments with more than 5 employees
SELECT 
    department_id, 
    COUNT(employee_id) AS "Employees"
FROM employees 
GROUP BY department_id 
HAVING COUNT(employee_id) > 5;

-- Show customers who spent more than 600 total
SELECT 
    CustomerID, 
    SUM(Amount) AS "Total Spent"
FROM Orders 
GROUP BY CustomerID 
HAVING SUM(Amount) > 600;

-- Show departments with more than 1 job role
SELECT 
    department_id, 
    COUNT(job_id) AS "Job Count"
FROM employees 
GROUP BY department_id 
HAVING COUNT(job_id) > 1;
