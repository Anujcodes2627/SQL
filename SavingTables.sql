-- !Exporting the tables 
use users;
-- Create table sirsa_restraunts containing restraunts  of sirsa only
-- CREATE table if not exists sirsa_restarunt as SELECT * from restaurants WHERE city='sirsa'
-- SELECT *
-- from sirsa_restarunt;
-- Create table city_stats containing aggregated stats  of each city
-- CREATE table if not exists city_stats as
-- SELECT city,
--     AVG(rating) as avg_rating,
--     count(*) as num_of_restra
-- from restaurants
-- GROUP BY city;
-- select * from city_stats;
-- create table named expensive_restraunts containing restraunts with a cost grater than 500
-- create table expensive_restraunts as
-- SELECT * from restaurants WHERE cost>500;
-- SELECT * from expensive_restraunts;

-- !Alias 

 -- Select all columns from the 'restaurants' table with alias 'r'
-- select * from restaurants as rest;

-- Select the city and the average cost of restaurants in each city using table aliases and aggregate functions
-- select rest.city, avg(rest.cost) as 'avg_cost' 
-- from restaurants as rest 
-- group by rest.city;

-- Select restaurants that have a higher rating than the average rating of all restaurants in the same city using self-referencing query with table aliases
-- select rest.*
-- from restaurants as rest 
-- where rest.rating > (select avg(rating) from restaurants where city = rest.city);

-- !Temporary Tables
drop table if exists temp_restaurants;
drop table if exists temp_restaurants_sirsa;
drop table if exists temp_city_statistics;
drop table if exists temp_expensive_restaurants;

-- Creatae your first temporary table
create temporary table temp_restaurants as SELECT * FROM restaurants;
select * from temp_restaurants;

-- Drop temporary tables if they exist
drop table if exists temp_restaurants;

-- Create a new temporary table named 'sirsa_restaurants' containing restaurants of Sirsa only
create temporary table temp_restaurants_sirsa as SELECT * FROM restaurants where city = 'sirsa';
select * from temp_restaurants_sirsa;

-- Create a new temporary table named 'city_statistics' containing aggregated statistics for each city
create temporary table if not exists temp_city_statistics as 
	SELECT city , avg(rating) as avg_rating, count(*) as num_of_restaurants FROM restaurants group by city;
select * from city_statistics;

-- Create a new temporary table named 'expensive_restaurants' containing restaurants with a cost greater than 500
create temporary table if not exists temp_expensive_restaurants as 
	SELECT * from restaurants where cost > 500;
select * from temp_expensive_restaurants;