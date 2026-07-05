-- List all triggers in the current database
SHOW TRIGGERS;

-- List triggers on a specific table
SHOW TRIGGERS LIKE 'employees';

-- Drop a trigger when no longer needed
DROP TRIGGER IF EXISTS check_min_salary_threshold;
DROP TRIGGER IF EXISTS log_job_and_dept_transfers;
DROP TRIGGER IF EXISTS prevent_salary_decrease;
DROP TRIGGER IF EXISTS log_new_hire;
DROP TRIGGER IF EXISTS archive_deleted_employee;
