SELECT * FROM products;

-- Assign a unique row number to each product within the same category.

SELECT product_name, category, price,
       DENSE_RANK() OVER (PARTITION BY category ORDER BY price DESC) AS Ranking
FROM products;

SELECT product_name, category, price,
       SUM(price) OVER (PARTITION BY category ORDER BY price ASC) AS Running_Total
FROM products;
/*
PARTITION BY → group bana do
ORDER BY → us group me sorting
OVER() → window function apply karo
SUM() → running total
*/
