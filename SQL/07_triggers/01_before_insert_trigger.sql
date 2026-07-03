-- Trigger that prevents inserting a salary below the job's minimum
DELIMITER $$

CREATE TRIGGER check_min_salary_threshold 
BEFORE INSERT ON employees
FOR EACH ROW
BEGIN
    DECLARE v_min_sal INT;
    
    SELECT min_salary INTO v_min_sal 
    FROM jobs 
    WHERE job_id = NEW.job_id;
    
    IF NEW.salary < v_min_sal THEN
        SIGNAL SQLSTATE '45000' 
        SET MESSAGE_TEXT = 'Salary cannot be lower than the allowed job minimum';
    END IF;
END$$

DELIMITER ;
