SELECT YEAR(enrolment_date) AS anno, COUNT(*) AS totale_iscritti
FROM students
GROUP BY YEAR(enrolment_date);
-----
SELECT office_address, COUNT(*) AS totale_professori
FROM teachers
GROUP BY office_address;
-----
SELECT e.name, AVG(es.vote) AS avg_vote
FROM exam_student es
JOIN exams e ON e.id = es.exam_id
GROUP BY es.exam_id;

-----
SELECT d.name, COUNT(*) AS total_degrees
FROM degrees deg
JOIN departments d ON d.id = deg.department_id
GROUP BY d.id;
