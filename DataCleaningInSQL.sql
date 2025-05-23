-- use users;
-- DROP TABLE IF EXISTS messy_indian_dataset;
-- CREATE TABLE IF NOT EXISTS messy_indian_dataset (
--     id INT PRIMARY KEY,
--     name VARCHAR(50),
--     age INT,
--     gender VARCHAR(10),
--     email VARCHAR(100),
--     phone_number VARCHAR(15),
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
-- (10, 'Swati Gupta', 27, 'Female', 'swati@example.com', '9876543215', 'Jaipur', 'Rajasthan', 1500.00, NULL),
-- (11, 'Deepak Sharma', 45, 'Male', 'deepak@example.com', '9876543216', 'Chennai', 'Tamil Nadu', 1100.50, '2023-06-15'),
-- (12, 'Anjali Gupta', 29, 'Female', 'anjali@example.com', '9876543217', 'Hyderabad', 'Telangana', 850.25, '2023-07-25'),
-- (13, 'Rohit Singh', 33, 'Male', 'rohit@example.com', '9876543218', 'Pune', 'Maharashtra', 950.75, '2023-08-10'),
-- (14, 'Pooja Patel', 27, 'Female', 'pooja@example.com', '9876543219', 'Ahmedabad', 'Gujarat', 1300.00, '2023-09-20'),
-- (15, 'Sandeep Verma', 31, 'Male', 'sandeep@example.com', '9876543220', 'Surat', 'Gujarat', 1150.50, '2023-10-05'),
-- (16, 'Aarti Sharma', 26, 'Female', 'aarti@example.org', '9876543221', 'Varanasi', 'Uttar Pradesh', 850.00, '2023-11-15'),
-- (17, 'Vikram Singh', 37, 'Male', 'vikram@example.co.in', '9876543222', 'Indore', 'Madhya Pradesh', 1250.25, '2023-12-25'),
-- (18, 'Ananya Sen', 28, 'Female', 'ananya@example.net', '9876543223', 'Kochi', 'Kerala', 900.75, '2024-01-10'),
-- (19, 'Nikhil Sharma', 34, 'Male', 'nikhil@example.co.uk', '9876543224', 'Jaipur', 'Rajasthan', 1400.00, '2024-02-20'),
-- (20, 'Isha Singh', 30, 'Female', 'isha@example.edu.in', '9876543225', 'Lucknow', 'Uttar Pradesh', 1050.50, '2024-03-05'),
-- (21, 'Alok Kumar', NULL, 'Male', 'alok@example.com', '9876543226', 'Bhopal', 'Madhya Pradesh', 950.25, '2024-04-15'),
-- (22, 'Shreya Patel', 25, NULL, 'shreya@example.com', '9876543227', 'Vadodara', 'Gujarat', 1350.00, '2024-05-25'),
-- (23, 'Rahul Verma', 33, 'Male', NULL, '9876543228', 'Nagpur', 'Maharashtra', 1000.75, '2024-06-10'),
-- (24, 'Anushka Singh', 28, 'Female', 'anushka@example.com', NULL, 'Gurgaon', 'Haryana', NULL, '2024-07-20'),
-- (25, 'Ravi Kumar', 32, 'Male', 'ravi@example.com', '9876543229', NULL, 'Uttar Pradesh', 1100.50, '2024-08-05'),
-- (26, 'Aarav Gupta', 27, 'Male', 'aarav@example.com', '9876543230', 'Patna', NULL, 1250.25, '2024-09-15'),
-- (27, 'Kritika Sharma', 29, 'Female', 'kritika@example.com', '9876543231', 'Chandigarh', 'Punjab', 1200.75, NULL),
-- (28, NULL, 35, 'Male', 'test@example.com', '9876543232', 'Jaipur', 'Rajasthan', 1300.00, '2024-11-20'),
-- (29, 'Surbhi Gupta', 26, NULL, 'surbhi@example.com', '9876543233', 'Nashik', 'Maharashtra', 1150.50, '2024-12-05'),
-- (30, 'Ajay Sharma', NULL, NULL, 'ajay@example.com', '9876543234', 'Jodhpur', 'Rajasthan', 1400.25, '2025-01-15');
-- !Handling Missing Values
-- ^Finding rows with misiing values in any col
-- SELECT *
-- from messy_indian_dataset
-- WHERE name is null
--     or age is null
--     or gender is null
--     or email is null
--     or phone_number is null
--     or purchase_amount is null
--     or state is null
--     or purchase_date is null
--     or city is null;
-- ^Finding rows without misiing
-- SELECT *
-- from messy_indian_dataset
-- WHERE name is NOT null
--     AND age is NOT  null
--     AND gender is NOT null
--     AND email is NOT null
--     AND phone_number is NOT null
--     AND purchase_amount is NOT null
--     AND state is NOT null
--     AND purchase_date is NOT null
--     and city is not null;
-- ^Saving table without misssing values
-- CREATE temporary TABLE IF NOT EXISTS clean_table as (
--     SELECT *
-- from messy_indian_dataset
-- WHERE name is NOT null
--     AND age is NOT  null
--     AND gender is NOT null
--     AND email is NOT null
--     AND phone_number is NOT null
--     AND purchase_amount is NOT null
--     AND state is NOT null
--     AND purchase_date is NOT null
--     and city is not null
-- ) ;
-- SELECT * from clean_table;
-- ^Filling Missing values with specific value
-- UPDATE messy_indian_dataset set age=coalesce(age,0);
-- SELECT * from messy_indian_dataset;
-- ^Filling nulls with specific value
-- UPDATE messy_indian_dataset
-- SET 
--     name = COALESCE(name, 'unknown'),
--     gender = COALESCE(gender, 'unknown'),
--     email = COALESCE(email, 'unknown'),
--     city = COALESCE(city, 'unknown'),
--     state = COALESCE(state, 'unknown'),
--     phone_number = COALESCE(phone_number, 'unknown'),
--     purchase_date = COALESCE(purchase_date, CURDATE()),
--     purchase_amount = COALESCE(purchase_amount, 0.00);
-- SELECT * from messy_indian_dataset;
-- ^Fillinf null amount with avg amount values
-- UPDATE messy_indian_dataset
-- SET purchase_amount =(
--         SELECT avg_amount
--         from(
--                 SELECT avg(purchase_amount) as avg_amount
--                 from messy_indian_dataset
--             ) as subquery
--     )
-- WHERE purchase_amount is null;
-- SELECT * from messy_indian_dataset;
-- ^Filling null city with most freq city
-- update messy_indian_dataset
-- set city =(
--         SELECT most_freq_city
--         from (
--                 SELECT city as most_freq_city,
--                     count(*) as 'freq'
--                 from messy_indian_dataset
--                 WHERE city is NOT NULL
--                 GROUP BY city
--                 ORDER BY count(*) DESC
--                 LIMIT 1
--             ) as subquery
--     )
-- WHERE city is null;
-- SELECT *
-- from messy_indian_dataset;
-- !removing Duplicates
-- ^Finding only unique rows
-- INSERT INTO messy_indian_dataset (id, name, age, gender, email, phone_number, city, state, purchase_amount, purchase_date) VALUES
-- (1, 'Rajesh Patil', 30, 'Male', 'rajesh@example.com', '9876543210', 'Mumbai', 'Maharashtra', 1000.50, '2023-01-05'),
-- (1, 'Rajesh Patel', 30, 'Male', 'rajesh@example.com', '9876543210', 'Mumbai', 'Maharashtra', 1000.50, '2023-01-05'),
-- (1, 'Rajesh Patel', 30, 'Male', 'rajesh@example.com', '9876543210', 'Mumbai', 'Maharashtra', 1000.50, '2023-01-05'),
-- (1, 'Rajesh Patel', 30, 'Male', 'rajesh@example.com', '9876543210', 'Mumbai', 'Maharashtra', 1000.50, '2023-01-05'),
-- (2, 'Priya Sharma', 25, 'Female', 'priya@example.com', '9876543211', 'Delhi', 'Delhi', NULL, '2023-02-15'),
-- (3, 'Amit Kumar', 35, 'Male', 'amit@example.com', '9876543212', 'Bangalore', 'Karnataka', 750.25, '2023-03-25'),
-- (4, 'Ritu Singh', 28, 'Female', NULL, '9876543213', 'Kolkata', 'West Bengal', 1200.75, '2023-04-10'),
-- (1, 'Rajesh Patel', 30, 'Male', 'rajesh@example.com', '9876543210', 'Mumbai', 'Maharashtra', 1000.50, '2023-01-05'),
-- (6, 'Priya Sharma', 25, 'Female', 'priya@example.com', '9876543211', 'Delhi', 'Delhi', 800.00, '2023-02-15'),
-- (7, 'Amit Kumar', NULL, 'Male', 'amit@example.com', NULL, 'Bangalore', 'Karnataka', 750.25, '2023-03-25'),
-- (8, 'Ritu Singh', 28, 'Female', 'ritu@example.com', '9876543213', 'Kolkata', 'West Bengal', 1200.75, '2023-04-10'),
-- (1, 'Ankit Tiwari', 32, 'Male', 'ankit@example.com', '9876543214', 'Lucknow', 'Uttar Pradesh', 900.00, '2023-05-20'),
-- (11, 'Swati Gupta', 27, 'Female', 'swati@example.com', '9876543215', 'Jaipur', 'Rajasthan', 1500.00, NULL),
-- (11, 'Deepak Sharma', 45, 'Male', 'deepak@example.com', '9876543216', 'Chennai', 'Tamil Nadu', 1100.50, '2023-06-15'),
-- (12, 'Anjali Gupta', 29, 'Female', 'anjali@example.com', '9876543217', 'Hyderabad', 'Telangana', 850.25, '2023-07-25'),
-- (13, 'Rohit Singh', 33, 'Male', 'rohit@example.com', '9876543218', 'Pune', 'Maharashtra', 950.75, '2023-08-10'),
-- (1, 'Pooja Patel', 27, 'Female', 'pooja@example.com', '9876543219', 'Ahmedabad', 'Gujarat', 1300.00, '2023-09-20'),
-- (15, 'Sandeep Verma', 31, 'Male', 'sandeep@example.com', '9876543220', 'Surat', 'Gujarat', 1150.50, '2023-10-05'),
-- (16, 'Aarti Sharma', 26, 'Female', 'aarti@example.org', '9876543221', 'Varanasi', 'Uttar Pradesh', 850.00, '2023-11-15'),
-- (1, 'Vikram Singh', 37, 'Male', 'vikram@example.co.in', '9876543222', 'Indore', 'Madhya Pradesh', 1250.25, '2023-12-25'),
-- (18, 'Ananya Sen', 28, 'Female', 'ananya@example.net', '9876543223', 'Kochi', 'Kerala', 900.75, '2024-01-10'),
-- (19, 'Nikhil Sharma', 34, 'Male', 'nikhil@example.co.uk', '9876543224', 'Jaipur', 'Rajasthan', 1400.00, '2024-02-20'),
-- (20, 'Isha Singh', 30, 'Female', 'isha@example.edu.in', '9876543225', 'Lucknow', 'Uttar Pradesh', 1050.50, '2024-03-05'),
-- (2, 'Alok Kumar', NULL, 'Male', 'alok@example.com', '9876543226', 'Bhopal', 'Madhya Pradesh', 950.25, '2024-04-15'),
-- (22, 'Shreya Patel', 25, NULL, 'shreya@example.com', '9876543227', 'Vadodara', 'Gujarat', 1350.00, '2024-05-25'),
-- (23, 'Rahul Verma', 33, 'Male', NULL, '9876543228', 'Nagpur', 'Maharashtra', 1000.75, '2024-06-10'),
-- (2, 'Anushka Singh', 28, 'Female', 'anushka@example.com', NULL, 'Gurgaon', 'Haryana', NULL, '2024-07-20'),
-- (25, 'Ravi Kumar', 32, 'Male', 'ravi@example.com', '9876543229', NULL, 'Uttar Pradesh', 1100.50, '2024-08-05'),
-- (26, 'Aarav Gupta', 27, 'Male', 'aarav@example.com', '9876543230', 'Patna', NULL, 1250.25, '2024-09-15'),
-- (2, 'Kritika Sharma', 29, 'Female', 'kritika@example.com', '9876543231', 'Chandigarh', 'Punjab', 1200.75, NULL),
-- (2, NULL, 35, 'Male', 'test@example.com', '9876543232', 'Jaipur', 'Rajasthan', 1300.00, '2024-11-20'),
-- (2, 'Surbhi Gupta', 26, NULL, 'surbhi@example.com', '9876543233', 'Nashik', 'Maharashtra', 1150.50, '2024-12-05'),
-- (30, 'Ajay Sharma', NULL, NULL, 'ajay@example.com', '9876543234', 'Jodhpur', 'Rajasthan', 1400.25, '2025-01-15');
-- SELECT   * from messy_indian_dataset; 
-- SELECT DISTINCT *
-- from messy_indian_dataset;
-- ^Finding unique values based on ID
-- SELECT id
-- from messy_indian_dataset
-- GROUP BY id
-- ORDER BY id;
-- ^Finding unique values based on names
-- SELECT name
-- from messy_indian_dataset
-- GROUP BY name
-- ORDER BY name;
-- ^Finding unique values based on id using rank
-- ~after this it will give rank for all repetion of aptrcular id
-- ~and also start from 1
-- SELECT *,ROW_NUMBER() over(PARTITION BY id ORDER BY id) as 'rank' from messy_indian_dataset;
-- ~This query will print only the first occurence
-- SELECT *
-- from (
--         SELECT *,
--             ROW_NUMBER() OVER(
--                 PARTITION BY id
--                 ORDER BY id
--             ) as 'rank'
--         FROM messy_indian_dataset
--     ) as subtable
-- WHERE subtable.rank = 1;
-- ^Finding unique values based on multiple columns | Rajesh Patel & Patil
-- SELECT *
-- from (
--         SELECT *,
--             ROW_NUMBER() OVER(
--                 PARTITION BY id,name
--                 ORDER BY id
--             ) as 'rank'
--         FROM messy_indian_dataset
--     ) as subtable
-- WHERE subtable.rank = 1;
-- !standardizing data formate
-- !Handling Outliers
-- ^Finding outliers based on z-score
-- SELECT *,abs(purchase_amount -avg(purchase_amount) over())/stddev(purchase_amount) over() as "z_score" from messy_indian_dataset
-- ^Remove outliers based on specific z-score
-- SELECT * from (SELECT *,abs(purchase_amount -avg(purchase_amount) over())/stddev(purchase_amount) over() as 'z_score' from messy_indian_dataset
-- ) as subtable where subtable.z_score<2;
-- !Correcting Inconsistent|misspeleld,inconsistent capitalization,or inconsistent data formate
-- !Working with date
-- ^Add new columns for day,month,and year
-- alter TABLE messy_indian_dataset 
-- add column day int, add column month int ,add column year int;
-- SELECT * from messy_indian_dataset;
-- ^Update the new column with the extracted day,month and year value
-- UPDATE messy_indian_dataset
-- SET day = Day(purchase_date),
--     month = month(purchase_date),
--     year = year(purchase_date) ;
-- ^Add a new column for the nme of the day of week and save day name there
-- ALTER TABLE messy_indian_dataset 
-- add column day_name VARCHAR(10);
-- UPDATE messy_indian_dataset SET day_name = DAYNAME(purchase_date);
-- ^Add a new column for the nme of the month and save day name there
-- ALTER TABLE messy_indian_dataset 
-- add column month_name VARCHAR(10);
-- UPDATE messy_indian_dataset
-- SET month_name = MONTHNAME(purchase_date);
-- !Validating data intrgrity |Validation the integrety of data
-- !Parsing and extracting Information | Email Extraction
-- !Converting Data types
-- !Data Transformation | Scaling ,Normalization or Encoding Ctegorical Variabel