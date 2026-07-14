-- Create a unique index on email column (no two employees can share an email)
CREATE UNIQUE INDEX idx_unique_email ON employees(email);

-- Create a unique index on phone number
CREATE UNIQUE INDEX idx_unique_phone ON employees(phone_number);

-- This INSERT will SUCCEED (unique email)
INSERT INTO employees (employee_id, first_name, last_name, email, salary, job_id)
VALUES (999, 'Ahmed', 'Khan', 'ahmed.khan@company.com', 50000, 'IT_PROG');

-- This INSERT will FAIL (duplicate email)
INSERT INTO employees (employee_id, first_name, last_name, email, salary, job_id)
VALUES (1000, 'Ali', 'Khan', 'ahmed.khan@company.com', 45000, 'IT_PROG');
