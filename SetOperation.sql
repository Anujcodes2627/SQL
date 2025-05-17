-- select * from users.users_2021;
-- select * from users.users_2022;
-- select * from users.users_2023;
-- -- UNION | remove duplicates
-- select * from users.users_2021 union select * from users.users_2022;
-- select * from users.users_2022 union select * from users.users_2021;
-- select * from users.users_2021 union select * from users.users_2023;
-- select * from users.users_2022 union select * from users.users_2023;
-- select * from users.users_2021 union select * from users.users_2022 union select * from users.users_2023;
-- -- UNION ALL | Dont't remove duplicates
-- select * from users.users_2021 union all select * from users.users_2022;
-- select * from users.users_2022 union all select * from users.users_2021;
-- select * from users.users_2021 union all select * from users.users_2023;
-- select * from users.users_2022 union all select * from users.users_2023;
-- select * from users.users_2021 union all select * from users.users_2022 union all select * from users.users_2023;
-- select * from users.users_2021 union all select * from users.users_2022 union select * from users.users_2023;
-- (select * from users.users_2021 union all select * from users.users_2022) union select * from users.users_2023;
-- -- EXCEPT | Show all the data of dominating table that is not there is other table
-- select * from users.users_2021 except select * from users.users_2022;
-- select * from users.users_2022 except select * from users.users_2021;
-- select * from users.users_2021 except select * from users.users_2023;
-- select * from users.users_2023 except select * from users.users_2021;
-- select * from users.users_2021 except select * from users.users_2022 except select * from users.users_2023;
-- select * from users.users_2023 except select * from users.users_2022 except select * from users.users_2021;
-- -- INTERSECT | Showing the common data
-- select * from users.users_2021 intersect select * from users.users_2022;
-- select * from users.users_2022 intersect select * from users.users_2023;
-- select * from users.users_2021 intersect select * from users.users_2023;
-- select * from users.users_2021 intersect select * from users.users_2022 intersect select * from users.users_2023;
-- !Assigment
-- List of users added in 2022
-- SELECT * from users_2022 EXCEPT select * from users_2021
-- List the new users added in 2023 users 
-- SELECT *
-- from users_2023
-- EXCEPT (
--         select *
--         from users_2022
--         UNION
--         SELECT *
--         from users_2021
--     );
-- List all the users who left us
--     select *
--     from users_2022
--     UNION
--     SELECT *
--     from users_2021
-- EXCEPT (
--         SELECT *
--         from users_2023
--     );
-- List all ther users through ou the database for year 2022 & 2023
-- SELECT *
-- from users_2021
-- INTERSECT
-- select *
-- from users_2022;
-- List all the users that are there throuhout DATATBASE

--  List all the users that are WITH US FOR 3 YEARS
-- SELECT * FROM users_2021 INTERSECT SELECT * FROM users_2022 INTERSECT  SELECT * FROM users_2023; 


select * from users.users_2021;
select * from users.users_2022;
select * from users.users_2023;

-- 1. List the new users added in 2022
select * from users.users_2022 except select * from users.users_2021;

-- 2. List the new users added in 2023
select * from users.users_2023 except select * from users.users_2022;

-- 3. List the users who left us
select * from users.users_2021 except select * from users.users_2022 except select * from users.users_2023;

-- 4. List all the users that are there throughout the database for year 2021 & 2022
select * from users.users_2022 union select * from users.users_2021;

-- 5. List all the users that are there throughout the database
select * from users.users_2021 union select * from users.users_2022 union select * from users.users_2023;

-- 6. List the users that are there with us from last 3 years
select * from users.users_2021 intersect select * from users.users_2022 intersect select * from users.users_2023;

-- 7. List the all the users except that users who are there with us from 3 years
select * from users.users_2021 union select * from users.users_2022 union select * from users.users_2023
except
select * from users.users_2021 intersect select * from users.users_2022 intersect select * from users.users_2023;

-- 8. Operators with Join
select * from users.users_2021 as t_2021 left join users.users_2022 as t_2022 on t_2021.UserID = t_2022.UserID;
select * from users.users_2021 as t_2021 right join users.users_2022 as t_2022 on t_2021.UserID = t_2022.UserID;

select * from users.users_2021 as t_2021 left join users.users_2022 as t_2022 on t_2021.UserID = t_2022.UserID
union
select * from users.users_2021 as t_2021 right join users.users_2022 as t_2022 on t_2021.UserID = t_2022.UserID;