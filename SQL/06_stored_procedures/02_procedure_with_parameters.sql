-- Procedure that gives a raise to a specific employee by ID
DELIMITER $$

CREATE PROCEDURE give_raise(IN emp_id INT, IN raise_percent DECIMAL(5,2))
BEGIN
    UPDATE employees 
    SET salary = salary * (1 + raise_percent / 100) 
    WHERE employee_id = emp_id;
END$$

DELIMITER ;

-- Call with arguments
CALL give_raise(100, 10);
