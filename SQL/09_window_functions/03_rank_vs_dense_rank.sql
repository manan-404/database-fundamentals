-- RANK: tied values get same rank, next rank skips numbers (1,1,3)
SELECT 
    first_name, 
    salary,
    RANK() OVER (ORDER BY salary DESC) AS "Rank"
FROM employees;

-- DENSE_RANK: tied values get same rank, next rank does not skip (1,1,2)
SELECT 
    first_name, 
    salary,
    DENSE_RANK() OVER (ORDER BY salary DESC) AS "Dense Rank"
FROM employees;

-- ROW_NUMBER: unique sequential number regardless of ties (1,2,3)
SELECT 
    first_name, 
    salary,
    ROW_NUMBER() OVER (ORDER BY salary DESC) AS "Row Number"
FROM employees;
