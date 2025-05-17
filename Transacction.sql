-- DROP TABLE IF EXISTS messy_indian_dataset;
-- CREATE TABLE IF NOT EXISTS messy_indian_dataset (
--     id INT,
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

-- SELECT * from messy_indian_dataset;

-- Start a  Transaction
-- Start Transaction;
-- UPDATE messy_indian_dataset SET 
-- purchase_amount=1500
-- WHERE id=1;


-- Transaction with a rollback
-- Start Transaction;
-- UPDATE messy_indian_dataset SET 
-- purchase_amount=1400
-- WHERE id=1;
-- rollback;


-- Transaction with a commit
-- Start Transaction;
-- UPDATE messy_indian_dataset SET 
-- purchase_amount=1400
-- WHERE id=1;
-- commit;

-- Transaction with a commit ad rollback

-- Start Transaction;
-- INSERT into messy_indian_dataset VALUES
-- (11,"Rajesh",30,"Male","rajes@gail.com","5561561511","Mumbai","Maharstra",1000.50,"2023-01-05");
-- SELECT * from messy_indian_dataset WHERE id=11;
-- SELECT * from messy_indian_dataset;
-- commit;
-- rollback;
-- SELECT * from messy_indian_dataset;

-- Transaction with a commit ad rollback with multiple commands

Start Transaction;
INSERT into messy_indian_dataset VALUES
(11,"Rajeshi",30,"Male","rajes@gail.com","5561561511","Mumbai","Maharstra",1000.50,"2023-01-05");

INSERT into messy_indian_dataset VALUES
(11,"Rajesh Khanna",30,"Male","rajes@gail.com","5561561511","Mumbai","Maharstra",1000.50,"2023-01-05");

SELECT * from messy_indian_dataset;
commit;
rollback;
SELECT * from messy_indian_dataset;