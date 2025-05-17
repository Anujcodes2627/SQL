-- Create 'students' table only if it does not already exist
-- CREATE TABLE IF NOT EXISTS students (
--     id INT,
--     name VARCHAR(50),
--     age INT,
--     dep VARCHAR(50)
-- );

-- Create 'employee' table with constraints and validations
-- CREATE TABLE IF NOT EXISTS employee (
--     employee_id INT,
--     name VARCHAR(50) NOT NULL,
--     age INT CHECK (age >= 18),
--     department VARCHAR(50),
--     hire_date DATE
-- );

-- Add a new column 'mail' to the 'employee' table
-- ALTER TABLE employee ADD COLUMN mail VARCHAR(50);

-- Rename column 'employee_id' to 'id'
-- ALTER TABLE employee RENAME COLUMN employee_id TO id;

-- Drop the 'mail' column from the 'employee' table
-- ALTER TABLE employee DROP COLUMN mail;

-- Adding column with default value
-- ALTER TABLE employee 
-- ADD COLUMN marital_status VARCHAR(20) DEFAULT 'unknown';

-- To view the structure of the employee table (optional, depends on DBMS)
-- DESC employee; 

-- Droping the table

DROP TABLE employee;


ALTER TABLE actor Add constraint 


