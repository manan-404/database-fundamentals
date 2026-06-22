-- Count employees in each department
SELECT 
    department_id, 
    COUNT(employee_id) AS "Total Employees"
FROM employees 
GROUP BY department_id;

-- Count customers in each city
SELECT 
    City, 
    COUNT(*) AS "Customer Count" 
FROM Customers 
GROUP BY City;
