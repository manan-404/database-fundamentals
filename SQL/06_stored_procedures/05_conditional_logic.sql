-- Procedure that assigns a grade label based on salary range
DELIMITER $$

CREATE PROCEDURE get_salary_grade(IN emp_id INT, OUT grade VARCHAR(10))
BEGIN
    DECLARE emp_salary DECIMAL(10,2);
    
    SELECT salary INTO emp_salary 
    FROM employees 
    WHERE employee_id = emp_id;
    
    IF emp_salary >= 15000 THEN
        SET grade = 'A';
    ELSEIF emp_salary >= 10000 THEN
        SET grade = 'B';
    ELSEIF emp_salary >= 5000 THEN
        SET grade = 'C';
    ELSE
        SET grade = 'D';
    END IF;
END$$

DELIMITER ;

-- Call and retrieve grade
CALL get_salary_grade(100, @grade);
SELECT @grade AS "Salary Grade";
