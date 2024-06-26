-- THE SQL SCRIOT CREATES A VIEW 
-- WHICH LISTS ALL STUDENTS THAT HAVE A SCORE < 80
DROP VIEW IF EXISTS need_meeting;
CREATE VIEW need_meeting AS SELECT name FROM students
WHERE score < 80 AND last_meeting is NULL
OR last_meeting < DATE_SUB(NOW(), INTERVAL 1 MONTH);
