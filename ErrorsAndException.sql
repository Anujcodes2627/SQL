use users;
-- 1. Syntax Errors
-- THEORY: This is an example of a syntax error caused by a misspelled SQL keyword.
-- 'form' is incorrectly written instead of 'from', leading to a syntax parsing failure.
select * form restaurants;
-- 2. Logical Exception
-- THEORY: This query is logically impossible because it uses mutually exclusive conditions.
-- No restaurant can have a rating both greater than 4.0 and less than 2.0 at the same time.
select *
from restaurants
where rating > 4.0
    and rating < 2.0;
-- 3. Data Type Exception
-- THEORY: Here, we are comparing a numeric column (rating) with a string value ('high').
-- This causes a type mismatch because SQL expects a numeric value for comparison with 'rating'.
select *
from restaurants
where rating = 'high';
-- 4. Performance Exception
-- THEORY: Searching for a specific floating-point number (4.5) without an index on 'rating'
-- can lead to a full table scan, which is inefficient for large datasets.
select *
from restaurants
where rating = 4.5;
-- 5. Aggregate Function Errors
-- THEORY: This query is missing a GROUP BY clause.
-- When using an aggregate function like COUNT() along with another column (city), 
-- SQL requires specifying how to group rows by the non-aggregated column.
select city,
    count(*)
from restaurants;
-- 6. Subquery Exception
-- THEORY: If the subquery returns no rows (because city = 'NonExistedCity' doesn't exist),
-- or if it returns multiple rows, the main query will throw an error expecting exactly one result.
select *
from restaurants
where id = (
        select id
        from restaurants
        where city = 'NonExistedCity'
    );
-- 7. Constraint Errors
-- THEORY: Inserting a rating of 6 might violate a CHECK constraint (e.g., rating <= 5).
-- Constraints ensure data validity by enforcing rules like allowed ranges or uniqueness.
INSERT into restaurants (id, name, city, rating)
values (301, 'Invalid', 'Mumbai', 6);
-- Function Errors
-- THEORY: Errors can occur inside stored functions or procedures, 
-- such as division by zero or invalid parameter values.
-- Indexing Errors
-- THEORY: Queries can be slow if proper indexes are missing on frequently filtered or joined columns.
-- Transaction Errors
-- THEORY: Errors can occur during transactions, such as deadlocks, rollbacks, or commit failures.
-- Permission and Access Errors
-- THEORY: SQL operations can fail if the user doesn’t have the required privileges (e.g., SELECT, INSERT).
-- Temporary Table Errors
-- THEORY: Errors may arise if a temporary table is dropped before it's used or accessed from another session.
-- Data Import/Export Errors
-- THEORY: Errors can occur during data loading or exporting, such as incorrect file formats or missing columns.
use users;
-- 1. If table doesn't exist: Exception Handling
-- THEORY: This stored procedure demonstrates how to handle an exception (missing table) using SQL exception handlers.
-- When attempting to select from a non-existent table, the handler intercepts the error and displays a custom message.
delimiter // drop procedure if exists handle_non_existant_table;
create procedure handle_non_existant_table() begin
declare continue handler for SQLEXCEPTION begin
select 'The table "non_existant_table" does not exists' as message;
end;
select *
from non_existant_table;
end // delimiter;
call handle_non_existant_table();
-- 2. Unique Constraint Violation Handling
-- THEORY: This stored procedure handles unique constraint violations when inserting duplicate values 
-- (e.g., duplicate primary key or unique name). The exception handler catches the error and outputs a custom message.
delimiter // drop procedure if exists handle_unique_violation;
create procedure handle_unique_violation() begin
declare continue handler for SQLEXCEPTION begin
select 'Duplicate restaurant ID or name Found' as message;
end;
insert into restaurants(
        ids,
        name,
        city,
        rating,
        rating_count,
        cuisine,
        cost,
        link
    )
values (
        211,
        'Tandoori Hut',
        'Banglore',
        4.3,
        100,
        'Biryani',
        300,
        'https://www.swiggy.com/rest/tandoor_hut'
    );
end // delimiter;
call handle_unique_violation();