-- Match first names that are exactly 4 characters long
SELECT first_name 
FROM employees 
WHERE first_name REGEXP '^[a-z][a-z][a-z][a-z]$';

-- Match full names containing 'la' anywhere (case-insensitive)
SELECT CONCAT(first_name, ' ', last_name) AS "Name"
FROM employees 
WHERE CONCAT(first_name, ' ', last_name) REGEXP 'la';

-- Match names starting with 'A' and ending with 'N'
SELECT first_name 
FROM employees 
WHERE first_name REGEXP '^a' AND first_name REGEXP 'n$';

-- Match names ending with 'n'
SELECT first_name 
FROM employees 
WHERE first_name REGEXP 'n$';

-- Match names starting with 'a'
SELECT first_name, last_name 
FROM employees 
WHERE first_name REGEXP '^a';

-- Match names ending with 't'
SELECT first_name, last_name 
FROM employees 
WHERE first_name REGEXP 't$';
