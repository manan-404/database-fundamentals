-- Find employees hired after a specific date
SELECT CONCAT(first_name, ' ', last_name) AS "Name", hire_date 
FROM employees 
WHERE hire_date > DATE('1997-09-28');

-- Find employees who have worked for more than 15 years
SELECT first_name, last_name, hire_date, salary 
FROM employees 
WHERE DATEDIFF(CURRENT_DATE(), hire_date) > 15 * 365;

-- Find duration in days for job history records in department 90
SELECT 
    employee_id, 
    jobs.job_title, 
    DATEDIFF(end_date, start_date) AS "Total Days"
FROM job_history 
INNER JOIN jobs ON job_history.job_id = jobs.job_id
WHERE job_history.department_id = 90;
