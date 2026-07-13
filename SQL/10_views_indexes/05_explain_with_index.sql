-- Check query plan BEFORE index
EXPLAIN SELECT * FROM employees WHERE department_id = 50;

-- Create index
CREATE INDEX idx_dept ON employees(department_id);

-- Check query plan AFTER index (should show key usage)
EXPLAIN SELECT * FROM employees WHERE department_id = 50;

-- Full runtime analysis
EXPLAIN ANALYZE SELECT * FROM employees WHERE salary > 10000;
