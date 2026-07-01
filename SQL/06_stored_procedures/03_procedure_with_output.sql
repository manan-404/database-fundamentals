-- Procedure that returns total employee count using OUT parameter
DELIMITER $$

CREATE PROCEDURE get_employee_count(OUT total INT)
BEGIN
    SELECT COUNT(*) INTO total FROM employees;
END$$

DELIMITER ;

-- Call and retrieve the output
CALL get_employee_count(@count);
SELECT @count AS "Total Employees";
