-- Basic EXPLAIN to see query execution plan
EXPLAIN SELECT * FROM employees WHERE salary > 10000;

-- EXPLAIN for a JOIN query
EXPLAIN SELECT e.first_name, d.department_name 
FROM employees e 
JOIN departments d ON e.department_id = d.department_id;

-- EXPLAIN ANALYZE for actual runtime statistics
EXPLAIN ANALYZE SELECT * FROM employees WHERE salary > 10000;
