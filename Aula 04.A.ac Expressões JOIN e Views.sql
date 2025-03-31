-- relação a partir da união das tabelas student e takes
SELECT * from student JOIN takes on student.ID = takes.ID;

-- contar a quantidade de cursos realizados pelos alunos do departamento de Civil Eng.
SELECT s.ID, s.name, COUNT(t.course_id) AS num_courses
FROM student s
LEFT JOIN takes t ON s.ID = t.ID
WHERE s.dept_name = 'Civil Eng.'
GROUP BY s.ID, s.name
ORDER BY num_courses DESC;

--Criar a view dos estudantes 
CREATE VIEW civil_eng_students AS
SELECT s.ID, s.name, COUNT(t.course_id) AS num_courses
FROM student s
LEFT JOIN takes t ON s.ID = t.ID
WHERE s.dept_name = 'Civil Eng.'
GROUP BY s.ID, s.name