SELECT * FROM employee;


INSERT INTO employee(name, position, department, hire_date, salary)
		VALUES('Amit Sharma', 'Software Engineer', 'IT', '2023-06-15', 55000.00),
('Priya Verma', 'HR Manager', 'HR', '2022-03-10', 60000.00),
('Rahul Singh', 'Accountant', 'Finance', '2021-11-20', 45000.00),
('Sneha Kapoor', 'Data Analyst', 'IT', '2024-01-05', 50000.00),
('Arjun Mehta', 'Sales Executive', 'Sales', '2023-09-12', 40000.00),
('Neha Gupta', 'Marketing Manager', 'Marketing', '2022-07-18', 65000.00),
('Vikram Rao', 'Team Lead', 'IT', '2020-05-25', 75000.00);

TRUNCATE TABLE employee;
TRUNCATE TABLE employee RESTART IDENTITY;