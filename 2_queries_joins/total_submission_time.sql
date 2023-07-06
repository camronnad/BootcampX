SELECT SUM(assignments_submissions.duration) AS total_duration
FROM students
JOIN cohorts ON students.cohort_id = cohorts.id
JOIN assignments_submissions ON students.id = assignments_submissions.student_id
WHERE cohorts.name = 'FEB12';


SELECT students.name as student, count(assignment_submissions.*) as total_submissions
FROM assignment_submissions
JOIN students ON students.id = student_id
WHERE students.end_date IS NULL
GROUP BY students.name;
