-- ============================================================
-- DEADLOCK SCENARIO AND PREVENTION
-- ============================================================

-- A deadlock occurs when two transactions each hold a lock
-- the other needs — both end up waiting forever

-- Transaction 1 (run in Session 1)
START TRANSACTION;
UPDATE accounts SET balance = balance - 500 WHERE account_id = 101;
-- Now waits for lock on account_id = 102 held by Transaction 2


-- Transaction 2 (run in Session 2)
START TRANSACTION;
UPDATE accounts SET balance = balance - 500 WHERE account_id = 102;
-- Now waits for lock on account_id = 101 held by Transaction 1

-- Result: MySQL detects the deadlock and automatically rolls back
-- the transaction with the least cost, returning error 1213


-- ============================================================
-- DEADLOCK PREVENTION: Always lock rows in the same order
-- ============================================================

-- Transaction 1 (corrected)
START TRANSACTION;
SELECT * FROM accounts WHERE account_id = 101 FOR UPDATE;
SELECT * FROM accounts WHERE account_id = 102 FOR UPDATE;
UPDATE accounts SET balance = balance - 500 WHERE account_id = 101;
UPDATE accounts SET balance = balance + 500 WHERE account_id = 102;
COMMIT;

-- Transaction 2 (corrected - same locking order)
START TRANSACTION;
SELECT * FROM accounts WHERE account_id = 101 FOR UPDATE;
SELECT * FROM accounts WHERE account_id = 102 FOR UPDATE;
UPDATE accounts SET balance = balance - 300 WHERE account_id = 101;
UPDATE accounts SET balance = balance + 300 WHERE account_id = 102;
COMMIT;
