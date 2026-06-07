-- Order all employee records by first name descending
SELECT 
    employee_id   AS "Employee ID",
    first_name    AS "First Name",
    last_name     AS "Last Name",
    email         AS "Email",
    phone_number  AS "Phone Number",
    hire_date     AS "Hire Date",
    job_id        AS "Job ID",
    salary        AS "Salary",
    commission_pct AS "Commission PCT",
    manager_id    AS "Manager ID",
    department_id AS "Department ID"
FROM employees
ORDER BY first_name DESC;

-- Order employees by salary ascending
SELECT 
    employee_id AS "Employee ID",
    first_name  AS "First Name",
    last_name   AS "Last Name",
    salary      AS "Salary"
FROM employees
ORDER BY salary ASC;