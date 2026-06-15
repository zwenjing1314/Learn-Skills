-- 09-group-by.sql
-- 主题：
-- GROUP BY 用于分组统计。
-- 通常会和 COUNT、AVG、SUM、MAX、MIN 等聚合函数一起使用。

USE mysql_study;

-- 统计每个班级有多少名学生
SELECT
    class_name,
    COUNT(*) AS student_count
FROM students
GROUP BY class_name;

-- 统计每门课程的平均分
SELECT
    course_id,
    AVG(score) AS avg_score
FROM scores
GROUP BY course_id;

-- 统计每个学生有几条成绩记录
SELECT
    student_id,
    COUNT(*) AS score_count
FROM scores
GROUP BY student_id;

-- 只查看平均分大于等于 85 的课程
SELECT
    course_id,
    AVG(score) AS avg_score
FROM scores
GROUP BY course_id
HAVING AVG(score) >= 85;
