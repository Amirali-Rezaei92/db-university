SELECT s.*
FROM students s
JOIN degrees d ON d.id = s.degree_id
WHERE d.name = 'Economia';
-------
SELECT deg.*
FROM degrees deg
JOIN departments dep ON dep.id = deg.department_id
WHERE deg.level = 'magistrale'
  AND dep.name = 'Neuroscienze';
------
SELECT c.*
FROM courses c
JOIN course_teacher ct ON ct.course_id = c.id
WHERE ct.teacher_id = 44;
------
SELECT s.name, s.surname, d.name AS degree, dep.name AS department
FROM students s
JOIN degrees d ON d.id = s.degree_id
JOIN departments dep ON dep.id = d.department_id
ORDER BY s.surname, s.name;
------
SELECT deg.name AS degree,
       c.name AS course,
       t.name AS teacher
FROM degrees deg
JOIN courses c ON c.degree_id = deg.id
JOIN course_teacher ct ON ct.course_id = c.id
JOIN teachers t ON t.id = ct.teacher_id;
------
SELECT DISTINCT t.*
FROM teachers t
JOIN course_teacher ct ON ct.teacher_id = t.id
JOIN courses c ON c.id = ct.course_id
JOIN degrees deg ON deg.id = c.degree_id
WHERE deg.department_id = 54;
------
SELECT es.student_id,
       es.exam_id,
       COUNT(*) AS tentativi,
       MAX(es.vote) AS voto_massimo
FROM exam_student es
GROUP BY es.student_id, es.exam_id;


SELECT es.student_id,
       es.exam_id,
       COUNT(*) AS tentativi,
       MAX(es.vote) AS voto_massimo
FROM exam_student es
GROUP BY es.student_id, es.exam_id
HAVING MAX(es.vote) >= 18;
