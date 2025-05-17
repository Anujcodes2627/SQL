
-- use users;
-- select * from restaurants;
-- 1. Rank every restaurant from most expensive to least expensive

-- SELECT *,RANK() OVER(ORDER BY cost DESC) from restaurants;
-- 2. Rank every restaurant from most visited to least visited
-- SELECT *,RANK() OVER(ORDER BY rating_count DESC) from restaurants;

-- 3. Rank every restaurant from most expensive to least expensive as per their city

-- SELECT *,RANK() OVER( PARTITION BY city ORDER BY cost DESC) from restaurants;


-- 4. Dense-rank every restaurant from most expensive to least expensive as per their city
-- SELECT *,DENSE_RANK() OVER(ORDER BY rating_count DESC) from restaurants;

-- 5. Row-number every restaurant from most expensive to least expensive as per their city
-- SELECT *,ROW_NUMBER() OVER(ORDER BY cost DESC) from restaurants;


-- 6. Rank every restaurant from most expensive to least expensive as per their city along with its city [Adilabad - 1, Adilabad - 2]

SELECT * ,concat(city,ROW_NUMBER() OVER(PARTITION BY city ORDER BY cost desc) )from restaurants 

-- 7. Find top 5 restaurants of every city as per their revenue

select * from (select *, 
				cost*rating_count as 'revenue', 
				row_number() over(partition by city order by rating_count*cost desc) as 'rank' from restaurants) t
where t.rank < 6;

-- 8. Find top 5 restaurants of every cuisine as per their revenue
select * from (select *, 
				cost*rating_count as 'revenue', 
				row_number() over(partition by cuisine order by rating_count*cost desc) as 'rank' from restaurants) t
where t.rank < 6;