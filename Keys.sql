
-- drop TABLE if EXISTS Employee ;

-- -- !Defining PRimary key
-- CREATE TABLE if NOT EXISTS Employee(
--     employ_id INT PRIMARY KEY,
--     employ_name VARCHAR(50),
--     department VARCHAR(50)
-- );

-- desc Employee;
-- !Composit Key

-- DROP TABLE if EXISTS Orders;
-- CREATE TABLE if NOT EXISTS Orders(
--     order_id SERIAL ,
--     customer_id INT,
--     order_date Date,
--     PRIMARY Key(order_id,customer_id)
-- )

-- desc Orders; 

-- !Foreign KEY
-- DROP TABLE if EXISTS Orders;
-- CREATE TABLE if NOT EXISTS Orders(
--     order_id SERIAL PRIMARY KEY ,
--     customer_id INT,
--     order_date Date,
--     Foreign key(customer_id) REFERENCES Employee(employ_id)
-- );
-- desc Employee;


-- !Unique Constarins
-- drop TABLE if EXISTS Employee ;
-- CREATE TABLE if NOT EXISTS Employee(
--     employ_id INT PRIMARY KEY,
--     employ_name VARCHAR(50),
--     department VARCHAR(50),
--     email VARCHAR(50) UNIQUE
-- );

-- !Unique Constarins as Composit key
-- drop TABLE if EXISTS Employee ;
-- CREATE TABLE if NOT EXISTS Employee(
--     employ_id INT PRIMARY KEY,
--     employ_name VARCHAR(50),
--     department VARCHAR(50),
--     email VARCHAR(50) ,
--     phone INT ,
--     UNIQUE(email,phone)
-- );

-- DESC Employee;

-- !Check Constraint
-- drop TABLE if EXISTS Employee ;
-- CREATE TABLE if NOT EXISTS Employee(
--     employ_id INT PRIMARY KEY,
--     employ_name VARCHAR(50),
--     department VARCHAR(50),
--     email VARCHAR(50) ,
--     phone INT ,
--     UNIQUE(email,phone),
--     age INT Check (age>=18) default  18
-- );
desc Employee;