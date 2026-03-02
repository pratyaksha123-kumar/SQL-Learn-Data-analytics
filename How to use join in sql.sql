-- =========================================================
-- EMPLOYEES TABLE CREATE KAR RAHE HAI
-- Is table me employees ki basic information store hogi
-- =========================================================
CREATE TABLE Employees3 (
    employee_id SERIAL PRIMARY KEY,   -- Employee ki unique id (auto increment)
    first_name VARCHAR(50),           -- Employee ka first name
    last_name VARCHAR(50),            -- Employee ka last name
    department_id INT                 -- Employee kis department me kaam karta hai
);

-- =========================================================
-- EMPLOYEES TABLE ME DATA INSERT KAR RAHE HAI
-- =========================================================
INSERT INTO Employees3 (first_name, last_name, department_id)
VALUES
('Rahul', 'Sharma', 101),     -- Rahul Sales department me hai
('Priya', 'Mehta', 102),      -- Priya Marketing department me hai
('Ankit', 'Verma', 103),      -- Ankit IT department me hai
('Simran', 'Kaur', NULL),     -- Simran ka department assign nahi hai
('Aman', 'Singh', 101);       -- Aman bhi Sales department me hai

-- Employees table ka data check karne ke liye
SELECT * FROM Employees3;



-- =========================================================
-- DEPARTMENTS TABLE CREATE KAR RAHE HAI
-- Is table me company ke departments honge
-- =========================================================
CREATE TABLE Departments (
    department_id INT PRIMARY KEY,     -- Department ki unique id
    department_name VARCHAR(50)        -- Department ka naam
);

-- =========================================================
-- DEPARTMENTS TABLE ME DATA INSERT KAR RAHE HAI
-- =========================================================
INSERT INTO Departments (department_id, department_name)
VALUES
(101, 'Sales'),
(102, 'Marketing'),
(103, 'IT'),
(104, 'HR');

-- Departments table ka data dekhne ke liye
SELECT * FROM Departments;



-- =========================================================
-- INNER JOIN
-- Sirf wahi records dikhata hai jaha dono tables me match ho
-- Simran yaha nahi dikhegi kyunki uska department NULL hai
-- =========================================================
SELECT e.employee_id, e.first_name, e.last_name,
       d.department_id, d.department_name
FROM Employees3 e
INNER JOIN Departments d
ON e.department_id = d.department_id;



-- =========================================================
-- LEFT JOIN
-- Left table (Employees3) ke sabhi records aayenge
-- Agar department match nahi karega to department column NULL hoga
-- Isme Simran bhi dikhegi
-- =========================================================
SELECT e.employee_id, e.first_name, e.last_name,
       d.department_id, d.department_name
FROM Employees3 e
LEFT JOIN Departments d
ON e.department_id = d.department_id;



-- =========================================================
-- RIGHT JOIN
-- Right table (Departments) ke sabhi records aayenge
-- Agar koi department me employee nahi hai to employee columns NULL honge
-- =========================================================
SELECT e.employee_id, e.first_name, e.last_name,
       d.department_id, d.department_name
FROM Employees3 e
RIGHT JOIN Departments d
ON e.department_id = d.department_id;



-- =========================================================
-- FULL OUTER JOIN
-- Dono tables ke sabhi records aayenge
-- Jaha match nahi hoga waha NULL dikhega
-- =========================================================
SELECT e.employee_id, e.first_name, e.last_name,
       d.department_id, d.department_name
FROM Employees3 e
FULL OUTER JOIN Departments d
ON e.department_id = d.department_id;



-- =========================================================
-- CROSS JOIN
-- Har employee ko har department ke saath combine karta hai
-- Matlab sab possible combinations ban jate hain
-- Example: 5 employees × 4 departments = 20 rows
-- =========================================================
SELECT  e.first_name, e.last_name,
        d.department_name
FROM Employees3 e
CROSS JOIN Departments d;



-- =========================================================
-- SELF JOIN
-- Ek hi table ko khud ke saath join karte hain
-- Yaha same department me kaam karne wale employees ko pair me dikha rahe hain
-- =========================================================
SELECT 
    e1.first_name AS Employee_name1,
    e2.first_name AS Employee_name2,
    d.department_name
FROM employees3 e1
JOIN employees3 e2
    ON e1.department_id = e2.department_id
    AND e1.employee_id != e2.employee_id   -- Employee khud se match na ho
JOIN departments d
    ON e1.department_id = d.department_id;