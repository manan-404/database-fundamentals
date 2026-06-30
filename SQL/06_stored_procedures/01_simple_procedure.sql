-- Procedure that raises salary by 10% for employees earning below their department average
DELIMITER $$

CREATE PROCEDURE adjust_low_earners()
BEGIN
    UPDATE employees e 
    SET e.salary = e.salary * 1.10 
    WHERE e.salary < (
        SELECT avg_sal 
        FROM (
            SELECT department_id, AVG(salary) AS avg_sal 
            FROM employees 
            GROUP BY department_id
        ) t 
        WHERE t.department_id = e.department_id
    );
END$$

DELIMITER ;

-- Call the procedure
CALL adjust_low_earners();
