-- Create a log table for new hire tracking
CREATE TABLE IF NOT EXISTS hire_log (
    log_id INT AUTO_INCREMENT PRIMARY KEY,
    employee_id INT,
    full_name VARCHAR(50),
    hire_date DATE,
    logged_at DATETIME
);

-- Trigger that logs every new employee insertion
DELIMITER $$

CREATE TRIGGER log_new_hire
AFTER INSERT ON employees
FOR EACH ROW
BEGIN
    INSERT INTO hire_log (employee_id, full_name, hire_date, logged_at)
    VALUES (
        NEW.employee_id,
        CONCAT(NEW.first_name, ' ', NEW.last_name),
        NEW.hire_date,
        NOW()
    );
END$$

DELIMITER ;
