-- DELETING TABLE
DROP TABLE IF EXISTS USERS;

-- CREATING TABLE
CREATE TABLE USERS (
    USER_ID INT PRIMARY KEY,
    NAME VARCHAR(50) NOT NULL,
    EMAIL VARCHAR(100) UNIQUE,
    AGE INT,
    CITY VARCHAR(50)
);

-- INSERTING 10 USERS DATA
INSERT INTO USERS (USER_ID, NAME, EMAIL, AGE, CITY)
VALUES
(1, 'John Doe', 'john.doe@example.com', 25, 'New York'),
(2, 'Alice Smith', 'alice.smith@example.com', 28, 'London'),
(3, 'Michael Brown', 'michael.brown@example.com', 32, 'Toronto'),
(4, 'Emma Johnson', 'emma.johnson@example.com', 24, 'Sydney'),
(5, 'David Wilson', 'david.wilson@example.com', 30, 'Chicago'),
(6, 'Sophia Martinez', 'sophia.martinez@example.com', 27, 'Madrid'),
(7, 'James Anderson', 'james.anderson@example.com', 35, 'Berlin'),
(8, 'Olivia Thomas', 'olivia.thomas@example.com', 22, 'Paris'),
(9, 'William Taylor', 'william.taylor@example.com', 30, 'Dubai'),
(10, 'Isabella Moore', 'isabella.moore@example.com', 31, 'Rome');

-- RENAME COLUMN
ALTER TABLE USERS
RENAME COLUMN NAME TO USERNAME;

-- UPDATE CITY WHERE AGE >= 30
UPDATE USERS
SET CITY = 'America'
WHERE AGE >= 30;

-- UPDATE AGE FOR William Taylor
UPDATE USERS
SET AGE = 30
WHERE USERNAME = 'William Taylor';

-- LIKE Example (Increase age by 1 where email ends with @example.com)
UPDATE USERS
SET AGE = AGE + 1
WHERE EMAIL LIKE '%@example.com';

-- DISPLAY DATA
SELECT *
FROM USERS
ORDER BY USER_ID;