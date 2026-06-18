-- Extract the month portion from hire_date using MID
SELECT 
    employee_id, 
    first_name, 
    MID(hire_date, 6, 2) AS "Month" 
FROM employees;