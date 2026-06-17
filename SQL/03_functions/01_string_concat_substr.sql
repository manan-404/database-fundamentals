-- Generate custom ID codes by combining parts of two columns
SELECT 
    first_name, 
    job_id, 
    CONCAT(SUBSTR(first_name, 1, 3), RIGHT(job_id, 3)) AS "New Name" 
FROM employees;
