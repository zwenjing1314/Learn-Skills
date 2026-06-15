-- 10-join.sql
-- 主题：
-- JOIN 用于把多张表关联起来查询。
-- 这在真实业务里非常常见。

USE mysql_study;

-- 查询学生成绩详情：
-- 想看到学生姓名、课程名称、分数，就需要把三张表连起来。
SELECT
    s.student_name,
    c.course_name,
    sc.score,
    sc.exam_date
FROM scores AS sc
INNER JOIN students AS s ON sc.student_id = s.id
INNER JOIN courses AS c ON sc.course_id = c.id;

-- 查询每个学生的平均成绩
SELECT
    s.student_name,
    AVG(sc.score) AS avg_score
FROM students AS s
INNER JOIN scores AS sc ON s.id = sc.student_id
GROUP BY s.id, s.student_name;

-- 查询成绩大于等于 90 的学生和课程
SELECT
    s.student_name,
    c.course_name,
    sc.score
FROM scores AS sc
INNER JOIN students AS s ON sc.student_id = s.id
INNER JOIN courses AS c ON sc.course_id = c.id
WHERE sc.score >= 90;
