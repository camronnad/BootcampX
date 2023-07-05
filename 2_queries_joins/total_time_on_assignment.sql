SELECT SUM(assignments_submissions.duration) AS total_duration
FROM students
JOIN assignments_submissions ON students.id = assignments_submissions.student_id
WHERE students.name = 'Ibrahim Schimmel';
