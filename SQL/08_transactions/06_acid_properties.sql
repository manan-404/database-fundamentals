-- ============================================================
-- ACID PROPERTIES IN SQL TRANSACTIONS
-- ============================================================

-- ATOMICITY: All operations succeed or none do
-- If any statement fails, the entire transaction is rolled back
START TRANSACTION;
UPDATE accounts SET balance = balance - 1000 WHERE account_id = 101;
UPDATE accounts SET balance = balance + 1000 WHERE account_id = 102;
-- Both updates succeed together or neither happens
COMMIT;


-- CONSISTENCY: Database moves from one valid state to another
-- Business rules and constraints are never violated mid-transaction
START TRANSACTION;
UPDATE accounts SET balance = balance - 1000 WHERE account_id = 101;
-- Constraint: balance cannot go negative (enforced by CHECK constraint)
-- If violated, transaction fails and consistency is maintained
COMMIT;


-- ISOLATION: Concurrent transactions do not interfere with each other
-- Each transaction sees a consistent snapshot of the database
SET TRANSACTION ISOLATION LEVEL REPEATABLE READ;
START TRANSACTION;
SELECT * FROM accounts WHERE account_id = 101;
-- Other transactions cannot modify this row until we commit
COMMIT;


-- DURABILITY: Once committed, changes survive system failures
-- MySQL writes committed transactions to disk via redo logs
START TRANSACTION;
UPDATE accounts SET balance = balance + 500 WHERE account_id = 102;
COMMIT;
-- After COMMIT, data is permanently saved even if server crashes
