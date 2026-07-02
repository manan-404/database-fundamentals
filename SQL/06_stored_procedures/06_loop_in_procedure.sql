-- Procedure that calculates compound interest using a WHILE loop
DELIMITER $$

CREATE PROCEDURE calculate_compound(
    IN principal DECIMAL(10,2),
    IN rate DECIMAL(5,2),
    IN years INT,
    OUT final_amount DECIMAL(10,2)
)
BEGIN
    DECLARE counter INT DEFAULT 0;
    SET final_amount = principal;
    
    WHILE counter < years DO
        SET final_amount = final_amount * (1 + rate / 100);
        SET counter = counter + 1;
    END WHILE;
END$$

DELIMITER ;

-- Calculate compound interest for 5000 at 10% for 3 years
CALL calculate_compound(5000, 10, 3, @result);
SELECT @result AS "Final Amount";
