-- Count unique job roles per department
SELECT 
    department_id, 
    COUNT(DISTINCT job_id) AS "Unique Jobs"
FROM employees 
GROUP BY department_id;

-- Count unique cities per country
SELECT 
    country_id, 
    COUNT(DISTINCT city) AS "Unique Cities"
FROM locations 
GROUP BY country_id;

-- Count unique managers per department
SELECT 
    department_id, 
    COUNT(DISTINCT manager_id) AS "Unique Managers"
FROM employees 
GROUP BY department_id;
