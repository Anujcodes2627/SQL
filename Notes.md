    					Understanding Databases

Databases serve as the backbone of modern data management systems, enabling efficient storage, retrieval, and manipulation of structured and unstructured data. Whether you're new to databases or looking to deepen your understanding, this guide will provide a comprehensive overview.

What is a Database?
A database is a structured collection of data organized in a way that facilitates efficient retrieval, management, and updating. It acts as a repository where data is stored persistently for various applications and users. Databases are crucial in virtually every industry, supporting applications ranging from simple data entry systems to complex enterprise solutions.

Components of a Database System
A typical database system comprises several key components:

Tables: Data in a database is organized into tables, which consist of rows and columns. Each row represents a record, while each column represents a data attribute.
Schema: The schema defines the structure of the database, specifying the tables, columns, data types, constraints, and relationships between tables.
Queries: Queries are commands or statements written in a query language (e.g., SQL) to interact with the database. They are used to retrieve, insert, update, or delete data.
Database Management System (DBMS): A DBMS is software that manages databases. It provides an interface for users to interact with the database, handles data storage, security, backup, and ensures data integrity.
Indexes: Indexes are data structures that enhance query performance by allowing faster retrieval of data. They are typically created on columns frequently used in search conditions.
Transactions: A transaction is a unit of work performed against the database. It ensures data integrity by either committing changes or rolling them back if an error occurs.
Types of Databases
Databases can be classified based on their data model and architecture:

Relational Databases: Relational databases store data in tables and use structured query language (SQL) for querying and managing data. They enforce relationships between tables using primary keys and foreign keys.

NoSQL Databases: NoSQL (Not Only SQL) databases are designed to handle large volumes of unstructured or semi-structured data. They offer flexibility in schema design and are suitable for distributed and scalable applications.

Object-Oriented Databases: These databases store data in the form of objects, akin to object-oriented programming languages. They are suitable for applications where data objects need to be stored and retrieved directly.

Graph Databases: Graph databases store data in nodes and edges, representing entities and relationships. They are efficient for handling complex relationships and are used in social networks and recommendation engines.

Common Database Operations
Understanding databases involves mastering several essential operations:

CRUD Operations: CRUD (Create, Read, Update, Delete) operations are fundamental for manipulating data within a database.
Joins: Joins combine data from two or more tables based on a related column to retrieve data that spans multiple tables.
Aggregation: Aggregation functions like SUM, COUNT, AVG, MIN, and MAX are used to perform calculations on grouped data.
Transactions: Transactions ensure data consistency by grouping one or more SQL operations into a single unit of work that either succeeds or fails as a whole.
Importance of Databases in Applications
Databases play a pivotal role in modern applications:

Data Storage: They provide a secure and efficient way to store and organize large volumes of data.
Data Integrity: They enforce data integrity through constraints, ensuring that only valid data is stored in the database.
Scalability: Databases can scale vertically (adding more resources to a single server) or horizontally (distributing data across multiple servers) to accommodate growing data needs.
Security: They implement access controls, encryption, and auditing mechanisms to protect sensitive data from unauthorized access and breaches.
Properties of Databases
Databases are characterized by several essential properties:

Integrity: Databases maintain data integrity by enforcing constraints (e.g., unique keys, foreign keys) to ensure data accuracy and consistency.
Security: They implement access controls, authentication mechanisms, encryption, and auditing to protect data from unauthorized access, breaches, and data loss.
Availability: Databases strive to be highly available, ensuring that data is accessible and operational even during hardware failures or maintenance activities.
Concurrency: Databases manage multiple users accessing the data simultaneously (concurrency control), ensuring that transactions are executed correctly and efficiently without interfering with each other.
Independence of Applications: Databases support multiple applications concurrently, providing a centralized data repository that is independent of specific applications accessing it.
What if Data Stored in Servers is Lost?
The loss of data stored in databases can have significant consequences:

Data Recovery: Organizations may implement backup and recovery strategies to restore lost data from backup copies.

Data Redundancy: Redundancy techniques such as replication ensure that data is stored in multiple locations, reducing the risk of complete data loss.

Disaster Recovery Plans: Organizations develop disaster recovery plans to mitigate the impact of data loss caused by natural disasters, cyber-attacks, or hardware failures.

SQL vs. NoSQL
SQL (Relational Databases):
Data Model: Structured, tables with rows and columns.

Schema: Predefined schema with rigid structure, supports relationships.

Query Language: SQL (Structured Query Language) for querying and manipulating data.

Scaling: Vertical scaling (adding more resources to a single server) or horizontal scaling (sharding and replication).

NoSQL (Non-Relational Databases):
Data Model: Flexible, schema-less, can store unstructured or semi-structured data.
Types: Document databases (like MongoDB), key-value stores (like Redis), column-family stores (like Cassandra), and graph databases (like Neo4j).
Query Language: Various query languages or APIs specific to each type of NoSQL database.
Scaling: Designed for horizontal scaling across distributed systems, accommodating big data and real-time applications.
Conclusion
Understanding databases is essential for anyone involved in software development, data analytics, or IT operations. By grasping the fundamentals of databases, their components, types, and operations, you can leverage their power to build robust, scalable, and efficient applications.

---

    							Data Retrieval with SQL

The most fundamental SQL command for data retrieval is the SELECT statement. It is used to fetch data from one or more tables in a database. The syntax for a simple SELECT statement is as follows:

SELECT column1, column2, ...
FROM table_name;

1. Basic Data Retrieval
   Suppose we have a table named employees with the following structure:

employee_id

first_name

Age

department

1

John Doe

28

HR

2

Jane Smith

34

Finance

3

Jim Brown

25

IT

4

Jake White

30

Marketing

5

Jill Black
29

IT

To retrieve all records from the employees table, you would use:

SELECT \* FROM employees;
This query will return all columns for all rows in the employees table.

2. Selecting Specific Columns
   To retrieve specific columns, you simply list the column names separated by commas.

Example
To retrieve only the name and department columns from the employees table:

SELECT name, department
FROM employees;
This query returns only the name and department columns for all rows in the employees table.

1

3. Using Aliases
   Aliases can be used to give a table or a column a temporary name that is easier to work with or more descriptive.

Example
To retrieve the name column and give it an alias employee_name, and the department column with an alias dept:

SELECT name AS employee_name, department AS dept
FROM employees;
This query returns the name column as employee_name and the department column as dept.

2

4. Filtering Data with WHERE Clause
   The WHERE clause allows you to specify conditions that the data must meet to be included in the results.

Example
To retrieve all employees who are older than 30 years:

SELECT \* FROM employees
WHERE age > 30;
This query will return only the employees whose age is greater than 30.

3

5. Filtering Data with IN and NOT IN Command
   You can use IN and NOT IN to filter data based on a list of values.

1. To retrieve employees in the Sales or Marketing department:

SELECT \* FROM employees
WHERE department IN ('Sales', 'Marketing');
employee_id name age department
4 Jake White 30 Marketing 2. To retrieve employees who are not in the Sales or Marketing department:

SELECT \* FROM employees
WHERE department NOT IN ('Sales', 'Marketing');
employee_id first_name last_name age department
1 John Doe 28 HR
2 Jane Smith 34 Finance
3 Jim Brown 25 IT
5 Jill Black 29 IT 6. Using Multiple Conditions with AND and OR
You can combine multiple conditions using AND and OR.

Example
To retrieve all employees who are older than 25 and work in the IT department:

SELECT \* FROM employees
WHERE age > 25 AND department = 'IT';
To retrieve all employees who are either older than 30 or work in the HR department:

SELECT \* FROM employees
WHERE age > 30 OR department = 'HR';
4

7. Using Comparison Operators
   SQL supports various comparison operators for filtering data:

> : Greater than

<: Less than

> =: Greater than or equal to

<=: Less than or equal to

BETWEEN: Within a range

LIKE: Pattern matching

IS NULL: Is null

IS NOT NULL: Is not null

Example

1. To retrieve all employees whose age is between 25 and 30:

SELECT \* FROM employees
WHERE age BETWEEN 25 AND 30;
5

2. To retrieve all employees whose name starts with 'J':

SELECT \* FROM employees
WHERE name LIKE 'J%';
6

Query 3: To Retrieve All Employees Who Do Not Have a Department Assigned
SELECT _ FROM employees
WHERE department IS NULL;
Query 4: To Retrieve All Employees Who Do Have a Department Assigned
SELECT _ FROM employees
WHERE department IS NOT NULL;
employee_id first_name last_name age department
1 John Doe 28 HR
2 Jane Smith 34 Finance
3 Jim Brown 25 IT
4 Jake White 30 Marketing
5 Jill Black 29 IT 8. Sorting Data with ORDER BY
The ORDER BY clause is used to sort the result set by one or more columns. By default, the sorting is in ascending order. To sort in descending order, you can use the DESC keyword.

Example
To retrieve all employees and sort them by their age in ascending order:

SELECT \* FROM employees
ORDER BY age ASC;
To retrieve all employees and sort them by their age in descending order:

SELECT \* FROM employees
ORDER BY age DESC;
6

9. Multiple Column Sorting
   You can sort by multiple columns by listing them separated by commas.

Example
To sort employees by department in ascending order and within each department by age in descending order:

SELECT \* FROM employees
ORDER BY department ASC, age DESC;
7

10. Using Offsets and Limits
    The LIMIT clause is used to specify the number of rows to return, and the OFFSET clause is used to specify the starting point within the result set.

Example
To retrieve the first 3 employees:

SELECT \* FROM employees
LIMIT 3;
9

To retrieve 3 employees starting from the second row:

SELECT \* FROM employees
LIMIT 3 OFFSET 1;
8 11. Saving SQL Queries in MySQL Workbench
MySQL Workbench is a popular tool for managing MySQL databases. To save an SQL query in MySQL Workbench:

Write your SQL query in the query editor.
Click on the "File" menu and select "Save Script" or "Save Script As..."
Choose a location and provide a name for your SQL file. The default extension for SQL scripts is .sql.
Click "Save".
Your SQL query is now saved and can be executed later by opening the saved file in MySQL Workbench.

---

    							Cases in SQL

The CASE statement in SQL is a powerful tool used to implement conditional logic within SQL queries. It allows you to perform if-then-else logic in a query, making it possible to return different values based on certain conditions. This guide will cover the basics of the CASE statement, its syntax, and provide examples to illustrate its use in various scenarios.

Basic Syntax
The CASE statement comes in two forms: the simple CASE and the searched CASE.

1. Simple CASE Syntax
   The simple CASE statement compares an expression to a set of simple expressions to determine the result.

CASE expression
WHEN value1 THEN result1
WHEN value2 THEN result2
...
ELSE resultN
END 2. Searched CASE Syntax
The searched CASE statement evaluates a set of Boolean expressions to determine the result.

CASE
WHEN condition1 THEN result1
WHEN condition2 THEN result2
...
ELSE resultN
END
Examples of Using CASE Statements
Example 1: Basic Usage
We want to classify employees based on their department. Specifically, we want to label employees in the "IT" department as "IT Team" and all others as "Other".

employee_id

first_name

Age

department

1

John Doe

28

HR

2

Jane Smith

34

Finance

3

Jim Brown

25

IT

4

Jake White

30

Marketing

5

Jill Black
29

IT

SELECT
name,
CASE department
WHEN 'IT' THEN 'IT Team'
ELSE 'Other'
END AS department_group
FROM employees;
This query will return the names of the employees along with a classification of their department.

Explanation
SELECT name: Retrieves the name column from the employees table.
CASE department: Starts a CASE statement that evaluates the department column.
WHEN 'IT' THEN 'IT Team': If the department is 'IT', the result is 'IT Team'.
ELSE 'Other': For all other departments, the result is 'Other'.
END AS department_group: Ends the CASE statement and assigns an alias department_group to the result.
9
Example 2: Using Multiple Conditions
Suppose we want to classify employees into more specific age groups: 'Junior' for those under 25, 'Young' for those between 25 and 30, and 'Senior' for those over 30.

SELECT
employee_id,
name,
age,
department,
CASE
WHEN age < 25 THEN 'Junior'
WHEN age BETWEEN 25 AND 30 THEN 'Young'
ELSE 'Senior'
END AS age_group
FROM employees;
10

Example 3: Nested CASE Statements
The goal here is to label employees under 30 as 'Jr Sales' if they are in the Sales department, otherwise as 'Junior'.

SELECT
name,
CASE
WHEN age < 30 THEN
CASE
WHEN department = 'Sales' THEN 'Jr Sales'
ELSE 'Junior'
END
ELSE 'Senior'
END AS employee_name
FROM employees;
1

Explanation
SELECT name: Retrieves the name column from the employees table.
CASE WHEN age < 30 THEN ... END: Evaluates if the employee's age is less than 30.
Nested CASE: Inside the first CASE:
WHEN department = 'Sales' THEN 'Jr Sales': If the department is 'Sales', then 'Jr Sales'.
ELSE 'Junior': If the department is not 'Sales', then 'Junior'.
ELSE 'Senior': If the employee is not under 30, label as 'Senior'.
END AS employee_name: Ends the CASE statement and assigns the result the alias employee_name.
Example 4: Nested CASE with Additional Conditions
Here, we introduce more conditions to label employees differently based on age and other criteria.

SELECT
name,
CASE
WHEN age < 30 THEN
CASE
WHEN department = 'Sales' THEN 'Jr Sales'
ELSE 'Junior'
END
WHEN age >= 30 AND age <= 38 THEN
CASE
WHEN department = 'Sales' THEN 'Mid Sales'
ELSE 'Middle'
END
ELSE 'Senior'
END AS employee_name
FROM employees;
111

Explanation

SELECT name: Retrieves the name column from the employees table.
CASE: Starts the outer CASE statement.
WHEN age < 30 THEN ... END: For employees under 30:
Nested CASE: Labels as 'Jr Sales' if in 'Sales', otherwise 'Junior'.
WHEN age >= 30 AND age <= 38 THEN ... END: For employees between 30 and 38:
Nested CASE: Labels as 'Mid Sales' if in 'Sales', otherwise 'Middle'.
ELSE 'Senior': For all other employees, label as 'Senior'.
END AS employee_name: Ends the CASE statement and assigns the result the alias employee_name.
Example 5: Handling NULL Values in the Department Column
If the department is NULL, we can handle it by assigning a default value.

SELECT
name,
CASE
WHEN department IS NULL THEN 'No Department Assigned'
ELSE department
END AS department_status
FROM employees;
first_name last_name department department_status
John Doe HR HR
Jane Smith Finance Finance
Jim Brown IT IT
Jake White Marketing Marketing
Jill Black NULL No Department Assigned

---

    						Introduction to DDL Commands

Data Definition Language (DDL) commands are used to define, modify, and remove database structures, such as tables, indexes, and schemas. These commands are essential for creating and maintaining the structure of a database, ensuring data integrity, and optimizing performance. In this article, we'll explore the primary DDL commands with practical examples.

Creating a Database and Using a Database
Before working with tables, it's essential to create and select a database. Here's how you can create and use a database named employees:

CREATE DATABASE employees;
USE employees;
Creating a Table
Creating tables is one of the fundamental tasks in managing a database. The CREATE TABLE command allows you to define the structure of a table, including columns and their data types.

Example: Creating an Employees Table
CREATE TABLE Employees (
employee_id INT PRIMARY KEY,
name VARCHAR(50),
age INT,
department VARCHAR(50)
);
Inserting Data into the Table
After creating the table, you can insert data into it using the INSERT INTO command.

INSERT INTO Employees (employee_id, name, age, department) VALUES
(1, 'John', 35, 'Sales'),
(2, 'Alice', 28, 'Marketing'),
(3, 'Bob', 40, 'HR'),
(4, 'Sarah', 33, 'Finance'),
(5, 'Michael', 25, 'Operations'),
(6, 'Emily', 29, 'Sales'),
(7, 'David', 42, 'HR'),
(8, 'Jessica', 31, 'Marketing'),
(9, 'Richard', 37, NULL),
(10, 'Michelle', 26, 'Finance');
Modifying a Table Structure
The ALTER TABLE command allows you to modify an existing table's structure. You can add, rename, or drop columns, and change data types or constraints.

Adding a New Column
ALTER TABLE Employees ADD COLUMN email VARCHAR(50);
Renaming a Column
ALTER TABLE Employees RENAME COLUMN employee_id TO id;
Dropping a Column
ALTER TABLE Employees DROP COLUMN email;
Dropping a Table
The DROP TABLE command is used to delete a table and all of its data.

DROP TABLE IF EXISTS Employees;
Creating a Table with Constraints
You can add constraints to ensure data integrity. Here are examples of creating tables with different constraints.

-- Creating a table with NOT NULL and CHECK constraints
CREATE TABLE Employees (
employee_id INT,
name VARCHAR(50) NOT NULL,
age INT CHECK (age >= 18),
department VARCHAR(50)
);

-- Creating a table with a SERIAL primary key and additional constraints
CREATE TABLE Employees (
employee_id SERIAL PRIMARY KEY,
name VARCHAR(50) NOT NULL,
age INT CHECK (age >= 18),
department VARCHAR(50),
hire_date DATE
);
Practical Examples of Using DDL Commands
Dropping and Creating a Table

-- Dropping a table if it exists and creating a new one
DROP TABLE IF EXISTS employee;
CREATE TABLE employee (
employee*id INT,
name VARCHAR(50),
age INT,
department VARCHAR(50)
);
SELECT * FROM employee;
Creating a Table with Constraints
-- Dropping the table if it exists and creating a new one with constraints
DROP TABLE IF EXISTS employee;
CREATE TABLE employee (
employee*id INT,
name VARCHAR(50) NOT NULL,
age INT CHECK (age >= 18),
department VARCHAR(50)
);
SELECT * FROM employee;

-- Dropping the table if it exists and creating a new one with additional constraints
DROP TABLE IF EXISTS employee;
CREATE TABLE employee (
employee*id SERIAL PRIMARY KEY,
name VARCHAR(50) NOT NULL,
age INT CHECK (age >= 18),
department VARCHAR(50),
hire_date DATE
);
SELECT * FROM employee;
Altering a Table
-- Adding a new column to a table
ALTER TABLE employee ADD COLUMN email VARCHAR(50);
SELECT \_ FROM employee;

-- Renaming a column in a table
ALTER TABLE employee RENAME COLUMN employee_id TO id;
SELECT \* FROM employee;

-- Dropping a column from a table
ALTER TABLE employee DROP COLUMN email;
SELECT \* FROM employee;
Conclusion
DDL commands are essential for defining and managing the structure of a database. They allow you to create, modify, and delete database objects such as tables and indexes. By mastering these commands, you can effectively design and maintain a robust and efficient database system. The examples provided in this article offer a practical guide to using DDL commands in SQL, helping you to understand and apply these concepts in your database projects.

---

    																						Introduction to Keys

What is a Database?
A database is a shared collection of logically related data designed to meet the information needs of an organization. Consider a franchise company, for example. The franchise stores various pieces of information such as customer details, inventory data, employee records, and sales figures. This data is logically related and stored in a database to facilitate easy access, management, and analysis.

Uses of Databases
Data Storage: Databases are used to store vast amounts of data in an organized manner, ensuring data can be retrieved efficiently.

Data Analysis: Businesses use databases to analyze trends and patterns in their data, aiding in decision-making processes.

Keeping Records: Databases are essential for maintaining records of transactions, inventory, employee details, and other critical information.

Web Apps: Modern web applications rely heavily on databases to store user information, content, and other data needed to operate effectively.

CRUD Operations in Databases
CRUD stands for Create, Read, Update, and Delete. These operations are fundamental to interacting with a database.

Create: Adding new records to the database.
Read: Retrieving data from the database.
Update: Modifying existing records in the database.
Delete: Removing records from the database.
What If All the Data Stored in the Servers Is Lost?
The loss of all data stored in servers can be catastrophic, leading to operational disruptions, financial losses, and reputational damage. For instance, in 2017, Equifax suffered a data breach that exposed sensitive information of over 140 million customers, leading to severe consequences.

Properties of a Database
Integrity: Ensures accuracy and consistency of data.

Security: Protects data from unauthorized access and breaches.

Availability: Ensures data is accessible when needed.

Concurrency: Manages simultaneous data access to ensure data integrity.

Independence of Apps: Data is independent of the applications that use it, allowing for flexibility and scalability.

Difference Between SQL and NoSQL
SQL Databases: Relational databases that use structured query language (SQL) for defining and manipulating data. They are table-based and suitable for complex queries.

NoSQL Databases: Non-relational databases that store data in various formats like documents, key-value pairs, graphs, or wide-column stores. They are designed for large-scale data storage and real-time web applications.

What is a DBMS?
A Database Management System (DBMS) is software that interacts with users, applications, and the database itself to capture and analyze data. It provides tools to define, manipulate, retrieve, and manage data in a database.

Schema
A schema is the logical structure of a database, defining how data is organized and how the relations among them are associated. It includes definitions of tables, fields, relationships, views, indexes, and other elements.

Keys in Databases
Keys are fundamental to database design as they ensure that each record within a table can be uniquely identified. They enforce integrity and establish relationships between tables. Let's explore different types of keys using the following data table:

database_ex

Types of Keys
Super Key:
A set of one or more columns that can uniquely identify a record in a table.

Example: Roll No, Registration No, Email, Phone, Roll No + Name, Roll No + Branch.

Candidate Key:
A minimal super key; i.e., a super key with no redundant attributes.

Example: Roll No, Registration No.

Primary Key:
A candidate key chosen to uniquely identify records in a table. It cannot contain NULL values.

Example: Registration No.

Alternate Key:
Candidate keys that are not chosen as the primary key.

Example: Roll No., Branch, Email, Phone, Name etc.

Composite Key:
A key that consists of two or more attributes that uniquely identify a record.

Example: Roll No + Email, Roll No + Name + Branch + Registration No + Phone.

Foreign Key:
A key used to link two tables. It is a field (or collection of fields) in one table that refers to the primary key in another table.

Example: If there were another table for departments, Branch in the Employees table could be a foreign key linking to the Departments table.

Cardinality of Relations
Cardinality refers to the uniqueness of data values contained in a particular column (attribute) of a database table. It can be:

One-to-One: Each record in Table A is linked to a single record in Table B.

One-to-Many: A single record in Table A is linked to multiple records in Table B.

Many-to-One: Multiple records in Table A are linked to a single record in Table B.

Many-to-Many: Multiple records in Table A are linked to multiple records in Table B.

cardinality

Conclusion
Understanding keys is crucial for database design and management. They ensure data integrity, establish relationships between tables, and facilitate efficient data retrieval and manipulation. By using keys effectively, you can design robust databases that support the complex information needs of modern applications and businesses.

---

    																						Keys and Constraints

In SQL, keys and constraints are fundamental components used to ensure data integrity and establish relationships between tables. This article will explain the primary types of keys and constraints with practical examples.

Keys in SQL
Keys are crucial for identifying records within a table and establishing relationships between different tables. Here are the key types we'll cover:

Primary Key
A primary key is a unique identifier for each record in a table. It cannot contain NULL values and must contain unique values.

DROP TABLE IF EXISTS Employees;
CREATE TABLE IF NOT EXISTS Employees (
employee_id SERIAL PRIMARY KEY,
name VARCHAR(50),
department VARCHAR(50)
);
SELECT \* FROM Employees;
In this example, the employee_id column is the primary key for the Employees table. The SERIAL type automatically generates a unique value for each new record.

Composite Key
A composite key consists of two or more columns that together uniquely identify a record.

DROP TABLE IF EXISTS Orders;
CREATE TABLE Orders (
order_id SERIAL,
customer_id INT,
order_date DATE,
PRIMARY KEY (order_id, customer_id)
);
SELECT \* FROM Orders;
Here, order_id and customer_id together form the composite primary key for the Orders table, ensuring each order is uniquely identified by both columns.

Constraints in SQL
Constraints enforce rules on data columns to maintain data integrity. Here are the common types of constraints:

Foreign Key
A foreign key is a column (or a set of columns) that establishes a link between the data in two tables. It ensures referential integrity by making sure that the value in the foreign key column exists in the referenced primary key column.

DROP TABLE IF EXISTS Orders;
CREATE TABLE Orders (
order_id SERIAL PRIMARY KEY,
customer_id INT,
order_date DATE,
FOREIGN KEY (customer_id) REFERENCES Employees (employee_id)
);
SELECT \* FROM Orders;
In this example, customer_id in the Orders table is a foreign key that references the employee_id column in the Employees table.

Unique Constraint
A unique constraint ensures that all values in a column are distinct.

DROP TABLE IF EXISTS Employees;
CREATE TABLE IF NOT EXISTS Employees (
employee_id SERIAL PRIMARY KEY,
email VARCHAR(50) UNIQUE,
name VARCHAR(50),
department VARCHAR(50)
);
SELECT \* FROM Employees;
Here, the email column in the Employees table must contain unique values, preventing duplicate email entries.

Composite Unique Constraint
A composite unique constraint ensures that the combination of values in two or more columns is unique across all records.

DROP TABLE IF EXISTS Employees;
CREATE TABLE IF NOT EXISTS Employees (
employee_id SERIAL PRIMARY KEY,
email VARCHAR(50) UNIQUE,
phone INT UNIQUE,
name VARCHAR(50),
department VARCHAR(50),
UNIQUE (email, phone)
);
SELECT \* FROM Employees;
This example ensures that the combination of email and phone values is unique in the Employees table.

Check Constraint
A check constraint enforces a condition on the values in a column. If a record violates the condition, it is not allowed to be added to the table.

DROP TABLE IF EXISTS Employees;
CREATE TABLE IF NOT EXISTS Employees (
employee_id SERIAL PRIMARY KEY,
email VARCHAR(50) UNIQUE,
age INT CHECK (age >= 18),
phone INT UNIQUE,
name VARCHAR(50),
department VARCHAR(50),
UNIQUE (email, phone)
);
SELECT \* FROM Employees;
In this table, the age column must contain values greater than or equal to 18. This ensures that no employee can be younger than 18 years old.

Conclusion
Understanding keys and constraints is essential for designing robust and efficient databases. Keys ensure each record can be uniquely identified, while constraints enforce rules to maintain data integrity. By using these tools effectively, you can create databases that are both reliable and scalable.

---

    							Insert Data in a table

Inserting data into a database table is a fundamental operation in SQL, enabling you to add records to your database. This article will explain the concepts and provide detailed examples of how to insert data into a table.

Creating a Table
Before inserting data, we need a table to store the data. Here’s an example of creating an Employees table:

USE employees;
DROP TABLE IF EXISTS Employees;
CREATE TABLE IF NOT EXISTS Employees (
employee_id SERIAL PRIMARY KEY,
first_name VARCHAR(50),
last_name VARCHAR(50),
department_id INT,
hire_date DATE
);
SELECT \* FROM Employees;
In this example, we create an Employees table with the following columns:

employee_id: A unique identifier for each employee, which is auto-incremented.
first_name: The first name of the employee.
last_name: The last name of the employee.
department_id: The ID of the department the employee belongs to.
hire_date: The date the employee was hired.
Inserting Data

1. Inserting a Single Row
   To insert a single row into the Employees table, you use the INSERT INTO statement with the column names and the values to be inserted.

INSERT INTO Employees (employee_id, first_name, last_name, department_id, hire_date)
VALUES (1, 'Ashish', 'Jangra', 1, '2021-07-16');
SELECT \* FROM Employees;
This inserts one record into the Employees table with the specified values.

1
Output

Inserting Multiple Rows
You can also insert multiple rows in a single INSERT INTO statement by separating the values for each row with a comma.

INSERT INTO Employees (employee_id, first_name, last_name, department_id, hire_date)
VALUES
(2, 'Manish', 'Kumar', 2, '2021-10-16'),
(3, 'Sakshi', 'Awasthi', 2, '2021-10-16'),
(4, 'Avneet', 'Kaur', 3, '2021-10-16');
SELECT \* FROM Employees;
This example adds three new rows to the Employees table.

2
Output

Adding Partial Data
If you don't have values for all columns, you can insert partial data. Columns not listed in the INSERT INTO statement will be set to their default value or NULL if no default is specified.

INSERT INTO Employees (first_name, last_name)
VALUES ('Ashish', 'Jangra');
SELECT \* FROM Employees;
In this case, only the first_name and last_name are provided. The other columns will use their default values or NULL.

null
Output

Inserting Data in a Different Order
The order of the columns in the INSERT INTO statement does not have to match the order of the columns in the table. You can specify the columns in any order.

INSERT INTO Employees (department_id, hire_date, last_name, first_name)
VALUES (1, '2022-10-10', 'Sakari', 'Prakash');
SELECT \* FROM Employees;
Here, the columns are specified in a different order, and the values are inserted accordingly.

5
Output

Adding Data Without Order
You can also add data without specifying the column names if you provide values for all columns in the exact order they are defined in the table.

INSERT INTO Employees
VALUES (11, 'Ashish', 'Jangra', 5, '2024-10-10');
SELECT \* FROM Employees;
This statement inserts values directly into all columns based on their order in the table definition.

Adding Current Date and Default Values
You can create a table with default values for some columns, such as the current timestamp or a default status.

DROP TABLE IF EXISTS ExampleTable;
CREATE TABLE IF NOT EXISTS ExampleTable (
employee_id SERIAL PRIMARY KEY,
name VARCHAR(50) NOT NULL,
hire_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
status VARCHAR(20) DEFAULT 'Active'
);
SELECT \* FROM ExampleTable;

INSERT INTO ExampleTable (name) VALUES ('Ashish');
SELECT _ FROM ExampleTable;
INSERT INTO ExampleTable (name) VALUES ('Ashish'), ('Manish'), ('Parag');
SELECT _ FROM ExampleTable;

INSERT INTO ExampleTable (name, status) VALUES ('Ashish', 'Inactive'), ('Manish', 'Inactive'), ('Parag', 'Inactive');
SELECT \* FROM ExampleTable;
In this example, the hire_date column uses the current timestamp by default, and the status column defaults to 'Active'. When inserting data, you can omit these columns if you want to use the default values.

Conclusion
Inserting data into a table is a fundamental aspect of working with databases. Understanding how to use the INSERT INTO statement with different variations allows you to add records efficiently and effectively. Whether you're inserting a single row, multiple rows, partial data, or using default values, mastering these techniques is essential for managing and manipulating data in SQL databases.

---

    					Update data from a table

Updating data in a database table is a crucial operation in managing and maintaining accurate and relevant information. In SQL, the UPDATE statement allows you to modify existing data in one or more rows of a table. This article will walk you through the concepts and examples of using the UPDATE statement, providing detailed explanations and sample outputs.

Creating and Populating the Table
First, let's create a sample table named People and insert some initial data into it.

USE employees;
DROP TABLE IF EXISTS People;

CREATE TABLE People (
person_id SERIAL PRIMARY KEY,
first_name VARCHAR(50),
last_name VARCHAR(50),
age INT,
city VARCHAR(50)
);
Insert sample data into the table
INSERT INTO People (first_name, last_name, age, city)
VALUES
('John', 'Doe', 30, 'New York'),
('Jane', 'Smith', 25, 'Los Angeles'),
('Michael', 'Johnson', 40, 'Chicago'),
('Emily', 'Brown', 35, 'Houston'),
('David', 'Jones', 28, 'San Francisco'),
('Sarah', 'Davis', 32, 'Seattle'),
('Robert', 'Wilson', 45, 'Boston'),
('Jennifer', 'Martinez', 27, 'Miami'),
('William', 'Taylor', 38, 'Atlanta'),
('Jessica', 'Anderson', 33, 'Dallas'),
('Daniel', 'Thomas', 29, 'Philadelphia'),
('Maria', 'Jackson', 42, 'Phoenix'),
('James', 'White', 31, 'Denver'),
('Elizabeth', 'Harris', 36, 'Austin'),
('Christopher', 'Clark', 39, 'San Diego'),
('Amanda', 'Lewis', 26, 'Portland'),
('Matthew', 'Walker', 34, 'Detroit'),
('Ashley', 'Allen', 37, 'Las Vegas'),
('Joseph', 'Young', 41, 'Nashville'),
('Stephanie', 'Scott', 24, 'Orlando');
SELECT \* FROM People;
Output:
+-----------+-------------+-----------+-----+--------------+
| person_id | first_name | last_name | age | city |
+-----------+-------------+-----------+-----+--------------+
| 1 | John | Doe | 30 | New York |
| 2 | Jane | Smith | 25 | Los Angeles |
| 3 | Michael | Johnson | 40 | Chicago |
| 4 | Emily | Brown | 35 | Houston |
| 5 | David | Jones | 28 | San Francisco|
| 6 | Sarah | Davis | 32 | Seattle |
| 7 | Robert | Wilson | 45 | Boston |
| 8 | Jennifer | Martinez | 27 | Miami |
| 9 | William | Taylor | 38 | Atlanta |
| 10 | Jessica | Anderson | 33 | Dallas |
| 11 | Daniel | Thomas | 29 | Philadelphia |
| 12 | Maria | Jackson | 42 | Phoenix |
| 13 | James | White | 31 | Denver |
| 14 | Elizabeth | Harris | 36 | Austin |
| 15 | Christopher | Clark | 39 | San Diego |
| 16 | Amanda | Lewis | 26 | Portland |
| 17 | Matthew | Walker | 34 | Detroit |
| 18 | Ashley | Allen | 37 | Las Vegas |
| 19 | Joseph | Young | 41 | Nashville |
| 20 | Stephanie | Scott | 24 | Orlando |
+-----------+-------------+-----------+-----+--------------+
Updating Data in the Table
Update Based on Primary Key
To update a specific row, you can use the primary key as a condition.

UPDATE People
SET age = 40
WHERE person_id = 1;
SELECT \* FROM People;
This command updates the age of the person with person_id 1 to 40.

Output:

+-----------+-------------+-----------+-----+--------------+
| person_id | first_name | last_name | age | city |
+-----------+-------------+-----------+-----+--------------+
| 1 | John | Doe | 40 | New York |
| 2 | Jane | Smith | 25 | Los Angeles |
| 3 | Michael | Johnson | 40 | Chicago |
| 4 | Emily | Brown | 35 | Houston |
| 5 | David | Jones | 28 | San Francisco|
| 6 | Sarah | Davis | 32 | Seattle |
| 7 | Robert | Wilson | 45 | Boston |
| 8 | Jennifer | Martinez | 27 | Miami |
| 9 | William | Taylor | 38 | Atlanta |
| 10 | Jessica | Anderson | 33 | Dallas |
| 11 | Daniel | Thomas | 29 | Philadelphia |
| 12 | Maria | Jackson | 42 | Phoenix |
| 13 | James | White | 31 | Denver |
| 14 | Elizabeth | Harris | 36 | Austin |
| 15 | Christopher | Clark | 39 | San Diego |
| 16 | Amanda | Lewis | 26 | Portland |
| 17 | Matthew | Walker | 34 | Detroit |
| 18 | Ashley | Allen | 37 | Las Vegas |
| 19 | Joseph | Young | 41 | Nashville |
| 20 | Stephanie | Scott | 24 | Orlando |
+-----------+-------------+-----------+-----+--------------+
Update Based on Last Name
UPDATE People
SET city = 'Austin'
WHERE last_name = 'Smith';
SELECT \* FROM People;
This command updates the city of the person with the last name Smith to Austin.

Output:
+-----------+-------------+-----------+-----+--------------+
| person_id | first_name | last_name | age | city |
+-----------+-------------+-----------+-----+--------------+
| 1 | John | Doe | 40 | New York |
| 2 | Jane | Smith | 25 | Austin |
| 3 | Michael | Johnson | 40 | Chicago |
| 4 | Emily | Brown | 35 | Houston |
| 5 | David | Jones | 28 | San Francisco|
| 6 | Sarah | Davis | 32 | Seattle |
| 7 | Robert | Wilson | 45 | Boston |
| 8 | Jennifer | Martinez | 27 | Miami |
| 9 | William | Taylor | 38 | Atlanta |
| 10 | Jessica | Anderson | 33 | Dallas |
| 11 | Daniel | Thomas | 29 | Philadelphia |
| 12 | Maria | Jackson | 42 | Phoenix |
| 13 | James | White | 31 | Denver |
| 14 | Elizabeth | Harris | 36 | Austin |
| 15 | Christopher | Clark | 39 | San Diego |
| 16 | Amanda | Lewis | 26 | Portland |
| 17 | Matthew | Walker | 34 | Detroit |
| 18 | Ashley | Allen | 37 | Las Vegas |
| 19 | Joseph | Young | 41 | Nashville |
| 20 | Stephanie | Scott | 24 | Orlando |
+-----------+-------------+-----------+-----+--------------+
Update Age of All People Under 30
UPDATE People
SET age = 30
WHERE age < 30;
SELECT \* FROM People;
This command sets the age of all people under 30 to 30.

Output:
+-----------+-------------+-----------+-----+--------------+
| person_id | first_name | last_name | age | city |
+-----------+-------------+-----------+-----+--------------+
| 1 | John | Doe | 40 | New York |
| 2 | Jane | Smith | 30 | Austin |
| 3 | Michael | Johnson | 40 | Chicago |
| 4 | Emily | Brown | 35 | Houston |
| 5 | David | Jones | 30 | San Francisco|
| 6 | Sarah | Davis | 32 | Seattle |
| 7 | Robert | Wilson | 45 | Boston |
| 8 | Jennifer | Martinez | 30 | Miami |
| 9 | William | Taylor | 38 | Atlanta |
| 10 | Jessica | Anderson | 33 | Dallas |
| 11 | Daniel | Thomas | 30 | Philadelphia |
| 12 | Maria | Jackson | 42 | Phoenix |
| 13 | James | White | 31 | Denver |
| 14 | Elizabeth | Harris | 36 | Austin |
| 15 | Christopher | Clark | 39 | San Diego |
| 16 | Amanda | Lewis | 30 | Portland |
| 17 | Matthew | Walker | 34 | Detroit |
| 18 | Ashley | Allen | 37 | Las Vegas |
| 19 | Joseph | Young | 41 | Nashville |
| 20 | Stephanie | Scott | 30 | Orlando |
+-----------+-------------+-----------+-----+--------------+
Update Age of All People in a Specific City
UPDATE People
SET age = age + 1
WHERE city = 'New York';
SELECT \* FROM People;
This command increments the age of all people in New York by 1.

Output:
+-----------+-------------+-----------+-----+--------------+
| person_id | first_name | last_name | age | city |
+-----------+-------------+-----------+-----+--------------+
| 1 | John | Doe | 41 | New York |
| 2 | Jane | Smith | 30 | Austin |
| 3 | Michael | Johnson | 40 | Chicago |
| 4 | Emily | Brown | 35 | Houston |
| 5 | David | Jones | 30 | San Francisco|
| 6 | Sarah | Davis | 32 | Seattle |
| 7 | Robert | Wilson | 45 | Boston |
| 8 | Jennifer | Martinez | 30 | Miami |
| 9 | William | Taylor | 38 | Atlanta |
| 10 | Jessica | Anderson | 33 | Dallas |
| 11 | Daniel | Thomas | 30 | Philadelphia |
| 12 | Maria | Jackson | 42 | Phoenix |
| 13 | James | White | 31 | Denver |
| 14 | Elizabeth | Harris | 36 | Austin |
| 15 | Christopher | Clark | 39 | San Diego |
| 16 | Amanda | Lewis | 30 | Portland |
| 17 | Matthew | Walker | 34 | Detroit |
| 18 | Ashley | Allen | 37 | Las Vegas |
| 19 | Joseph | Young | 41 | Nashville |
| 20 | Stephanie | Scott | 30 | Orlando |
+-----------+-------------+-----------+-----+--------------+
Update First Name of People Whose Age is Greater than 35
UPDATE People
SET first_name = 'Senior'
WHERE age > 35;
SELECT \* FROM People;
This command changes the first_name of all people older than 35 to 'Senior'.

Output:
+-----------+-------------+-----------+-----+--------------+
| person_id | first_name | last_name | age | city |
+-----------+-------------+-----------+-----+--------------+
| 1 | Senior | Doe | 41 | New York |
| 2 | Jane | Smith | 30 | Austin |
| 3 | Senior | Johnson | 40 | Chicago |
| 4 | Emily | Brown | 35 | Houston |
| 5 | David | Jones | 30 | San Francisco|
| 6 | Sarah | Davis | 32 | Seattle |
| 7 | Senior | Wilson | 45 | Boston |
| 8 | Jennifer | Martinez | 30 | Miami |
| 9 | William | Taylor | 38 | Atlanta |
| 10 | Jessica | Anderson | 33 | Dallas |
| 11 | Daniel | Thomas | 30 | Philadelphia |
| 12 | Senior | Jackson | 42 | Phoenix |
| 13 | James | White | 31 | Denver |
| 14 | Elizabeth | Harris | 36 | Austin |
| 15 | Senior | Clark | 39 | San Diego |
| 16 | Amanda | Lewis | 30 | Portland |
| 17 | Matthew | Walker | 34 | Detroit |
| 18 | Ashley | Allen | 37 | Las Vegas |
| 19 | Senior | Young | 41 | Nashville |
| 20 | Stephanie | Scott | 30 | Orlando |
+-----------+-------------+-----------+-----+--------------+
Update Multiple Values in One Go
UPDATE People
SET first_name = 'Ashish', last_name = 'Jangra', age = 25, city = 'India'
WHERE person_id = 1;
SELECT \* FROM People;
This command updates multiple columns (first_name, last_name, age, city) for the person with person_id 1.

Output:
+-----------+-------------+-----------+-----+--------------+
| person_id | first_name | last_name | age | city |
+-----------+-------------+-----------+-----+--------------+
| 1 | Ashish | Jangra | 25 | India |
| 2 | Jane | Smith | 30 | Austin |
| 3 | Senior | Johnson | 40 | Chicago |
| 4 | Emily | Brown | 35 | Houston |
| 5 | David | Jones | 30 | San Francisco|
| 6 | Sarah | Davis | 32 | Seattle |
| 7 | Senior | Wilson | 45 | Boston |
| 8 | Jennifer | Martinez | 30 | Miami |
| 9 | William | Taylor | 38 | Atlanta |
| 10 | Jessica | Anderson | 33 | Dallas |
| 11 | Daniel | Thomas | 30 | Philadelphia |
| 12 | Senior | Jackson | 42 | Phoenix |
| 13 | James | White | 31 | Denver |
| 14 | Elizabeth | Harris | 36 | Austin |
| 15 | Senior | Clark | 39 | San Diego |
| 16 | Amanda | Lewis | 30 | Portland |
| 17 | Matthew | Walker | 34 | Detroit |
| 18 | Ashley | Allen | 37 | Las Vegas |
| 19 | Senior | Young | 41 | Nashville |
| 20 | Stephanie | Scott | 30 | Orlando |
+-----------+-------------+-----------+-----+--------------+
Conclusion
The UPDATE statement in SQL is a powerful tool for modifying existing data in a table. It allows you to update specific rows based on various conditions and can be used to change multiple columns in a single statement. By using these examples, you can see how versatile and essential the UPDATE statement is for maintaining and managing data in your database.

---

    						Delete data from a table

Deleting data from a database table is a fundamental operation in database management systems (DBMS). It involves removing one or more rows of data that match specified conditions from a table. This operation is crucial for maintaining data integrity, managing storage space, and ensuring data compliance with organizational or regulatory requirements.

Syntax and Example
The SQL DELETE statement is used to delete rows from a table based on specified criteria. Let's delve into the syntax and various examples to understand how it works.

Syntax:
DELETE FROM table_name
WHERE condition;
DELETE FROM specifies the table name from which data will be deleted.
WHERE clause (optional) specifies the conditions that must be met for rows to be deleted. If omitted, all rows in the table will be deleted.
Example: Deleting Based on person_id
-- Delete the person with person_id = 1
DELETE FROM People
WHERE person_id = 1;
SELECT \* FROM People;
In this example, the DELETE statement removes the row(s) from the People table where person_id equals 1. The subsequent SELECT statement shows the updated contents of the People table after the deletion.

Example: Deleting Based on age Condition
-- Delete all people under age 30
DELETE FROM People
WHERE age < 30;
SELECT \* FROM People;
Here, all rows in the People table where the age column is less than 30 are deleted. The SELECT statement verifies the changes made to the table.

Example: Deleting Based on city
-- Delete all people in Las Vegas
DELETE FROM People
WHERE city = 'Las Vegas';
SELECT \* FROM People;
This example deletes all rows from the People table where the city column value is 'Las Vegas'. The SELECT statement confirms the resulting state of the People table.

Example: Deleting Based on last_name Pattern
-- Delete people whose last name starts with 'W'
DELETE FROM People
WHERE last_name LIKE 'W%';
SELECT \* FROM People;
In this case, rows are deleted from the People table where the last_name column starts with the letter 'W'. The % wildcard in the LIKE operator matches any sequence of characters, making it useful for pattern-based deletions.

Example: Deleting All Rows
-- Delete all rows from the People table
DELETE FROM People;
SELECT \* FROM People;
This straightforward example deletes all rows from the People table without any conditions specified in the WHERE clause. After execution, the SELECT statement shows an empty table.

Considerations
Transaction Management: DELETE statements can be wrapped within transactions (BEGIN TRANSACTION, COMMIT, ROLLBACK) to ensure atomicity and consistency.
Performance: Large deletions can impact database performance and should be executed with caution, especially in production environments.
Data Integrity: Be mindful of foreign key constraints or cascading deletes that might affect related tables.
Conclusion
Deleting data from a table is a crucial operation in SQL, allowing for the removal of specific records or entire datasets as needed. Understanding the syntax and nuances of the DELETE statement is essential for effectively managing and manipulating data within a database system. Always exercise caution and test deletions in a controlled environment to avoid unintended data loss.

---

    						SQL in Action

In the world of database management, SQL (Structured Query Language) serves as a powerful tool for retrieving and manipulating data. Let's explore SQL in action through a series of queries on a sample dataset, demonstrating various functionalities and techniques.

Dataset Overview: Products Table
Consider a hypothetical dataset named products containing information about various products. Each product has attributes such as product_name, brand_name, marked_price, discounted_price, rating, rating_count, brand_tag, and product_tag.

Query Examples:
Displaying the Dataset
-- Show all columns from the products table
SELECT _ FROM products;
Selecting Specific Columns
-- Show only product_name and brand_name columns
SELECT product_name, brand_name FROM products;
Selecting Specific Columns in a Different Order
-- Show brand_name first, followed by product_name
SELECT brand_name, product_name FROM products;
Creating a New Column with Mathematical Functions (Discounted Amount)
-- Calculate discounted_amount as the difference between marked_price and discounted_price
SELECT product_name, brand_name, marked_price, discounted_price, marked_price - discounted_price AS discounted_amount
FROM products;
Creating a New Column with Mathematical Functions (Rating Filter)
-- Calculate rating_filter by multiplying rating and rating_count
SELECT product_name, brand_name, rating, rating_count, rating _ rating_count AS rating_filter
FROM products;
Creating a New Column with Mathematical Functions (Discount Percentage)
-- Calculate discounted_percent as the percentage discount
SELECT product_name, brand_name, marked_price, discounted_price, ((marked_price - discounted_price) / marked_price) \* 100 AS discounted_percent
FROM products;
Finding Unique Values
-- Find unique brand_names in the products table
SELECT DISTINCT(brand_name) AS unique_brands
FROM products;
Adding a WHERE Clause
-- Show products with marked_price and discounted_price from Adidas brand
SELECT product_name, brand_name, marked_price, discounted_price
FROM products
WHERE brand_tag = 'Adidas';
Using DISTINCT with WHERE (Unique Products Served by Adidas)
-- Show distinct product_tags associated with Adidas brand
SELECT DISTINCT(product_tag), brand_name
FROM products
WHERE brand_tag = 'Adidas';
Counting Distinct Values
-- Count distinct product_tags associated with Adidas brand
SELECT COUNT(DISTINCT(product_tag))
FROM products
WHERE brand_tag = 'Adidas';
Using Multiple Conditions with AND
-- Show Adidas products with discounted_price greater than 5000
SELECT product_name, brand_name, marked_price, discounted_price
FROM products
WHERE brand_tag = 'Adidas' AND discounted_price > 5000;

-- Show products with discounted_price between 5000 and 8000
SELECT product_name, brand_name, marked_price, discounted_price
FROM products
WHERE discounted_price BETWEEN 5000 AND 8000;
Adding More Filters
-- Show Adidas products with discounted_price between 5000 and 8000, rating > 4, and rating_count > 10
SELECT product_name, brand_tag, marked_price, discounted_price
FROM products
WHERE (discounted_price BETWEEN 5000 AND 8000)
AND brand_tag = 'Adidas'
AND rating > 4
AND rating_count > 10;
Using OR Condition
-- Show products from Adidas or Puma brands with discounted_price between 3000 and 5000
SELECT product_name, product_tag, brand_tag, discounted_price
FROM products
WHERE (brand_tag = 'Adidas' OR brand_tag = 'Puma') AND discounted_price BETWEEN 3000 AND 5000;
Using NOT Condition
-- Show products not from Adidas or Puma brands with discounted_price between 3000 and 5000
SELECT product_name, product_tag, brand_tag, discounted_price
FROM products
WHERE NOT (brand_tag = 'Adidas' OR brand_tag = 'Puma') AND discounted_price BETWEEN 3000 AND 5000;
Using IN Condition
-- Show products from Adidas or Puma brands with discounted_price between 3000 and 5000
SELECT product_name, product_tag, brand_tag, discounted_price
FROM products
WHERE brand_tag IN ('Adidas', 'Puma') AND discounted_price BETWEEN 3000 AND 5000;
Using NOT IN Condition
-- Show products not from Adidas or Puma brands with discounted_price between 3000 and 5000
SELECT product_name, product_tag, brand_tag, discounted_price
FROM products
WHERE brand_tag NOT IN ('Adidas', 'Puma') AND discounted_price BETWEEN 3000 AND 5000;
Conclusion
SQL provides a comprehensive set of tools for querying and manipulating data in relational databases. These examples illustrate how SQL queries can be used to retrieve specific information, perform calculations, filter data, and more. Understanding these functionalities empowers database administrators and analysts to efficiently manage and derive insights from their datasets, making SQL an indispensable skill in the realm of data management and analytics.

---

    						Pattern Matching

Pattern matching in SQL is a powerful feature that allows you to search for specific patterns within strings of text data. Whether you're looking for email addresses, phone numbers, names, or any other structured format, SQL provides mechanisms to efficiently find and manipulate such data. Let's explore how pattern matching works, its syntax, common operators, and examples of its practical applications.

Understanding LIKE Operator
The most basic form of pattern matching in SQL is through the LIKE operator. This operator allows you to match a string against a pattern using wildcard characters.

Wildcard Characters:
% (Percent): Matches any sequence of characters (including zero characters).

\_ (Underscore): Matches any single character.

Syntax of LIKE Operator:
SELECT column_name(s)
FROM table_name
WHERE column_name LIKE pattern;
Using Regular Expressions (REGEXP)
While LIKE is straightforward for basic pattern matching, SQL also supports regular expressions (REGEXP or RLIKE in some dialects) for more complex pattern matching tasks.

Syntax of REGEXP:
SELECT column_name(s)
FROM table_name
WHERE column_name REGEXP pattern;
Dataset Overview: Products Table
Assume, using similar dataset that we have used in previous module, in which we have a table named products with columns product_name and brand_name. Here's how we can use pattern matching queries to retrieve specific subsets of data from this table.

Example Queries:
Finding Products where Product Name Ends with 's'
-- Find the products where the product name ends with 's'
SELECT \*
FROM products
WHERE product_name LIKE '%s';
This query retrieves all products where the product_name ends with the letter 's'. The % wildcard matches any sequence of characters (including zero characters).

Finding Products where Brand Name Contains 'ad'
-- Find the products where the brand name contains 'ad'
SELECT \*
FROM products
WHERE brand_name LIKE '%ad%';
Here, %ad% matches any string that contains 'ad' anywhere within the brand_name.

Finding Products where Name Starts with 'P' and Ends with 'S'
-- Find the products where the brand name starts with 'P' and ends with 'S'
SELECT \*
FROM products
WHERE brand_name LIKE 'P%S';
This query looks for products where the brand_name starts with 'P' and ends with 'S'. The % wildcard can match any sequence of characters, including zero characters.

Finding Products where Product Name Starts with 'S'
-- Find the products where the product name starts with 'S'
SELECT \*
FROM products
WHERE product_name LIKE 'S%';
This query retrieves products where the product_name starts with the letter 'S'. Unlike the % wildcard, which matches any sequence of characters, using S% specifically looks for strings starting with 'S'.

Finding Products where Product Name Contains 'SHO'
-- Find the products where the product name contains 'SHO'
SELECT \*
FROM products
WHERE product_name LIKE '%SHO%';
Here, %SHO% matches any string that contains 'SHO' anywhere within the product_name. The case sensitivity depends on the SQL server's configuration.

Finding Products where Brand Name is Exactly 6 Characters Long
-- Find the products where the brand name is exactly 6 characters long
SELECT \*
FROM products
WHERE brand*name LIKE '**\_\_**';
In SQL, * (underscore) is used to match exactly one character. So, **\_\_** matches any string that is exactly 6 characters long.

Finding Products where the Second Character of Brand Name is 's'
-- Find the products where the second character of the brand name is 's'
SELECT \*
FROM products
WHERE brand*name LIKE '\_s%';
Here, \_s% matches any string where the second character of brand_name is 's'. The * wildcard matches exactly one character.

Practical Applications of Pattern Matching
Data Validation: Ensure that data entered into specific fields (like emails, phone numbers) conforms to expected patterns.
Data Extraction: Extracting structured data (like addresses, URLs) from unstructured text fields.
Data Cleansing: Identifying and correcting inconsistencies or errors in data by matching against expected patterns.
Data Analysis: Analyzing text data to identify trends or patterns based on specific criteria (like sentiment analysis based on word patterns).
Conclusion
Pattern matching in SQL, whether through the LIKE operator or regular expressions, is a versatile tool for querying and manipulating textual data within databases. It enables precise searches and validations that are crucial for data integrity, analysis, and application development. Mastering pattern matching techniques empowers SQL developers and analysts to handle diverse data challenges effectively, making it an essential skill in modern database management and data-driven decision-making processes.

---

    							Aggregate Functions

Aggregate functions in SQL are indispensable tools for data analysis and reporting. These functions perform calculations on a set of values and return a single value, allowing users to summarize and gain insights from their data. The most commonly used aggregate functions include COUNT(), AVG(), MAX(), MIN(), and SUM(). This article will delve into each of these functions, providing theoretical background and practical examples to illustrate their use.

1. COUNT(): Counting Rows
   The COUNT() function is used to count the number of rows in a table or the number of non-null values in a column.

Example: Finding the Number of Products in the Dataset
To find the total number of products in a dataset, the COUNT() function is used. This function counts the number of rows that match a specified criterion.

SELECT count(\*) as total_products FROM products;
The above query returns the total number of rows in the products table. The result will include all rows, regardless of whether any specific column is null.

SELECT count(product_name) as total_products FROM products;
This query counts the number of non-null product_name entries in the products table. If any product names are missing (null), they will not be included in the count.

2. AVG(): Calculating the Average
   The AVG() function calculates the average value of a numeric column.

Example: Finding the average discounted price of products.
SELECT AVG(discounted_price) AS average_price FROM products;
This query computes the average discounted price of all products by summing up all the discounted_price values and dividing by the number of non-null discounted_price values.

SELECT AVG(marked_price) AS average_price FROM products;
This query calculates the average marked price of all products in a similar manner.

3. MAX(): Finding the Maximum Value
   The MAX() function returns the highest value in a column.

Example: Finding the most expensive product.
SELECT MAX(discounted_price) AS highest_discounted_price FROM products;
This query returns the highest discounted price among all products.

SELECT MAX(marked_price) AS highest_marked_price FROM products;
This query returns the highest marked price among all products.

4. MIN(): Finding the Minimum Value
   The MIN() function returns the lowest value in a column.

Example: Finding the least expensive product.
SELECT MIN(discounted_price) AS lowest_discounted_price FROM products;
This query returns the lowest discounted price among all products.

SELECT MIN(marked_price) AS lowest_marked_price FROM products;
This query returns the lowest marked price among all products.

5. SUM(): Summing Values
   The SUM() function adds up all the values in a numeric column.

Example: Finding the total rating count of all products.
SELECT SUM(rating_count) AS total_rating FROM products;
This query calculates the total rating count of all products, providing insight into the cumulative rating numbers.

6. DISTINCT and COUNT(): Counting Unique Values
   The DISTINCT keyword can be used to return unique values in a column, and when combined with COUNT(), it counts the number of unique entries.

Example: Finding the total unique brands.
SELECT DISTINCT(brand_name) AS brands FROM products;
This query lists all unique brand names in the products table.

Example: Finding the number of unique brands.
SELECT COUNT(DISTINCT(brand_name)) AS total_brands FROM products;
This query returns the number of unique brand names in the products table.

---

    					Grouping and Filtering Data

Grouping data in SQL allows you to aggregate data based on one or more columns, making it possible to calculate summary statistics, such as counts, sums, averages, and more. The GROUP BY clause is used for this purpose.

Filtering data involves selecting specific rows that meet certain criteria. This can be done using the WHERE clause before aggregation or the HAVING clause after aggregation.

Grouping Data
The GROUP BY clause groups rows that have the same values in specified columns into summary rows. It is often used in conjunction with aggregate functions like COUNT, SUM, AVG, MAX, and MIN.

Syntax:
SELECT column1, column2, aggregate_function(column3)
FROM table_name
WHERE condition
GROUP BY column1, column2;
Dataset Overview: Products Table
Assume we have a products table with columns like product_name, brand_name, brand_tag, product_tag, rating, rating_count, marked_price, discounted_price, and discount_percent.

Using the Database and Viewing the Table
First, ensure you're using the correct database and view the data in the products table:

USE gfg;
SELECT \* FROM products;
Grouping Data Examples
Finding Unique Brand Names
SELECT DISTINCT brand_name FROM products;
This query retrieves all unique brand names from the products table.

Counting Unique Brands
SELECT COUNT(DISTINCT brand_name) FROM products;
This query returns the total number of unique brands.

Counting Products in Each Brand
SELECT brand_tag, COUNT(product_tag) FROM products GROUP BY brand_tag;
This query counts the number of products for each brand.

Top 5 Brands with the Most Products
SELECT brand_tag, COUNT(product_tag) AS 'products'
FROM products
GROUP BY brand_tag
ORDER BY products DESC
LIMIT 5;
This query lists the top 5 brands with the most products in their inventory.

Top 5 Brands with the Most Products Sold
SELECT brand_tag, SUM(rating_count) AS 'products_sold'
FROM products
GROUP BY brand_tag
ORDER BY products_sold DESC
LIMIT 5;
This query lists the top 5 brands that have sold the most products.

Top 5 Most Expensive Brands Based on Discounted Price
SELECT brand_tag, ROUND(AVG(discounted_price)) AS 'average_price'
FROM products
GROUP BY brand_tag
ORDER BY average_price DESC
LIMIT 5;
This query lists the top 5 most expensive brands based on the average discounted price of their products.

Top 5 Least Expensive Brands Based on Discounted Price
SELECT brand_tag, ROUND(AVG(discounted_price)) AS 'average_price'
FROM products
GROUP BY brand_tag
ORDER BY average_price ASC
LIMIT 5;
This query lists the top 5 least expensive brands based on the average discounted price of their products.

Filtering Data
Filtering data is essential for narrowing down the dataset to include only relevant rows.

Using the WHERE Clause:
The WHERE clause is used to filter rows before any grouping or aggregation is performed.

-- Select sales data for a specific product
SELECT product_id, quantity, price
FROM sales
WHERE product_id = 101;
Using the HAVING Clause:
The HAVING clause is used to filter groups after the GROUP BY operation. It is similar to the WHERE clause but is applied to aggregated data.

-- Calculate the total sales quantity for each product, and show only those with a total quantity greater than 100
SELECT product_id, SUM(quantity) AS total_quantity
FROM sales
GROUP BY product_id
HAVING SUM(quantity) > 100;
Finding Top 10 Best-Selling Product Categories
SELECT product_tag, SUM(rating_count) AS 'product_sold'
FROM products
GROUP BY product_tag
ORDER BY product_sold DESC
LIMIT 10;
This query lists the top 10 best-selling product categories based on the total number of ratings.

Top 5 Brands Offering Maximum Discount
SELECT brand_tag, AVG(discount_percent) AS 'avg_discount'
FROM products
GROUP BY brand_tag
ORDER BY avg_discount DESC
LIMIT 5;
This query lists the top 5 brands offering the highest average discount.

Top 5 Most Expensive Product Categories
SELECT product_tag, AVG(discounted_price) AS 'avg_price'
FROM products
GROUP BY product_tag
ORDER BY avg_price DESC
LIMIT 5;
This query lists the top 5 most expensive product categories based on the average discounted price.

Combining Grouping and Filtering
By combining WHERE, GROUP BY, and HAVING clauses, you can perform complex queries that aggregate and filter data simultaneously.

Brand Report Card
SELECT brand_tag,
SUM(rating_count) AS 'people_rated',
MIN(marked_price) AS 'min_mar_price',
AVG(marked_price) AS 'avg_mar_price',
MAX(marked_price) AS 'max_mar_price'
FROM products
GROUP BY brand_tag;
This query provides a summary report for each brand, including the total number of ratings, minimum, average, and maximum marked price.

Most Popular Product Category for Each Brand
SELECT brand_tag, product_tag, SUM(rating_count) AS 'people_rated'
FROM products
GROUP BY brand_tag, product_tag
ORDER BY people_rated DESC
LIMIT 10;
This query identifies the most popular product category for each brand based on the total number of ratings.

Specific Product Category Examples
Top 5 Brands Selling Most T-Shirts
SELECT brand_tag, product_tag, SUM(rating_count) AS 'orders', AVG(discounted_price) AS 'avg_price'
FROM products
WHERE product_tag = 'tshirts'
GROUP BY brand_tag
ORDER BY orders DESC
LIMIT 5;
Top 5 Brands Selling Most Shirts
SELECT brand_tag, product_tag, SUM(rating_count) AS 'orders', AVG(discounted_price) AS 'avg_price'
FROM products
WHERE product_tag = 'shirts'
GROUP BY brand_tag
ORDER BY orders DESC
LIMIT 5;
Top 5 Brands Selling Most Jeans
SELECT brand_tag, product_tag, SUM(rating_count) AS 'orders', AVG(discounted_price) AS 'avg_price'
FROM products
WHERE product_tag = 'jeans'
GROUP BY brand_tag
ORDER BY orders DESC
LIMIT 5;
Top 5 Brands Selling Most Dresses
SELECT brand_tag, product_tag, SUM(rating_count) AS 'orders', AVG(discounted_price) AS 'avg_price'
FROM products
WHERE product_tag = 'dresses'
GROUP BY brand_tag
ORDER BY orders DESC
LIMIT 5;
Advanced Grouping and Filtering
Most Popular Product Names
SELECT product_name, COUNT(product_name) AS 'name_count'
FROM products
GROUP BY product_name
ORDER BY name_count DESC
LIMIT 10;
Number of Products Sold for Each Rating
SELECT rating, COUNT(rating) AS 'freq'
FROM products
GROUP BY rating
ORDER BY rating ASC;
Number of Products Sold for Each Rating by Nike
SELECT rating, COUNT(rating) AS 'freq'
FROM products
WHERE brand_tag = 'nike'
GROUP BY rating
ORDER BY rating ASC;
Number of Products Sold for Each Rating in T-Shirt Category
SELECT rating, COUNT(rating_count) AS 'freq'
FROM products
WHERE product_tag = 'tshirts'
GROUP BY rating
ORDER BY rating ASC;
Relation Between T-Shirt Price and Rating
SELECT product_tag, rating, ROUND(AVG(rating_count)) AS 'product_count', ROUND(AVG(discounted_price))
FROM products
WHERE product_tag = 'tshirts'
GROUP BY rating
ORDER BY rating ASC;
Average Rating for Each Product Category
SELECT product_tag, AVG(rating) AS 'avg_rating', COUNT(\*) AS 'total_products', SUM(rating_count) AS 'total_rating_count'
FROM products
GROUP BY product_tag
ORDER BY avg_rating ASC;
Brand with Highest Average Rating for Products with Discounted Price > 5000
SELECT brand_tag, AVG(rating) AS 'avg_rating', SUM(rating_count)
FROM products
WHERE discounted_price > 5000
GROUP BY brand_tag
ORDER BY avg_rating DESC;

---

    					Working with Subqueries

In SQL, subqueries are a powerful feature that allow you to perform complex queries and achieve tasks that would be difficult or impossible with a single query. Subqueries, also known as inner queries or nested queries, are queries within another SQL query. This article will delve into the concept of subqueries, their types, and practical examples to help you master their use.

What is a Subquery?
A subquery is a query embedded within another SQL query. The result of the subquery is used by the outer query. Subqueries can be placed in various parts of a SQL statement, including the SELECT, FROM, WHERE, and HAVING clauses.

Types of Subqueries
Single-row Subqueries: Return a single row and are often used with comparison operators like =, >, <.

Multi-row Subqueries: Return multiple rows and are often used with operators like IN, ANY, ALL.

Scalar Subqueries: Return a single value and can be used wherever a single value is expected.

Correlated Subqueries: Refer to columns in the outer query and are executed once for each row selected by the outer query.

Dataset Overview: Products Table
Assume we have a products table with the following columns: product_id, product_name, brand_name, category, price, discount, rating, rating_count.

input_table
Input Table

Basic Query
Find the average rating of products.

SELECT AVG(rating) AS 'avg_rating' FROM gfg.products;
This query calculates the average rating of all products.

avg
query output

Subquery in WHERE Clause
Find the brand names with a rating higher than the average rating

SELECT brand_name FROM gfg.products
WHERE rating > (SELECT AVG(rating) AS 'avg_rating' FROM gfg.products);
Here, the subquery calculates the average rating of all products, and the outer query selects the brand names with a rating higher than this average.

where
query output

Subquery in SELECT Clause
Retrieve the product name along with the average rating of products.

SELECT product_name, rating,
(SELECT AVG(rating) FROM gfg.products) AS 'avg_rating'
FROM gfg.products;
The subquery calculates the average rating, and the outer query selects the product names along with their individual ratings and the overall average rating.

select
query output

Subquery with Multiple Results
Find the total rating count of products for each brand compared to the overall average rating count.

SELECT brand_name,
(SELECT SUM(rating_count) FROM gfg.products WHERE brand_name = p.brand_name) AS total_rating_count
FROM (SELECT DISTINCT brand_name FROM gfg.products) AS p;
The subquery calculates the total rating count for each brand, and the outer query compares it with the overall average rating count.

b
query output

Example 1: Single-row Subquery
Find the product with the highest price.

SELECT \* FROM products
WHERE price = (SELECT MAX(price) FROM products);
The subquery finds the highest price, and the outer query selects the product with that price.

c
query output

Example 2: Multi-row Subquery
Find products from brands that have at least one product with a price greater than $1000.

SELECT \* FROM products
WHERE brand_name IN (SELECT DISTINCT brand_name FROM products WHERE price > 1000);
The subquery finds all distinct brands with at least one product priced over $1000. The outer query selects products from these brands.

d
query output

Example 3: Scalar Subquery
Find the average price of all products and list products that have a price greater than this average.

SELECT \* FROM products
WHERE price > (SELECT AVG(price) FROM products);
The subquery calculates the average price, and the outer query selects products with a price greater than this average.

e
query output

Example 4: Correlated Subquery
Find products with a price greater than the average price of their respective category.

SELECT product_id, product_name, price, category
FROM products p1
WHERE price > (SELECT AVG(price) FROM products p2 WHERE p1.category = p2.category);
The subquery calculates the average price for each category, and the outer query selects products with a price higher than the average price of their category.

f
query output

Example 5: Subquery in FROM Clause
Find the average price of products for each brand.

SELECT brand_name, AVG(price) AS avg_price
FROM (SELECT brand_name, price FROM products) AS sub
GROUP BY brand_name;
The subquery retrieves brand names and prices, and the outer query calculates the average price for each brand.

g
query output

Example 6: Subquery in SELECT Clause
Find products and their price as a percentage of the most expensive product's price.

SELECT product_id, product_name, price,
(price / (SELECT MAX(price) FROM products)) \* 100 AS price_percentage
FROM products;
The subquery calculates the highest price, and the outer query calculates each product's price as a percentage of the highest price.

h
query output

---

    						Joins in Action

Joins in SQL are fundamental operations used to combine data from two or more tables based on a related column between them. They are essential for querying relational databases effectively. This section delves into the theoretical aspects of various types of joins, explaining how they work and when to use them.

Types of Joins in SQL
Inner Join
Left Join (Left Outer Join)
Right Join (Right Outer Join)
Full Outer Join
Cross Join
Self-Join
Database and Tables Setup
First, let's set up our database and tables.

SQL Commands:
DROP DATABASE IF EXISTS users;
CREATE DATABASE users;

CREATE TABLE IF NOT EXISTS users.users_2021 (UserID INT PRIMARY KEY, Name VARCHAR(50));
CREATE TABLE IF NOT EXISTS users.users_2022 (UserID INT PRIMARY KEY, Name VARCHAR(50));
CREATE TABLE IF NOT EXISTS users.users_2023 (UserID INT PRIMARY KEY, Name VARCHAR(50));

INSERT INTO users.users_2021 (UserID, Name) VALUES (1, 'Ashish'), (2, 'Laura'), (7, 'Prakash');
INSERT INTO users.users_2022 (UserID, Name) VALUES (1, 'Ashish'), (2, 'Laura'), (3, 'Charlie'), (4, 'Grace');
INSERT INTO users.users_2023 (UserID, Name) VALUES (1, 'Ashish'), (2, 'Laura'), (3, 'Charlie'), (4, 'Grace'), (5, 'Henry');
Table Data:
1
users_2021
2
users_2022
3
users_2023
Implementing Joins

1. Inner Join
   Definition: An inner join returns only the rows that have matching values in both tables. If there is no match, the rows are not included in the result.

Syntax:
SELECT columns
FROM table1
INNER JOIN table2
ON table1.common_column = table2.common_column;
Use Case: Use an inner join when you want to find records that have corresponding entries in both tables.

Example:
users_2021 and users_2022

SELECT \* FROM users.users_2021 AS t_2021
INNER JOIN users.users_2022 AS t_2022
ON t_2021.UserID = t_2022.UserID;
ex
query output

2. Left Join (Left Outer Join)
   Definition: A left join returns all rows from the left table and the matched rows from the right table. If there is no match, NULL values are returned for columns from the right table.

Syntax:
SELECT columns
FROM table1
LEFT JOIN table2
ON table1.common_column = table2.common_column;
Use Case: Use a left join when you want to include all records from the left table, regardless of whether they have a corresponding match in the right table.

Example:
users_2021 and users_2022

SELECT \* FROM users.users_2021 AS t_2021
LEFT JOIN users.users_2022 AS t_2022
ON t_2021.UserID = t_2022.UserID;
ex_1

3. Right Join (Right Outer Join)
   Definition: A right join returns all rows from the right table and the matched rows from the left table. If there is no match, NULL values are returned for columns from the left table.

Syntax:
SELECT columns
FROM table1
RIGHT JOIN table2
ON table1.common_column = table2.common_column;
Use Case: Use a right join when you want to include all records from the right table, regardless of whether they have a corresponding match in the left table.

Example:
users_2023 and users_2021

SELECT \* FROM users.users_2023 AS t_2023
RIGHT JOIN users.users_2021 AS t_2021
ON t_2023.UserID = t_2021.UserID;
ex_3

4. Full Outer Join
   Definition: A full outer join returns all rows when there is a match in either left or right table. Rows without matches in both tables will have NULLs.

Syntax:
SELECT columns
FROM table1
FULL OUTER JOIN table2
ON table1.common_column = table2.common_column;
Use Case: Use a full outer join when you want to include all records from both tables, regardless of whether they have a corresponding match in the other table.

Example:
users_2021 and users_2023

SELECT \* FROM users.users_2021 AS t_2021
FULL OUTER JOIN users.users_2023 AS t_2023
ON t_2021.UserID = t_2023.UserID;
ex_4
query output

5. Cross Join
   Definition: A cross join returns the Cartesian product of the two tables. This means every row from the first table is combined with every row from the second table.

Syntax:
SELECT columns
FROM table1
CROSS JOIN table2;
Use Case: Use a cross join when you want to combine all rows from two tables without any condition. This is useful for generating combinations of rows, such as creating test datasets.

Example:
users_2021 and users_2022

SELECT \* FROM users.users_2021 AS t_2021
CROSS JOIN users.users_2022 AS t_2022;
ex_5
query output

6. Self Join
   Definition: A self join is a regular join but the table is joined with itself. It can be any type of join, such as inner join, left join, etc.

Syntax:
SELECT a.columns, b.columns
FROM table a, table b
WHERE condition;
Use Case: Use a self join when you need to compare rows within the same table. This is often used for hierarchical data or when you need to compare rows to each other.

Example: users_2022
SELECT a.UserID, a.Name AS Name_A, b.Name AS Name_B
FROM users.users_2022 a
INNER JOIN users.users_2022 b
ON a.UserID = b.UserID;
q
query output

Combining Joins with UNION
The UNION operator is used to combine the result sets of two or more SELECT statements. Each SELECT statement within the UNION must have the same number of columns in the result sets with similar data types.

Syntax:
SELECT columns
FROM table1
LEFT JOIN table2
ON condition
UNION
SELECT columns
FROM table1
RIGHT JOIN table2
ON condition;
Use Case: Use UNION to combine results of multiple joins into a single result set. This is useful when you need a comprehensive view that includes results from different types of joins.

Example: users*2021 and users_2022
SELECT * FROM users.users*2021 AS t_2021
LEFT JOIN users.users_2022 AS t_2022
ON t_2021.UserID = t_2022.UserID
UNION
SELECT * FROM users.users_2021 AS t_2021
RIGHT JOIN users.users_2022 AS t_2022
ON t_2021.UserID = t_2022.UserID;
e
query output

---

    						Set Operators in Action

Set operators in SQL are powerful tools that allow you to perform operations on the results of two or more SELECT statements. These operators include UNION, UNION ALL, EXCEPT, and INTERSECT. They are used to combine the results from multiple queries into a single result set and provide various ways to handle duplicate rows, differences, and intersections between datasets.

Overview of Set Operators

1. UNION
   Combines the result sets of two or more SELECT statements and removes duplicate rows.

Syntax:
SELECT columns FROM table1
UNION
SELECT columns FROM table2;
Example:
Union removes duplicates, we are using the similar database users, which we have created previously in joins.

SELECT _ FROM users.users_2021
UNION
SELECT _ FROM users.users*2022;
1
query output
SELECT * FROM users.users*2021
UNION
SELECT * FROM users.users_2023;
2
query output

2. UNION ALL
   Combines the result sets of two or more SELECT statements without removing duplicates.

Syntax:
SELECT columns FROM table1
UNION ALL
SELECT columns FROM table2;
Example:
SELECT _ FROM users.users_2021
UNION ALL
SELECT _ FROM users.users_2022;
3
query output

3. EXCEPT
   Returns the rows from the first SELECT statement that are not in the second SELECT statement.

Syntax:
SELECT columns FROM table1
EXCEPT
SELECT columns FROM table2;
Example:
SELECT _ FROM users.users_2021
EXCEPT
SELECT _ FROM users.users*2022;
4
query output
SELECT * FROM users.users*2023
EXCEPT
SELECT * FROM users.users_2021;
5
query output

4. INTERSECT
   Returns only the rows that are common to both SELECT statements.

Syntax:
SELECT columns FROM table1
INTERSECT
SELECT columns FROM table2;
Example:
SELECT _ FROM users.users_2021
INTERSECT
SELECT _ FROM users.users*2022;
6
query output
SELECT * FROM users.users*2022
INTERSECT
SELECT * FROM users.users_2023;
7
query output
Combining Multiple Set Operators
You can combine multiple set operators to create complex queries. Note that UNION and UNION ALL can be combined, but the use of parentheses ensures the correct order of operations when combining multiple operators.

SELECT _ FROM users.users_2021
UNION ALL
SELECT _ FROM users.users_2022
UNION
SELECT \* FROM users.users_2023;
8
query output

Practical Examples with Set Operators

1. List the New Users Added in 2022
   SELECT _ FROM users.users_2022
   EXCEPT
   SELECT _ FROM users.users_2021;
   1
   query output

2. List the new users added in 2023
   SELECT _ from users.users_2023
   EXCEPT
   SELECT _ from users.users_2022;
   2
   query output

3. List the users who left us
   SELECT _ FROM users.users_2021
   EXCEPT
   SELECT _ FROM users.users_2022
   EXCEPT
   SELECT \* FROM users.users_2023;
   3
   query output

4. List All the Users That Were There Throughout the Database for 2021 & 2022
   SELECT _ FROM users.users_2022
   UNION
   SELECT _ FROM users.users_2021;
   4
   query output

5. List All the Users That Are There Throughout the Database
   SELECT _ FROM users.users_2021
   UNION
   SELECT _ FROM users.users_2022
   UNION
   SELECT \* FROM users.users_2023;
   5
   query output

6. List the Users That Are There With Us for the Last 3 Years
   SELECT _ FROM users.users_2021
   INTERSECT
   SELECT _ FROM users.users_2022
   INTERSECT
   SELECT \* FROM users.users_2023;
   6
   query output

7. List All Users Except Those Who Are There With Us for 3 Years
   SELECT _ FROM users.users_2021
   UNION
   SELECT _ FROM users.users*2022
   UNION
   SELECT * FROM users.users*2023
   EXCEPT
   SELECT * FROM users.users*2021
   INTERSECT
   SELECT * FROM users.users*2022
   INTERSECT
   SELECT * FROM users.users_2023;
   7
   query output
8. Operators with Join
   You can also use set operators with joins between tables. Here are examples of combining set operators with joins.

9. Operators with Left Join between users_2021 and users_2022
   SELECT \* FROM users.users_2021 as t_2021
   LEFT JOIN users.users_2022 as t_2022
   on t_2021.UserID = T_2022.UserID
10. Operators with Right Join between users_2021 and users_2022
    SELECT \* FROM users.users_2021 as t_2021
    RIGHT JOIN users.users_2022 as t_2022
    on t_2021.UserID = T_2022.UserID
11. Using Set Operators with Joins
    SELECT _ FROM users.users_2021 as t_2021 LEFT JOIN users.users_2022 as t_2022 on t_2021.UserID = T_2022.UserID
    UNION
    SELECT _ FROM users.users_2021 as t_2021 RIGHT JOIN users.users_2022 as t_2022 on t_2021.UserID = T_2022.Use

---

    				Restaurant Data Analysis with SQL - Assignment

Welcome to the restaurant analysis assignment using SQL! In this exercise, we'll use the swiggy database, focusing on the restaurants table. Below are the tasks you need to perform by writing the required queries. Try to solve the queries on your own before moving to the solutions provided at the end.

Assignment Questions
Which restaurant in Abohar is visited by the least number of people?
Which restaurant has generated maximum revenue all over India?
How many restaurants have a rating higher than the average rating?
Which restaurant in Delhi has generated the most revenue?
Which restaurant chain has the maximum number of restaurants?
Which restaurant chain has generated the maximum revenue?
Which city has the maximum number of restaurants?
Which city has generated the maximum revenue all over India?
List the 10 least expensive cuisines.
List the 10 most expensive cuisines.
What city has Biryani as the most popular cuisine?
List the top 10 unique restaurants with unique names throughout the dataset as per maximum revenue generated (single restaurant with that name).
Try to solve these queries by yourself before moving to the solution section below.

Solution Query Explanation

1. Which restaurant of Abohar is visited by the least number of people?
   SELECT \* FROM restaurants
   WHERE city = 'Abohar' AND rating_count = (SELECT MIN(rating_count) FROM restaurants WHERE city = 'Abohar');
   This query selects the restaurant in Abohar with the minimum rating_count, which represents the least number of people visited.

2. Which restaurant has generated maximum revenue all over India?
   SELECT _ FROM restaurants
   WHERE cost _ rating_count = (SELECT MAX(cost \* rating_count) FROM restaurants);
   Here, the query identifies the restaurant that has generated the highest revenue across all cities by multiplying cost and rating_count.

3. How many restaurants are having a rating more than the average rating?
   SELECT \* FROM restaurants
   WHERE rating > (SELECT AVG(rating) FROM restaurants);
   This query counts all restaurants with a rating higher than the average rating.

4. Which restaurant of Delhi has generated the most revenue?
   SELECT _ FROM restaurants
   WHERE city = 'Delhi' AND cost _ rating_count = (SELECT MAX(cost \* rating_count) FROM restaurants WHERE city = 'Delhi');
   It identifies the restaurant in Delhi with the highest revenue by multiplying cost and rating_count.

5. Which restaurant chain has the maximum number of restaurants?
   SELECT name, COUNT(name) AS no_of_chains
   FROM restaurants
   GROUP BY name
   ORDER BY no_of_chains DESC
   LIMIT 10;
   This query lists the top 10 restaurant chains by the number of restaurants they operate.

6. Which restaurant chain has generated maximum revenue?
   SELECT name, SUM(rating*count * cost) AS revenue
   FROM restaurants
   GROUP BY name
   ORDER BY revenue DESC
   LIMIT 10;
   It identifies the top 10 restaurant chains by the total revenue generated, calculated as the sum of rating*count * cost.

7. Which city has the maximum number of restaurants?
   SELECT city, COUNT(\*) AS no_of_restaurants
   FROM restaurants
   GROUP BY city
   ORDER BY no_of_restaurants DESC
   LIMIT 10;
   This query determines the top 10 cities with the most restaurants.

8. Which city has generated maximum revenue all over India?
   SELECT city, SUM(rating*count * cost) AS revenue
   FROM restaurants
   GROUP BY city
   ORDER BY revenue DESC
   LIMIT 10;
   It identifies the top 10 cities by total revenue generated from all restaurants, calculated as rating*count * cost.

9. List 10 least expensive cuisines?
   SELECT cuisine, AVG(cost) AS avg_cost
   FROM restaurants
   GROUP BY cuisine
   ORDER BY avg_cost ASC
   LIMIT 10;
   This query lists the 10 cuisines with the lowest average cost across all restaurants.

10. List 10 most expensive cuisines?
    SELECT cuisine, AVG(cost) AS avg_cost
    FROM restaurants
    GROUP BY cuisine
    ORDER BY avg_cost DESC
    LIMIT 10;
    It lists the 10 cuisines with the highest average cost across all restaurants.

11. What city has Biryani as the most popular cuisine?
    SELECT city, AVG(cost), COUNT(\*) AS restaurants
    FROM restaurants
    WHERE cuisine = 'Biryani'
    GROUP BY city
    ORDER BY restaurants DESC;
    This query determines which city has the highest number of restaurants offering Biryani as a cuisine.

12. List top 10 unique restaurants with unique names throughout the dataset as per maximum revenue (Single restaurant with that name)
    SELECT name, SUM(cost _ rating_count) AS revenue
    FROM restaurants
    GROUP BY name
    HAVING COUNT(name) = 1
    ORDER BY revenue DESC
    LIMIT 10;
    It lists the top 10 unique restaurants with distinct names that have generated the highest revenue, calculated as cost _ rating_count.

These queries cover a range of analytical tasks from finding specific restaurant metrics to aggregating data by cities, cuisines, and restaurant chains. Understanding and practicing these queries will enhance your SQL proficiency for data analysis in various domains.

---

                                    Analyzing query execution plans

Understanding how SQL queries are executed is essential for optimizing performance and ensuring accurate results. In this article, we'll explore the order of execution of SQL queries using examples from the messy_indian_dataset. This will help you grasp the sequence in which SQL processes various components of a query.

Understanding how SQL queries are executed is essential for optimizing performance and ensuring accurate results. In this article, we'll explore the order of execution of SQL queries using examples from the messy_indian_dataset. This will help you grasp the sequence in which SQL processes various components of a query.

Example Queries and Their Execution Steps
Let's delve into several SQL queries and break down the execution steps for each.

Query 1: Simple SELECT Statement
SELECT name, city
FROM messy_indian_dataset;
Execution Steps:
FROM Clause: Identifies the source table (messy_indian_dataset) from which data will be retrieved.
SELECT Clause: Specifies the columns (name and city) to include in the result set.
Query 2: SELECT with WHERE Clause
SELECT name, city, purchase_amount
FROM messy_indian_dataset
WHERE purchase_amount > 1000;
Execution Steps:
FROM Clause: Identifies the source table (messy_indian_dataset).
WHERE Clause: Filters rows where purchase_amount is greater than 1000.
SELECT Clause: Specifies the columns (name, city, purchase_amount) to include in the result set.
Query 3: SELECT with WHERE and ORDER BY Clauses
SELECT name, city, purchase_amount
FROM messy_indian_dataset
WHERE purchase_amount > 1000
ORDER BY purchase_amount DESC;
Execution Steps:
FROM Clause: Identifies the source table (messy_indian_dataset).
WHERE Clause: Filters rows where purchase_amount is greater than 1000.
ORDER BY Clause: Sorts the result set based on purchase_amount in descending order.
SELECT Clause: Specifies the columns (name, city, purchase_amount) to include in the result set.
Query 4: SELECT with GROUP BY Clause
SELECT city, AVG(purchase_amount) AS avg_purchase
FROM messy_indian_dataset
GROUP BY city;
Execution Steps:
FROM Clause: Identifies the source table (messy_indian_dataset).
GROUP BY Clause: Groups rows by the city column.
SELECT Clause: Computes the average purchase_amount for each city and includes city and avg_purchase in the result set.
Query 5: SELECT with GROUP BY and HAVING Clauses
SELECT city, AVG(purchase_amount) AS avg_purchase
FROM messy_indian_dataset
GROUP BY city
HAVING AVG(purchase_amount) > 1000;
Execution Steps:
FROM Clause: Identifies the source table (messy_indian_dataset).
GROUP BY Clause: Groups rows by the city column.
HAVING Clause: Filters groups where the average purchase_amount is greater than 1000.
SELECT Clause: Computes the average purchase_amount for each city and includes city and avg_purchase in the result set.
Query 6: SELECT with JOIN
SELECT m.name, m.city, s.region
FROM messy_indian_dataset m
JOIN states s ON m.state = s.state;
Execution Steps:
FROM Clause: Specifies the source tables (messy_indian_dataset as m and states as s) for data retrieval.
JOIN: Joins rows from messy_indian_dataset (m) with states (s) based on matching state values.
SELECT Clause: Specifies the columns (name, city from m and region from s) to include in the result set.
Query 7: Nested SELECT (Subquery)
SELECT name, city, purchase_amount
FROM messy_indian_dataset
WHERE purchase_amount > (SELECT AVG(purchase_amount) FROM messy_indian_dataset);
Execution Steps:
Subquery (FROM Clause): Executes the inner query to calculate the average purchase_amount across all records in messy_indian_dataset.
FROM Clause: Identifies the source table (messy_indian_dataset).
WHERE Clause: Filters rows where purchase_amount is greater than the average purchase_amount obtained from the subquery.
SELECT Clause: Specifies the columns (name, city, purchase_amount) to include in the result set.
Final Thoughts on Order of Execution
Understanding the order of SQL query execution is critical for writing efficient and effective queries. The sequence typically follows:

FROM: Determines the source tables and joins if any.
WHERE: Applies row filtering.
GROUP BY: Groups rows by specified columns.
HAVING: Applies group filtering.
SELECT: Determines which columns to include in the final result set.
ORDER BY: Sorts the result set.
LIMIT: Restricts the number of rows in the result set.
By mastering these execution steps, SQL developers and analysts can optimize query performance and achieve accurate results from their data.

---

                                    Query Optimisation Techniques

Query optimization is a critical aspect of database management that aims to improve query performance by minimizing execution time and resource consumption. In SQL, various techniques can be employed to optimize queries, ranging from proper indexing to restructuring queries for efficiency.

Understanding Query Optimization
Query optimization involves transforming queries in such a way that they can be executed more efficiently by the database engine. This process typically focuses on reducing the number of operations performed, optimizing access paths to data, and utilizing resources more effectively. By optimizing queries, you can achieve faster response times, reduce server load, and improve overall system performance.

Common Query Optimization Techniques

1. Avoid Accessing Unnecessary Data
   Accessing unnecessary data can degrade query performance and increase network traffic. It's essential to retrieve only the required columns and rows using SELECT statements, especially when dealing with large datasets.

Examples:
-- Retrieve all columns (Avoid)
SELECT \* FROM messy_indian_dataset;

-- Retrieve specific columns
SELECT id, name, city, purchase_amount FROM messy_indian_dataset;
-- Retrieve specific columns with a filter and limit
SELECT id, name, city, purchase_amount
FROM messy_indian_dataset
WHERE purchase_amount > 1000
LIMIT 5;
-- Retrieve specific columns with calculations
SELECT id, name, city, purchase_amount, purchase_amount \* 1.18 AS 'price with gst'
FROM messy_indian_dataset
WHERE purchase_amount > 1000
LIMIT 5; 2. Use the Right Kind of JOIN
Choosing the appropriate join type can significantly impact query performance. Use INNER JOIN, LEFT JOIN, RIGHT JOIN, or FULL OUTER JOIN based on the relationship between tables and the desired result set.

Example:
SELECT \*
FROM table1
INNER JOIN table2 ON table1.column = table2.column; 3. Use of Appropriate Data Types
Using correct data types for columns helps in reducing storage space and optimizing query performance. Choose data types that best fit the data being stored (e.g., INT, VARCHAR, TEXT, etc.).

Examples:
-- Example of using VARCHAR for short descriptions
CREATE TABLE customer_correct (
id INT,
name VARCHAR(50),
description VARCHAR(255)
);

-- Example of using TEXT for longer descriptions
CREATE TABLE customer_correct (
id INT,
name VARCHAR(50),
description TEXT
); 4. Query Execution Plans
Understanding and analyzing query execution plans can provide insights into how queries are processed by the database engine. This helps in identifying inefficiencies and optimizing queries accordingly.

Example:
-- Explain the query execution plan
EXPLAIN SELECT id, name, city, purchase_amount
FROM messy_indian_dataset
WHERE purchase_amount > 1000; 5. Caching
Caching query results can improve performance by reducing the need to recompute the same result set repeatedly. This is particularly effective for queries that are executed frequently but return relatively static data.

Example:
-- Cache query results
SELECT SQL_CACHE id, name, city, purchase_amount
FROM messy_indian_dataset
WHERE purchase_amount > 1000; 6. Use of Temporary Tables
Temporary tables can be used to store intermediate results of complex queries, reducing the need to repeat computations or access large datasets multiple times.

Examples:
-- Create a temporary table with high purchase amounts
CREATE TEMPORARY TABLE high_purchase AS (
SELECT id, name, city, purchase_amount
FROM messy_indian_dataset
WHERE purchase_amount > 1000
);

-- Query the temporary table with a filter
SELECT \*
FROM high_purchase
WHERE city = 'Mumbai';

-- Query specific columns from the temporary table
SELECT id, name, city, purchase_amount
FROM high_purchase
WHERE city = 'Mumbai';

---

                                                    Table Partitioning

Table partitioning is a powerful database design technique used to improve query performance, manage large datasets efficiently, and enhance data availability and maintenance. This article explores the concept of table partitioning in SQL databases, its benefits, implementation strategies, and practical examples.

What is Table Partitioning?
Table partitioning involves splitting a large table into smaller, more manageable pieces called partitions. Each partition holds a subset of data based on a predefined criterion, such as a range of values in a column (e.g., dates, IDs) or a list of specific values. This technique allows queries and data management operations to target specific partitions, rather than the entire table, which can significantly improve performance.

Benefits of Table Partitioning
Improved Query Performance: Queries that access specific partitions can be processed faster because the database engine only needs to scan or manipulate relevant data subsets.

Efficient Data Maintenance: Operations such as data insertion, deletion, and updates can be performed more efficiently on smaller partitions, reducing the overhead on the entire table.

Enhanced Data Availability: Partitioning can improve availability by allowing individual partitions to be managed separately. This can simplify tasks such as backup, restore, and recovery.

Scalability: Partitioning supports horizontal scalability by facilitating the distribution of data across multiple storage devices or servers, which can improve overall system performance.

Types of Table Partitioning
Range Partitioning: Data is partitioned based on ranges defined by a column’s values (e.g., dates, numeric ranges).
List Partitioning: Data is partitioned based on discrete values specified in a column (e.g., states, categories).
Hash Partitioning: Data is distributed across partitions based on a hash function applied to one or more columns. This aims to evenly distribute data without predefined ranges.
Composite Partitioning: Combines multiple partitioning methods, such as range-hash or range-list, to meet specific data distribution and querying needs.
Implementing Table Partitioning

1. Range Partitioning
   Range partitioning divides data based on ranges defined by a column's values, such as dates. It's useful for time-series data or when data is logically grouped by periods.

-- Creating a range-partitioned table by year
DROP TABLE IF EXISTS partitioned_dataset;
CREATE TABLE partitioned_dataset (
id INT,
name VARCHAR(50),
city VARCHAR(50),
purchase_amount DECIMAL(10, 2),
purchase_date DATE
)
PARTITION BY RANGE (YEAR(purchase_date)) (
PARTITION p0 VALUES LESS THAN (2020),
PARTITION p1 VALUES LESS THAN (2021),
PARTITION p2 VALUES LESS THAN (2022),
PARTITION p3 VALUES LESS THAN (2023),
PARTITION p4 VALUES LESS THAN (2024)
);

-- Example query: Retrieving data for the year 2022
SELECT name, city, purchase_amount
FROM partitioned_dataset
WHERE purchase_date BETWEEN '2022-01-01' AND '2022-12-31';
Explanation:
Partitioning Definition: The partitioned_dataset table is created with PARTITION BY RANGE (YEAR(purchase_date)), which specifies that the table is partitioned based on the year extracted from the purchase_date column.
Partition Definition: Five partitions (p0 to p4) are defined using VALUES LESS THAN. Each partition contains data where the purchase_date falls within specific years (e.g., p0 for dates before 2020, p1 for dates in 2020, and so on).
Query Execution: The query SELECT name, city, purchase_amount FROM partitioned_dataset WHERE purchase_date BETWEEN '2022-01-01' AND '2022-12-31' retrieves data from the partitioned_dataset table for the year 2022. The database engine optimizes performance by accessing only the relevant partition (p2 for 2022 data), avoiding unnecessary scanning of other partitions. 2. List Partitioning
List partitioning categorizes data into partitions based on discrete values in a specified column. It's ideal for scenarios where data is grouped by predefined categories.

-- Creating a list-partitioned table by city
DROP TABLE IF EXISTS partitioned_dataset;
CREATE TABLE partitioned_dataset (
id INT,
name VARCHAR(50),
city VARCHAR(50),
purchase_amount DECIMAL(10, 2),
purchase_date DATE,
city_code INT GENERATED ALWAYS AS (
CASE
WHEN city = 'Mumbai' THEN 1
WHEN city = 'Delhi' THEN 2
WHEN city = 'Bangalore' THEN 3
WHEN city IN ('Kolkata', 'Chennai', 'Hyderabad', 'Pune') THEN 4
ELSE NULL
END
) STORED
)
PARTITION BY LIST (city_code) (
PARTITION p_mumbai VALUES IN (1),
PARTITION p_delhi VALUES IN (2),
PARTITION p_bangalore VALUES IN (3),
PARTITION p_other VALUES IN (4)
);

-- Example query: Retrieving data for Mumbai
SELECT name, purchase_amount
FROM partitioned_dataset
WHERE city = 'Mumbai';
Explanation:
Partitioning Definition: The partitioned_dataset table is created with PARTITION BY LIST (city_code), where city_code is generated based on the city column using a CASE statement. This defines the list of partitions (p_mumbai, p_delhi, p_bangalore, and p_other) based on specific city_code values.
Partition Definition: Each partition is associated with a specific city_code value, ensuring that data for each city (Mumbai, Delhi, Bangalore, others) is stored in its respective partition.
Query Execution: The query SELECT name, purchase_amount FROM partitioned_dataset WHERE city = 'Mumbai' retrieves data for Mumbai from the partitioned_dataset. The database engine efficiently accesses the p_mumbai partition, optimizing query performance by focusing only on the partition containing Mumbai's data. 3. Hash Partitioning
Hash partitioning distributes data across partitions based on a hash function applied to a specified column. It evenly distributes data and is beneficial for load balancing.

-- Creating a hash-partitioned table by id
DROP TABLE IF EXISTS partitioned_dataset;
CREATE TABLE partitioned_dataset (
id INT,
name VARCHAR(50),
city VARCHAR(50),
purchase_amount DECIMAL(10, 2),
purchase_date DATE
)
PARTITION BY HASH(id) PARTITIONS 4;

-- Example query: Retrieving data for a specific id
SELECT name, city, purchase_amount
FROM partitioned_dataset
WHERE id = 12345;
Explanation:
Partitioning Definition: The partitioned_dataset table is created with PARTITION BY HASH(id) PARTITIONS 4, which specifies that the table is hash-partitioned based on the id column into 4 partitions.
Data Distribution: The hash function distributes rows across partitions based on the result of HASH(id), ensuring an even distribution of data across the partitions.
Query Execution: The query SELECT name, city, purchase_amount FROM partitioned_dataset WHERE id = 12345 retrieves data for a specific id from the partitioned_dataset. The database engine optimizes performance by directly accessing the partition containing data for the specified id, leveraging the hash partitioning scheme. 4. Subpartitioning
Subpartitioning combines range or list partitioning with hash partitioning for finer granularity. It's useful for further optimizing data distribution and query performance.

-- Creating a range-partitioned table with hash subpartitioning
DROP TABLE IF EXISTS partitioned_dataset;
CREATE TABLE partitioned_dataset (
id INT,
name VARCHAR(50),
city VARCHAR(50),
purchase_amount DECIMAL(10, 2),
purchase_date DATE
)
PARTITION BY RANGE (YEAR(purchase_date))
SUBPARTITION BY HASH(id) SUBPARTITIONS 4 (
PARTITION p0 VALUES LESS THAN (2020),
PARTITION p1 VALUES LESS THAN (2021),
PARTITION p2 VALUES LESS THAN (2022),
PARTITION p3 VALUES LESS THAN (2023),
PARTITION p4 VALUES LESS THAN (2024)
);

-- Example query: Retrieving data for the year 2022
SELECT name, city, purchase_amount
FROM partitioned_dataset
WHERE purchase_date BETWEEN '2022-01-01' AND '2022-12-31';
Explanation:
Partitioning Definition: The partitioned_dataset table is created with PARTITION BY RANGE (YEAR(purchase_date)) for range partitioning by year. It also uses SUBPARTITION BY HASH(id) SUBPARTITIONS 4 to define hash subpartitions within each range partition.
Partition and Subpartition Definition: The table partitions (p0 to p4) are defined based on the YEAR(purchase_date). Within each range partition, data is further divided into hash subpartitions (4 subpartitions in total), ensuring balanced data distribution and optimized query processing.
Query Execution: The query SELECT name, city, purchase_amount FROM partitioned_dataset WHERE purchase_date BETWEEN '2022-01-01' AND '2022-12-31' retrieves data for the year 2022 from the partitioned_dataset. The database engine efficiently accesses the relevant range partition (p2 for 2022 data) and its hash subpartitions, minimizing query execution time and resource consumption.
Conclusion
Table partitioning is a versatile technique in SQL for improving query performance and managing large datasets effectively. By leveraging range, list, hash, and subpartitioning strategies, database administrators can optimize data storage, enhance query execution times, and streamline database maintenance tasks.

---

                                                    Indexing in SQL

Indexing in SQL is similar to creating a detailed table of contents for a book, enabling the database management system (DBMS) to quickly locate specific rows within a table. It works by creating a structured data structure (the index) that allows for efficient lookup operations based on the values of one or more columns.

How Does Indexing Work?
Imagine a scenario where you need to find all employees with a specific last name in a large company database. Without an index, the DBMS would potentially need to scan every row of the employees table sequentially, which becomes inefficient as the dataset grows. With an index on the last_name column, however, the DBMS can swiftly locate the rows matching the specified last name by directly accessing the index.

Types of Indexes in SQL
SQL databases support several types of indexes, each suited for different data access patterns and query requirements:

Primary Index: Automatically created when defining a primary key constraint. It uniquely identifies each row in a table, facilitating fast retrieval of specific rows.
Unique Index: Ensures that all values in the indexed column(s) are unique. It speeds up searches for unique values and also supports fast lookups.
Non-Unique Index: Allows duplicate values in the indexed column(s) but still speeds up data retrieval operations.
Composite Index: Combines multiple columns into a single index, useful for queries that filter or sort data using multiple columns.
Clustered vs. Non-Clustered Index:
Clustered Index: Organizes the physical order of rows in the table based on the indexed column(s). Each table can have only one clustered index.
Non-Clustered Index: Stores the index separate from the actual data rows, allowing for more flexibility but typically requiring an additional lookup step to retrieve row data.
Benefits of Indexing
Improved Query Performance: Indexes reduce the number of data pages the DBMS needs to read to satisfy a query, resulting in faster data retrieval.
Faster Sorting and Grouping: Indexes can accelerate sorting and grouping operations by providing pre-sorted views of data.
Enhanced Data Integrity: Unique and primary key indexes enforce data integrity by preventing duplicate or null entries in specified columns.
Optimized Joins: Indexes facilitate efficient join operations between tables by reducing the amount of data that needs to be scanned.

1. Simple Index
   create index idx_city on messy_indian_dataset(city);

-- Query using the index
select name, city, purchase_amount
from messy_indian_dataset
where city = 'Mumbai';
Explanation:
Index Creation (create index idx_city on messy_indian_dataset(city)):
This query creates a simple index named idx_city on the city column of the messy_indian_dataset table.
Indexes are data structures that allow the database system to quickly retrieve rows based on the indexed columns. They enhance query performance for columns frequently used in WHERE, JOIN, and ORDER BY clauses.
Query Execution (select ... where city = 'Mumbai'):
The WHERE clause filters rows where the city column equals 'Mumbai'.
With the idx_city index on city, the database can efficiently locate and retrieve rows matching this condition. It does this by directly accessing the index structure rather than scanning the entire table. 2. Composite Index
-- Drop existing index if it exists
drop index idx_city on messy_indian_dataset;

-- Create a composite index on the
and
columns
create index idx_city on messy_indian_dataset(city, gender);

-- Query using the composite index
select name, city, purchase_amount
from messy_indian_dataset
where city = 'Mumbai';
Explanation:
Composite Index Creation (create index idx_city on messy_indian_dataset(city, gender)):
This query creates a composite index named idx_city on the city and gender columns of the messy_indian_dataset table.
Composite indexes are useful when queries involve multiple columns in conditions, such as WHERE or JOIN clauses involving both city and gender. They are particularly effective when these columns are queried together.
Query Execution (select ... where city = 'Mumbai'):
The query filters rows where the city column equals 'Mumbai'.
The composite index idx_city can still be leveraged efficiently for this query despite gender not being used directly in the WHERE clause. It allows for rapid access to rows matching the specified city. 3. Unique Index
-- Drop existing index if it exists
drop index idx_city on messy_indian_dataset;

-- Create a unique index on the
column
create unique index idx_city on messy_indian_dataset(id);

-- Query using the unique index
select name, city, purchase_amount
from messy_indian_dataset
where city = 'Mumbai';
Explanation:
Unique Index Creation (create unique index idx_city on messy_indian_dataset(id)):
This query creates a unique index named idx_city on the id column of the messy_indian_dataset table.
Unique indexes enforce uniqueness on the indexed column(s), ensuring that no two rows can have the same id value.
Query Execution (select ... where city = 'Mumbai'):
The query filters rows where the city column equals 'Mumbai'.
Despite the unique index being on the id column, it does not directly impact the execution of this query because the WHERE clause does not involve the id column. The database optimizer will primarily use other available indexes or perform a full table scan. 4. Full-Text Index
-- Drop existing index if it exists
drop index idx_city on messy_indian_dataset;

-- Create a full-text index on the
and
columns
create fulltext index idx_city on messy_indian_dataset(name, email);

-- Query using the full-text index for full-text search
select name, city, purchase_amount
from messy_indian_dataset
where match(name, email) against('Rajesh');
Explanation:
Full-Text Index Creation (create fulltext index idx_city on messy_indian_dataset(name, email)):
This query creates a full-text index named idx_city on the name and email columns of the messy_indian_dataset table.
Full-text indexes are specialized indexes designed for efficiently searching and retrieving text-based data. They are optimized for operations involving natural language processing, such as searching for words or phrases within text columns.
Query Execution (select ... where match(name, email) against('Rajesh')):
The query uses the match ... against syntax to perform a full-text search for the term 'Rajesh' within the name and email columns.
Full-text indexes enable fast retrieval of rows containing the specified search term, using techniques like word stemming and relevance ranking to improve search accuracy and performance. 5. Full-Text Index with Boolean Mode
-- Query using the full-text index in boolean mode
select name, city, purchase_amount
from messy_indian_dataset
where match(name, email) against('+Patel -Pooja' in boolean mode);
Explanation:
Query Execution (match ... against('+Patel -Pooja' in boolean mode)):
The match ... against clause is used in boolean mode (IN BOOLEAN MODE) to perform a more complex full-text search.
In boolean mode, you can use operators like + (must include), - (must exclude), and quotes for exact phrases (" "). This allows for precise control over the search criteria, refining the search results based on specific conditions.
Use Case:
The query searches for rows where the name or email columns contain the term Patel (+Patel) and excludes rows where Pooja is present (-Pooja).
Full-text indexes in boolean mode are beneficial for advanced text search scenarios where you need fine-grained control over search criteria and result filtering.
Best Practices for Indexing
To maximize the benefits of indexing while minimizing potential drawbacks like increased storage space and overhead, consider these best practices:

Identify Query Patterns: Analyze frequently executed queries and their access patterns to determine which columns should be indexed.
Use Indexes Sparingly: Avoid over-indexing, as each index consumes storage and may slow down data modification operations (inserts, updates, deletes).
Monitor Index Usage: Regularly monitor index usage and performance metrics to identify unused or underused indexes that can be safely removed.
Index Maintenance: Periodically update statistics and rebuild/reorganize indexes to ensure they remain efficient as data in the table changes over time.
Consider Database-specific Features: Different database systems (e.g., MySQL, PostgreSQL, SQL Server) may have unique indexing features and optimizations. Understand and utilize these features effectively.

---

                                    Common Table Expressions

Common Table Expressions (CTEs) are a powerful feature in SQL that allow for better readability, modularity, and performance in complex queries. Introduced in SQL Server 2005 and later adopted by other database systems like PostgreSQL, MySQL, and Oracle, CTEs provide a way to define temporary result sets that can be referenced within a query.

What is a Common Table Expression (CTE)?
A Common Table Expression (CTE) is a named temporary result set that exists within the scope of a single SQL statement. It helps simplify complex queries by breaking them into smaller, more manageable parts. Essentially, a CTE is a query declaration that behaves like a temporary table or a view, but it only exists for the duration of the query.

Syntax of CTE
The syntax for creating a CTE involves two main parts:

WITH cte_name (column_list) AS (
-- CTE query definition
SELECT column1, column2, ...
FROM table_name
WHERE condition
)
-- Main query using CTE
SELECT \*
FROM cte_name;
WITH clause: This begins the CTE definition. It includes the name of the CTE (cte_name) and optionally a list of column names (column_list) that the CTE will return.

CTE query definition: This is a regular SQL SELECT statement that defines the data to be included in the CTE. It can include filtering, joining tables, aggregating data, or any other valid SQL operations.

Main query: This is the query that uses the CTE. It references the CTE by its name (cte_name) as if it were a table or view.

Advantages of Using CTEs
Code Reusability: CTEs allow complex logic to be defined once and referenced multiple times within the same query, enhancing code reusability and maintainability.
Improved Readability: By breaking down complex queries into smaller, named parts, CTEs improve query readability, making it easier to understand and debug SQL code.
Optimization: Database engines can optimize CTEs like they would with views, potentially improving query performance by optimizing execution plans.
Recursive Queries: CTEs can be recursive, enabling queries that iterate over hierarchical or recursive data structures, such as organizational charts or bill of materials.
Practical Examples
Example 1: Original Query vs. Simplified Query Using CTE
Original Query:
SELECT id, name, city, purchase_amount
FROM messy_indian_dataset
WHERE city = 'Mumbai' AND purchase_amount > 1000 AND gender = 'Male';
Simplified Query Using CTE:
WITH MumbaiHighSpenders AS (
SELECT id, name, city, purchase_amount
FROM messy_indian_dataset
WHERE city = 'Mumbai' AND purchase_amount > 1000 AND gender = 'Male'
)
SELECT id, name, city, purchase_amount
FROM MumbaiHighSpenders;
id name city purchase_amount
1 Rajesh Patel Mumbai 1000.50
5 Rajesh Patel Mumbai 1000.50
Explanation:
Original Query: Retrieves records from messy_indian_dataset where city is 'Mumbai', purchase_amount is greater than 1000, and gender is 'Male'.
Simplified Query Using CTE: Defines a CTE named MumbaiHighSpenders that filters data based on the same conditions as the original query. The main query then selects all columns from this CTE. This approach enhances readability by separating the filtering logic into a named subquery (MumbaiHighSpenders).
Example 2: Simplifying Complex Queries
WITH ComplexQuery AS (
SELECT c.customer_id, c.name, SUM(o.order_total) AS total_spent
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
WHERE c.city = 'New York' AND o.order_date >= '2023-01-01'
GROUP BY c.customer_id, c.name
HAVING SUM(o.order_total) > 5000
)
SELECT \*
FROM ComplexQuery;
customer_id name total_spent
101

John Doe

6000.00
102

Jane Smith

7500.00
Explanation:
This example demonstrates using a CTE named ComplexQuery to simplify a complex query involving joins, aggregation, filtering (WHERE), and grouping (GROUP BY). The CTE calculates the total amount spent by customers from New York since January 1, 2023, and filters out customers whose total spend exceeds 5000. The main query then selects all columns from this CTE, making the query more modular and easier to understand.

Example 3: Reusing the Same Subquery
WITH TopCustomers AS (
SELECT customer_id, SUM(order_total) AS total_spent
FROM orders
GROUP BY customer_id
HAVING SUM(order_total) > 10000
)
SELECT c.name, tc.total_spent
FROM customers c
JOIN TopCustomers tc ON c.customer_id = tc.customer_id;
name total_spent
John Doe 15000.00
Jane Smith 12000.00
Explanation:
In this example, the TopCustomers CTE identifies customers whose total spending on orders exceeds 10,000. The main query then joins this CTE with the customers table to retrieve the names and total spending of these top customers. This approach avoids duplicating the subquery logic and improves query maintenance.

Example 4: Improving Aggregation Performance
WITH PreAggregated AS (
SELECT
city,
COUNT(\*) AS num_purchases,
SUM(purchase_amount) AS total_purchase,
AVG(purchase_amount) AS avg_purchase,
MAX(purchase_amount) AS max_purchase
FROM messy_indian_dataset
GROUP BY city
)
SELECT
p.city,
p.num_purchases,
p.total_purchase,
p.avg_purchase,
p.max_purchase
FROM PreAggregated p
WHERE p.total_purchase > 100;
city num_purchases total_purchase avg_purchase max_purchase
Mumbai 2 2001.00 1000.50 1000.50
Delhi 2 1600.75 800.38 800.00
Bangalore 2 1500.50 750.25 750.25
Kolkata 2 2401.50 1200.75 1200.75
Lucknow 2 1950.50 975.25 900.00
Jaipur 3 4200.00 1400.00 1500.00
Chennai 1 1100.50 1100.50 1100.50
Hyderabad 1 850.25 850.25 850.25
Pune 1 950.75 950.75 950.75
Ahmedabad 1 1300.00 1300.00 1300.00
Surat 1 1150.50 1150.50 1150.50
Varanasi 1 850.00 850.00 850.00
Indore 1 1250.25 1250.25 1250.25
Kochi 1 900.75 900.75 900.75
Nagpur 1 1000.75 1000.75 1000.75
Nashik 1 1150.50 1150.50 1150.50
Patna 1 1250.25 1250.25 1250.25
Chandigarh 1 1200.75 1200.75 1200.75
Jaipur 1 1300.00 1300.00 1300.00
Jodhpur 1 1400.25 1400.25 1400.25
Explanation:
The PreAggregated CTE computes aggregated metrics (COUNT, SUM, AVG, MAX) for purchase_amount grouped by city. This pre-aggregation reduces the amount of data processed and improves query performance. The main query then selects cities where the total purchase amount exceeds 100. This strategy leverages CTEs to optimize aggregation operations and enhance query efficiency.

---

SQL with ChatGPT
SQL INTERVIEW QUESTIONS- https://github.com/AshishJangra27/interview-questions

Using ChatGPT for SQL Assistance
ChatGPT can assist in learning, troubleshooting, and optimizing SQL queries:

1. Learning SQL Basics:
   ChatGPT can explain SQL syntax, basic operations, and provide examples to reinforce learning.

2. Query Optimization:
   Get tips from ChatGPT on optimizing slow queries, indexing strategies, and restructuring complex queries for efficiency.

3. Troubleshooting Queries:
   If a query isn't producing expected results, ChatGPT can help identify potential issues like syntax errors or logical flaws.

4. Advanced Techniques:
   Explore advanced SQL concepts such as window functions, recursive queries, and complex joins with ChatGPT's guidance.

Practical Examples with ChatGPT
Let's see how ChatGPT can assist with real-world SQL scenarios:

User Query:
User: How can I find the total sales per month for the past year from the 'sales' table?
ChatGPT: You can use a query like:
SELECT MONTH(sale_date) AS month, YEAR(sale_date) AS year, SUM(sale_amount) AS total_sales
FROM sales
WHERE sale_date >= DATE_SUB(CURDATE(), INTERVAL 1 YEAR)
GROUP BY YEAR(sale_date), MONTH(sale_date);
Optimization Advice:
User: My query to find top customers by total purchases is slow. Any suggestions?
ChatGPT: Consider using pre-aggregation in a CTE to improve performance:
WITH PreAggregated AS (
SELECT customer_id, SUM(purchase_amount) AS total_spent
FROM purchases
GROUP BY customer_id
)
SELECT c.name, pa.total_spent
FROM customers c
JOIN PreAggregated pa ON c.customer_id = pa.customer_id
ORDER BY pa.total_spent DESC
LIMIT 10;
Creating a Database Table
User Input
User: Hi ChatGPT, I have a dataset of employees with the following fields: ID, Name, Age, Gender, Department.
Can you help me write a SQL query to create a table for this dataset?
ChatGPT Response:
ChatGPT: Sure! Here's a SQL query to create a table named 'employees' with the specified fields:

CREATE TABLE employees (
id INT PRIMARY KEY,
name VARCHAR(50),
age INT,
gender VARCHAR(10),
department VARCHAR(50)
);
