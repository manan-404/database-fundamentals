-- Format hire date as "Month Day, Year" for dates before a cutoff
SELECT 
    first_name, 
    hire_date, 
    DATE_FORMAT(hire_date, "%M %d,%Y") AS "Formatted Date" 
FROM employees 
WHERE hire_date < DATE("1987-07-30");

-- Format current date in long form
SELECT DATE_FORMAT(CURRENT_DATE(), "%M %d, %Y") AS "Today";

-- Format current date as day/month/year
SELECT DATE_FORMAT(CURRENT_DATE, "%d/%m/%Y") AS "Today (Short)";

-- Format current date with full weekday and month name
SELECT DATE_FORMAT(CURRENT_DATE, "%W %M %Y") AS "Today (Full)";
