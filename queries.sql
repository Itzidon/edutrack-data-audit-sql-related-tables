-- EduTrack - Auditoria de Datos
-- Tablas Relacionadas

-- Q1: Listar todas las inscripciones
SELECT s.name, c.title, e.completion_percentage
FROM enrollments AS e
INNER JOIN students AS s ON e.student_id = s.id
INNER JOIN courses AS c ON e.course_id = c.id;

-- Q2: Estudiantes con cursos aprobados
SELECT s.name, s.email, c.title
FROM enrollments AS e
INNER JOIN students AS s ON e.student_id = s.id
INNER JOIN courses AS c ON e.course_id = c.id
WHERE e.passed = TRUE;

-- Q3: Porcentaje medio por instructor
SELECT c.instructor_name, AVG(e.completion_percentage)
FROM courses AS c
INNER JOIN enrollments AS e ON c.id = e.course_id
GROUP BY c.instructor_name
ORDER BY AVG(e.completion_percentage) DESC;

-- Q4: Estudiantes sin inscripciones
SELECT s.name, s.email
FROM students AS s
LEFT JOIN enrollments AS e ON s.id = e.student_id
WHERE e.id IS NULL;

-- Q5: Cursos sin inscripciones
SELECT c.title, c.category
FROM courses AS c
LEFT JOIN enrollments AS e ON c.id = e.course_id
WHERE e.id IS NULL;

-- Q6: Estudiantes inscritos en varios cursos
SELECT s.name, COUNT(e.course_id) AS total_cursos
FROM students AS s
INNER JOIN enrollments AS e ON s.id = e.student_id
GROUP BY s.id, s.name
HAVING COUNT(e.course_id) > 1;

-- Q7: Ingresos por categoria
SELECT c.category,
       SUM(c.monthly_fee) AS total_revenue
FROM courses AS c
INNER JOIN enrollments AS e ON c.id = e.course_id
GROUP BY c.category
ORDER BY total_revenue DESC;

-- Q8: Estudiantes por instructor
SELECT c.instructor_name,
       COUNT(DISTINCT e.student_id) AS total_students
FROM courses AS c
LEFT JOIN enrollments AS e ON c.id = e.course_id
GROUP BY c.instructor_name
ORDER BY total_students DESC;

-- Q9: Inscripciones con estudiantes inexistentes
SELECT e.id, e.student_id
FROM enrollments AS e
LEFT JOIN students AS s ON e.student_id = s.id
WHERE s.id IS NULL;

-- Q10: Inscripciones con cursos inexistentes
SELECT e.id, e.course_id
FROM enrollments AS e
LEFT JOIN courses AS c ON e.course_id = c.id
WHERE c.id IS NULL;
