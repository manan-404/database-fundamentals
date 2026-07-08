-- Rank employees by salary within each department (no gaps in ranking)
SELECT 
    first_name, 
    last_name, 
    department_id, 
    salary,
    DENSE_RANK() OVER (PARTITION BY department_id ORDER BY salary DESC) AS "Salary Rank"
FROM employees;

-- Show top 3 earners per department
SELECT * FROM (
    SELECT 
        first_name, 
        last_name, 
        department_id, 
        salary,
        DENSE_RANK() OVER (PARTITION BY department_id ORDER BY salary DESC) AS "rnk"
    FROM employees
) t 
WHERE rnk <= 3;
