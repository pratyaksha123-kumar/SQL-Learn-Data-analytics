SELECT * FROM employee2;

SELECT first_name, last_name, salary , (salary*0.10, 2) AS Bonus FROM employee2;
-- CALCULATE SALARY
SELECT first_name, last_name, salary,
(salary*12) AS annual_salary,
(salary*0.05) AS increament_salary,
(salary + salary*0.05) AS new_salary
FROM employee2;