SELECT SUM(assignments_submissions.duration) AS total_duration
FROM students
JOIN cohorts ON students.cohort_id = cohorts.id
JOIN assignments_submissions ON students.id = assignments_submissions.student_id
WHERE cohorts.name = 'FEB12';