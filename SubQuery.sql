-- Basic query: Find average rating of products
-- SELECT avg(rating)
-- from products;
-- !Subquery in Where Clause:Find the brand names of products with a rating higher than the averge rating
-- SELECT brand_tag,avg(rating) as "avg_rating"
-- from products
-- GROUP BY brand_tag
-- HAVING avg_rating>(SELECT avg(rating) from products);
-- SELECT brand_name from products WHERE rating>(SELECT avg(rating)from products);
-- !Subquery in select clause retrieve the products name along with the average rating of products
-- SELECT product_tag,(SELECT avg(rating) from products ) from products ;
-- Subquery with multiple Results:Find total rating count of products for each brand compared to the overall averagege
SELECT brand_name,
    (
        SELECT sum(rating_count)
        from products
        WHERE brand_name = p.brand_name
    ) as total_rating_count
from (
        select DISTINCT brand_name
        from products
    ) as p;