CREATE TABLE employee2 (
    employee_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    position VARCHAR(100),
    department VARCHAR(50),
    hire_date DATE,
    salary NUMERIC(10,2)
);

INSERT INTO employee2(employee_id, name, position, department, hire_date, salary)
		VALUES
(101, 'John Smith', 'Software Engineer', 'IT', '2023-05-10', 75000.00),

(102, 'Maria Garcia', 'HR Manager', 'Human Resources', '2022-03-15', 68000.50),

(103, 'David Lee', 'Data Analyst', 'Analytics', '2024-01-20', 72000.00),

(104, 'Sophia Brown', 'Marketing Executive', 'Marketing', '2023-08-01', 65000.75),

(105, 'James Wilson', 'Project Manager', 'Operations', '2021-11-12', 82000.00),

(106, 'Emma Johnson', 'UI/UX Designer', 'Design', '2023-02-18', 70000.00),

(107, 'Michael Anderson', 'DevOps Engineer', 'IT', '2022-09-25', 78000.00),

(108, 'Olivia Martinez', 'Business Analyst', 'Analytics', '2024-04-05', 69000.00),

(109, 'William Taylor', 'Cyber Security Analyst', 'Security', '2023-06-30', 86000.00),

(110, 'Isabella Thomas', 'Content Strategist', 'Marketing', '2022-12-10', 64000.00);

SELECT * FROM employee2;
-- Ye specific row ko delete karne ke liye hai
DELETE FROM employee2
WHERE employee_id = 110;
-- Jab table already ban chuki ho aur hume usme koi change karna ho, tab ALTER use karte hain.
ALTER TABLE employee2
-- Ye database table coloumn delete karne ke liye
DROP COLUMN  salary;
-- Ye table clomn delete karne ke liye hai 
DROP TABLE IF EXISTS employee2;
-- Ye database delete karne ke liye hai 
DROP DATABASE IF EXISTS company;
