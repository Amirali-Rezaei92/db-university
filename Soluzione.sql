-- Query 1
SELECT *
FROM students
WHERE YEAR(date_of_birth) = 1990;

-- Query 2
SELECT *
FROM courses
WHERE cfu > 10;

-- Query 3
SELECT *
FROM students
WHERE TIMESTAMPDIFF(YEAR, date_of_birth, CURDATE()) > 30;

-- Query 4
SELECT *
FROM courses
WHERE year = 1
  AND period = 'I semestre';

-- Query 5
SELECT *
FROM exams
WHERE date = '2020-06-20'
  AND hour > '14:00:00';

-- Query 6
SELECT *
FROM degrees
WHERE level = 'magistrale';

-- Query 7
SELECT COUNT(*) AS total_departments
FROM departments;

-- Query 8
SELECT COUNT(*) AS teachers_without_phone
FROM teachers
WHERE phone IS NULL
   OR phone = '';
