-- SELECT * from products;

-- !Find the products where the producg name ends with s

-- SELECT * from products WHERE product_name like "%s";

-- !Find the products where brand name containing ad
-- SELECT * from products WHERE brand_name like "%ad%";

-- !Find the products name starts with p and ends with s
-- SELECT * from products WHERE brand_name like "P%s";

-- !To define case sensitivity
-- SELECT * from products WHERE product_name 

-- !Find the products where the brand name is exactly of 6 charcters
-- SELECT * from products where brand_name like '______';


-- !Find the products where the second caharacter of brand name is s
-- SELECT * from products where brand_name like '_s%';


-- !Find the products where the fourth caharacter of brand name is c
SELECT * from products where brand_name like '___c%';

