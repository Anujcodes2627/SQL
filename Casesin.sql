-- SELECT * from employees.employees;
-- ! Case in SQL
-- SELECT name,
-- case department 
--    when "sale" then "salesteam"
--    else "other"
--    END
-- as empl_name from employees;
-- SELECT 
--     name,
--     CASE department 
--         WHEN 'sale' THEN 'salesteam'
--         WHEN 'marketing' THEN 'market'
--         ELSE 'other'
--     END AS team_name
-- FROM employees;
-- SELECT 
--     name,
--     CASE  
--         WHEN age<30 THEN 'young'
--         WHEN age>=30 AND age<=40 THEN 'mid-aged'
--         ELSE 'Seniour'
--     END AS age_group
-- FROM employees;
-- !Nested cases
-- SELECT name,
--     CASE
--         WHEN age < 30 THEN CASE
--             when department = "sales" then "jr sales"
--             else "jr"
--         END
--         WHEN age >= 30
--         AND age <= 40 THEN "Middle"
--         ELSE "Seniour"
--     END AS age_group
-- FROM employees;


-- !Dealing with null department
SELECT 
    NAME, 
    CASE 
        WHEN department IS NULL THEN 'No dep assign'
        ELSE department
    END AS depart_status
FROM employees;