-- Agar table pehle se exist karti hai toh delete kar do
DROP TABLE IF EXISTS students_2023;

-- students_2023 naam ki new table create kar rahe hai
CREATE TABLE students_2023 (
    student_id INT PRIMARY KEY,     -- student ki unique id
    student_name VARCHAR(100),      -- student ka naam
    course VARCHAR(50)              -- student ka course
);

-- students_2023 table me data insert kar rahe hai
INSERT INTO students_2023 (student_id, student_name, course) VALUES
(1, 'Aarav Sharma', 'Computer Science'),
(2, 'Ishita Verma', 'Mechanical Engineering'),
(3, 'Kabir Patel', 'Electronics'),
(4, 'Ananya Desai', 'Civil Engineering'),
(5, 'Rahul Gupta', 'Computer Science');

-- students_2023 table ka pura data dekhne ke liye
SELECT * FROM students_2023;



-- Agar students_2024 table exist karti hai toh delete kar do
DROP TABLE IF EXISTS students_2024;

-- students_2024 naam ki new table create kar rahe hai
CREATE TABLE students_2024 (
    student_id INT PRIMARY KEY,     -- student ki unique id
    student_name VARCHAR(100),      -- student ka naam
    course VARCHAR(50)              -- student ka course
);

-- students_2024 table me data insert kar rahe hai
INSERT INTO students_2024 (student_id, student_name, course) VALUES
(3, 'Kabir Patel', 'Electronics'),      -- ye student 2023 wali table me bhi hai
(4, 'Ananya Desai', 'Civil Engineering'), -- ye bhi dono tables me same hai
(6, 'Meera Rao', 'Computer Science'),
(7, 'Vikram Singh', 'Mathematics'),
(8, 'Sanya Kapoor', 'Physics');

-- students_2024 table ka data dekhne ke liye
SELECT * FROM students_2024;



-- UNION: dono tables ka data combine karega aur duplicate values hata dega
SELECT student_name, course FROM students_2023
UNION
SELECT student_name, course FROM students_2024;



-- UNION ALL: dono tables ka data combine karega lekin duplicate bhi dikhayega
SELECT student_name, course FROM students_2023
UNION ALL 
SELECT student_name, course FROM students_2024;



-- INTERSECT: sirf woh records dikhayega jo dono tables me common hai
SELECT student_name, course FROM students_2023
INTERSECT
SELECT student_name, course FROM students_2024;



-- EXCEPT: students_2023 me jo data hai lekin students_2024 me nahi hai
SELECT student_name, course FROM students_2023
EXCEPT
SELECT student_name, course FROM students_2024;