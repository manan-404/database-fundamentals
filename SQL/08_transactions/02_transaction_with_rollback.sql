-- Transaction that rolls back on failure
START TRANSACTION;

UPDATE accounts SET balance = balance - 1000 WHERE account_id = 101;

-- Simulate a failure point (constraint violation or error)
-- If anything goes wrong, undo all changes
ROLLBACK;

-- Successful version that commits
START TRANSACTION;

UPDATE accounts SET balance = balance - 1000 WHERE account_id = 101;
UPDATE accounts SET balance = balance + 1000 WHERE account_id = 102;

COMMIT;
