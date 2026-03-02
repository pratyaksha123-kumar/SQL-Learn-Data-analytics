-- Agar table pehle se exist karti hai toh delete ho jayegi
DROP TABLE IF EXISTS products;

-- New table create kar rahe hai
CREATE TABLE products (
    product_id SERIAL PRIMARY KEY,   -- auto increment id
    product_name VARCHAR(100),       -- product ka naam
    category VARCHAR(50),            -- product category
    price NUMERIC(10,2),             -- product price
    quantity INT,                    -- stock quantity
    added_date DATE,                 -- product add hone ki date
    discount_rate NUMERIC(5,2)       -- discount percentage
);

-- 10 products ka data insert kar rahe hai
INSERT INTO products (product_name, category, price, quantity, added_date, discount_rate) VALUES
('Laptop', 'Electronics', 75000.50, 10, '2024-01-15', 10.00),
('Smartphone', 'Electronics', 45000.99, 25, '2024-02-20', 5.00),
('Headphones', 'Accessories', 1500.75, 50, '2024-03-05', 15.00),
('Office Chair', 'Furniture', 5500.00, 20, '2023-12-01', 20.00),
('Tablet', 'Electronics', 30000.00, 15, '2024-01-25', 8.00),
('Mouse', 'Accessories', 800.50, 60, '2024-02-10', 12.00),
('Keyboard', 'Accessories', 1200.00, 40, '2024-03-01', 10.00),
('LED Monitor', 'Electronics', 18000.00, 18, '2024-02-15', 7.00),
('Study Table', 'Furniture', 7000.00, 12, '2024-01-10', 18.00),
('Printer', 'Electronics', 9500.00, 8, '2024-03-12', 6.00);

-- Table ka data dekhne ke liye
SELECT * FROM products;

-- Sabhi products ki total quantity (stock) nikalne ke liye
SELECT SUM(quantity) AS total_quantity
FROM products;



-- Electronics category ke products ki total quantity
-- jinki price 20000 se zyada hai
SELECT SUM(quantity) AS quantity_of_ele
FROM products
WHERE category='Electronics' AND price > 20000;



-- Table me total kitne products hain (rows count)
SELECT COUNT(*) AS total_products
FROM products;



-- Kitne products ke naam me "phone" word aata hai
SELECT COUNT(*) AS total_products
FROM products
WHERE product_name LIKE '%phone%';



-- Sabhi products ki average price nikalne ke liye
SELECT AVG(price) AS average_price
FROM products; 



-- Accessories category ke products ki average price
-- ya phir jo products 1 Feb 2024 ke baad add hue hain
SELECT AVG(price) AS average_price
FROM products
WHERE category = 'Accessories' OR added_date > '2024-02-01';



-- Sabse mehenga product aur sabse sasta product ka price
SELECT MAX(price) AS MAX_PRICE,
       MIN(price) AS MIN_PRICE
FROM products;