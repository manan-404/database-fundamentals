-- Replace all 'E' characters with 'A' in job IDs
SELECT 
    job_id, 
    REPLACE(job_id, "E", "A") AS "New Jobs" 
FROM employees;
