-- Generate a fake corporate email by appending a domain
SELECT 
    first_name, 
    CONCAT(email, '@iba-suk.edu.pk') AS "Generated Email" 
FROM employees;
