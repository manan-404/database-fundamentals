-- Procedure that doubles a given salary value using INOUT
DELIMITER $$

CREATE PROCEDURE double_salary(INOUT amount DECIMAL(10,2))
BEGIN
    SET amount = amount * 2;
END$$

DELIMITER ;

-- Pass a value in, get modified value back
SET @sal = 5000;
CALL double_salary(@sal);
SELECT @sal AS "Doubled Salary";
