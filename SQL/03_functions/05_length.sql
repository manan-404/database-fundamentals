-- Find the shortest street address
SELECT street_address 
FROM locations 
ORDER BY LENGTH(street_address) 
LIMIT 1;

-- Get length of first names where last name starts with 2 chars + 'c'
SELECT 
    first_name, 
    last_name,
    LENGTH(first_name) AS "Name Length" 
FROM employees 
WHERE last_name LIKE "__c%";