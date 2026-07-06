-- Transaction with SAVEPOINT for partial rollback
START TRANSACTION;

UPDATE accounts SET balance = balance - 500 WHERE account_id = 101;

SAVEPOINT after_deduction;

UPDATE accounts SET balance = balance + 500 WHERE account_id = 102;

-- Something went wrong with second update, rollback to savepoint only
ROLLBACK TO after_deduction;

-- First update still stands, commit it
COMMIT;
