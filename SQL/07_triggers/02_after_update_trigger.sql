-- First create the audit_log table to store change history
CREATE TABLE IF NOT EXISTS audit_log (
    log_id INT AUTO_INCREMENT PRIMARY KEY,
    employee_id INT,
    old_job VARCHAR(20),
    new_job VARCHAR(20),
    old_dept INT,
    new_dept INT,
    change_date DATETIME
);

-- Trigger that logs job or department changes after an update
DELIMITER $$

CREATE TRIGGER log_job_and_dept_transfers 
AFTER UPDATE ON employees
FOR EACH ROW
BEGIN
    IF OLD.job_id <> NEW.job_id OR OLD.department_id <> NEW.department_id THEN
        INSERT INTO audit_log (
            employee_id, old_job, new_job, 
            old_dept, new_dept, change_date
        )
        VALUES (
            OLD.employee_id, OLD.job_id, NEW.job_id, 
            OLD.department_id, NEW.department_id, NOW()
        );
    END IF;
END$$

DELIMITER ;
