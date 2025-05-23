-- DROP TABLE IF EXISTS messy_indian_dataset;
-- CREATE TABLE IF NOT EXISTS messy_indian_dataset (
--     id INT,
--     name VARCHAR(50),
--     age INT,
--     gender VARCHAR(10),
--     email VARCHAR(100),
--     phone_number VARCHAR(20),
--     city VARCHAR(50),
--     state VARCHAR(50),
--     purchase_amount DECIMAL(10, 2),
--     purchase_date DATE
-- );
-- Insert messy data into the table for Indian users
-- INSERT INTO messy_indian_dataset (id, name, age, gender, email, phone_number, city, state, purchase_amount, purchase_date) VALUES
-- (1, 'Rajesh Patel', 30, 'Male', 'rajesh@example.com', '9876543210', 'Mumbai', 'Maharashtra', 1000.50, '2023-01-05'),
-- (2, 'Priya Sharma', 25, 'Female', 'priya@example.com', '9876543211', 'Delhi', 'Delhi', NULL, '2023-02-15'),
-- (3, 'Amit Kumar', 35, 'Male', 'amit@example.com', '9876543212', 'Bangalore', 'Karnataka', 750.25, '2023-03-25'),
-- (4, 'Ritu Singh', 28, 'Female', NULL, '9876543213', 'Kolkata', 'West Bengal', 1200.75, '2023-04-10'),
-- (5, 'Rajesh Patel', 30, 'Male', 'rajesh@example.com', '9876543210', 'Mumbai', 'Maharashtra', 1000.50, '2023-01-05'),
-- (6, 'Priya Sharma', 25, 'Female', 'priya@example.com', '9876543211', 'Delhi', 'Delhi', 800.00, '2023-02-15'),
-- (7, 'Amit Kumar', NULL, 'Male', 'amit@example.com', NULL, 'Bangalore', 'Karnataka', 750.25, '2023-03-25'),
-- (8, 'Ritu Singh', 28, 'Female', 'ritu@example.com', '9876543213', 'Kolkata', 'West Bengal', 1200.75, '2023-04-10'),
-- (9, 'Ankit Tiwari', 32, 'Male', 'ankit@example.com', '9876543214', 'Lucknow', 'Uttar Pradesh', 900.00, '2023-05-20'),
-- (10, 'Swati Gupta', 27, 'Female', 'swati@example.com', '9876543215', 'Jaipur', 'Rajasthan', 1500.00, NULL);
-- select * from messy_indian_dataset;
-- Function to Calculate Age
drop function if exists CalculateAge;
-- Drop the function if it already exists to avoid errors when recreating.
delimiter // -- Change the delimiter to '//' so the entire function body can be defined without confusion by semicolons inside it.
create function CalculateAge(birthdate DATE) RETURNS INT -- Define a new function named CalculateAge that takes a DATE and returns an integer.
deterministic -- Indicates the function always returns the same result for the same input (no randomness).
begin
declare age int;
-- Declare a local variable 'age' to store the calculated age.
set age = YEAR(CURDATE()) - YEAR(birthdate);
-- Calculate age by subtracting the birth year from the current year.
return age;
-- Return the calculated age.
end // -- End of the function definition.
delimiter;
-- Reset the delimiter back to the default semicolon.
select CalculateAge('1990-05-15') as age;
-- Call the function with a sample birthdate and display the result as 'age'.
-- Function to Calculate Tax
drop function if exists CalculateTax;
delimiter // create function CalculateTax(amount DECIMAL(10, 2), tax_rate DECIMAL(5, 2)) RETURNS DECIMAL(10, 2) deterministic begin
declare tax decimal(10, 2);
set tax = amount * (tax_rate / 100);
return tax;
end // delimiter;
select CalculateTax(1000.15, 18) as tax_amount;




-- Function to Categorize Age
drop function if exists GetAgeCategory;
delimiter // create function GetAgeCategory(age INT) RETURNS VARCHAR(20) deterministic begin
declare category varchar(20);
if age < 18 then
set category = 'child';
elseif age between 18 and 65 then
set category = 'adult';
else
set category = 'senior';
end if;
return category;
end // delimiter;
select GetAgeCategory(19) as category;