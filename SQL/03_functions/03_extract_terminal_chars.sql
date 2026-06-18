-- Extract last 4 digits of phone number (extension)
SELECT RIGHT(phone_number, 4) AS "Extension" FROM employees;

-- Extract first word from job title
SELECT 
    job_title, 
    SUBSTR(job_title, 1, INSTR(job_title, ' ') - 1) AS "First Word"
FROM jobs
WHERE INSTR(job_title, ' ') - 1 > 0;
