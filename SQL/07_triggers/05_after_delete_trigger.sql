-- Create a table to archive deleted employee records
CREATE TABLE IF NOT EXISTS deleted_employees (
    employee_id INT,
    full_name VARCHAR(50),
    department_id INT,
    salary DECIMAL(10,2),
    deleted_at DATETIME
);

-- Trigger that archives a record before deletion
DELIMITER $$

CREATE TRIGGER archive_deleted_employee
AFTER DELETE ON employees
FOR EACH ROW
BEGIN
    INSERT INTO deleted_employees (
        employee_id, full_name, 
        department_id, salary, deleted_at
    )
    VALUES (
        OLD.employee_id,
        CONCAT(OLD.first_name, ' ', OLD.last_name),
        OLD.department_id,
        OLD.salary,
        NOW()
    );
END$$

DELIMITER ;
