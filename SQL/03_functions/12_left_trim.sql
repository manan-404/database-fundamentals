-- LEFT: extract characters from the start of a string
SELECT first_name, LEFT(first_name, 3) AS "First 3 Letters" FROM employees;

-- TRIM: remove leading and trailing spaces
SELECT TRIM('   Ahmed   ') AS "Trimmed";

-- LTRIM: remove spaces from left side only
SELECT LTRIM('   Ahmed') AS "Left Trimmed";

-- RTRIM: remove spaces from right side only
SELECT RTRIM('Ahmed   ') AS "Right Trimmed";
