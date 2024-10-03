-- Write query to find the number of grade A's given by the teacher who has graded the most assignments
WITH TeacherGradeCount AS (
    SELECT teacher_id, COUNT(*) AS total_graded
    FROM assignment
    WHERE grade IS NOT NULL
    GROUP BY teacher_id
    ORDER BY total_graded DESC
    LIMIT 1
)
SELECT COUNT(*) AS grade_A_count
FROM assignment a
JOIN TeacherGradeCount t ON a.teacher_id = t.teacher_id
WHERE a.grade = 'A';