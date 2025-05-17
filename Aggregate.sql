
-- !Finding number of rows
-- SELECT  count(*) from products; 

-- !Count distinct producr name
-- SELECT COUNT(DISTINCT(product_name)) FROM products;


-- !Finding the average discount prices of all products in dataset
-- SELECT AVG(discounted_price) from products;
-- SELECT AVG(marked_price) from products;

-- !Finding the maximum discount products can have
-- SELECT MAX(discounted_price) from products;
-- SELECT MAX(marked_price) from products;

-- !FInding minimum discount 
-- SELECT min(discounted_price) from products;
-- SELECT min(marked_price) from products;

-- !Finding the total rating count of all the products
-- SELECT sum(rating_count) as totalrating FROM products;

-- !Total UNIQUE BRANDS
-- SELECT DISTINCT brand_name from products ORDER BY brand_name;

-- !Total number of UNIQUE BRANDS
SELECT count(DISTINCT(brand_name)) from products;