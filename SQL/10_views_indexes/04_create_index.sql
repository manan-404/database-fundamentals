-- Create a single column index on salary
CREATE INDEX idx_salary ON employees(salary);

-- Create a composite index on department, job, and salary
CREATE INDEX idx_emp_dept_job_sal ON employees(department_id, job_id, salary);

-- Create index on plot column in movies table
CREATE INDEX idx_plot ON movies(plot);

-- Create index on imdb rating and year
CREATE INDEX idx_imdb_year ON movies("imdb.rating", year);
