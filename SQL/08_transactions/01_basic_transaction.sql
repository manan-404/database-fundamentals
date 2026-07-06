-- Basic transaction with COMMIT
START TRANSACTION;

UPDATE accounts SET balance = balance - 1000 WHERE account_id = 101;
UPDATE accounts SET balance = balance + 1000 WHERE account_id = 102;

COMMIT;
