SELECT cohorts.name, count(students.*) AS students_count
FROM cohorts
JOIN students ON students.id = student_id
GROUP BY cohorts
ORDER BY count(students.*);