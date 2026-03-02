-- Products table ka sara data dekhne ke liye
SELECT * FROM products;


-- Category ko capital letters (UPPERCASE) me convert karta hai
SELECT UPPER(category) AS category_capital
FROM products;


-- Category ko small letters (LOWERCASE) me convert karta hai
SELECT LOWER(category) AS category_capital
FROM products;


-- Product name aur category ko combine karke ek string banata hai
-- Example: Laptop-Electronics
SELECT CONCAT(product_name,'-', category) AS product_detail
FROM products;


-- Product name ke first 5 characters nikalta hai
-- Example: Laptop -> Lapto
SELECT SUBSTRING(product_name, 1,5) AS short_name
FROM products;


-- Product name me kitne characters hain ye count karta hai
SELECT product_name, LENGTH(product_name) AS COUNT_OF_CHAR
FROM products;


-- TRIM extra spaces hata deta hai phir length calculate karta hai
SELECT LENGTH(TRIM('     Monitor    ')) AS Trimmed_Text;

-- Ye spaces ko include karke length calculate karega
SELECT LENGTH('     Monitor    ') AS Trimmed_Text;


-- Product name me agar 'phone' word hai to usko 'device' se replace karega
SELECT REPLACE(product_name, 'phone', 'device') AS updated
FROM products;


-- Category ke last 3 characters nikalta hai
SELECT RIGHT(category, 3) AS Category_Capital
FROM products;