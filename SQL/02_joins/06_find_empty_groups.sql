-- Approach 1: Find departments with no employees using LEFT JOIN
SELECT d.department_name 
FROM departments d
LEFT JOIN employees e ON d.department_id = e.department_id
WHERE e.employee_id IS NULL;

-- Approach 2: Same result using NOT IN subquery
SELECT department_name 
FROM departments
WHERE department_id NOT IN (
    SELECT DISTINCT department_id 
    FROM employees 
    WHERE department_id IS NOT NULL
);
