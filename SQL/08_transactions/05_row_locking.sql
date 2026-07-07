-- Lock a specific row for update to prevent concurrent modifications
START TRANSACTION;

SELECT * FROM employees 
WHERE employee_id = 100 
FOR UPDATE;

UPDATE employees 
SET salary = salary + 100 
WHERE employee_id = 100;

COMMIT;
