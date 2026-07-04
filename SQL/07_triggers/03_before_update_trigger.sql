-- Trigger that prevents a salary decrease during an update
DELIMITER $$

CREATE TRIGGER prevent_salary_decrease
BEFORE UPDATE ON employees
FOR EACH ROW
BEGIN
    IF NEW.salary < OLD.salary THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Salary cannot be decreased';
    END IF;
END$$

DELIMITER ;
