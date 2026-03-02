-- Products table ka sara data dekhne ke liye
SELECT * FROM products;


-- Current date aur time dono show karta hai
SELECT NOW() AS Current_DateTime;


-- Sirf aaj ki date show karta hai (time include nahi hota)
SELECT CURRENT_DATE AS today_date;


-- Current date aur added_date ke beech kitne din ka difference hai
SELECT added_date, CURRENT_DATE,
       (CURRENT_DATE - added_date) AS Days_Difference
FROM products;


-- added_date se year, month aur day alag-alag nikalne ke liye
SELECT product_name,
       EXTRACT(YEAR FROM added_date) AS Year_Added,
       EXTRACT(MONTH FROM added_date) AS Month_Added,
       EXTRACT(DAY FROM added_date) AS Day_Added
FROM products;


-- Product add hone ke baad kitna time ho gaya (years, months, days format me)
SELECT product_name,
       AGE(CURRENT_DATE, added_date) AS Age_since_added
FROM products;


-- Date ko custom format me convert karta hai
-- Example output: 15-JANUARY-2024
SELECT product_name,
       TO_CHAR(added_date, 'DD-MONTH-YYYY') AS formated_date
FROM products;


-- added_date se month number nikalta hai
-- Example: January = 1, February = 2
SELECT product_name, added_date,
       DATE_PART('MONTH', added_date) AS month_number
FROM products;


-- Date ko truncate karke us month ka first day return karta hai
-- Example: 2024-03-05 → 2024-03-01
SELECT product_name, added_date,
       DATE_TRUNC('MONTH', added_date) AS month_start
FROM products;


-- added_date me 6 months add karke new date nikalta hai
SELECT product_name, added_date,
       added_date + INTERVAL '6 MONTHS' AS new_date
FROM products;


-- Current system time show karta hai
SELECT CURRENT_TIME AS CURRENT_TIME;


-- String ko date format me convert karta hai
SELECT TO_DATE('28-01-2026', 'DD-MM-YYYY') AS converted_date;