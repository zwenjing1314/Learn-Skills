-- 05-select-basic.sql
-- 主题：
-- SELECT 是最常用的查询语句，用来读取数据。

USE mysql_study;

-- 查询 students 表中的全部列
SELECT * FROM students;

-- 只查询指定列，而不是查询所有列
SELECT student_no, student_name, class_name FROM students;

-- 给列起别名，让结果更易读
SELECT
    student_name AS 姓名,
    age AS 年龄,
    class_name AS 班级
FROM students;

-- 查询 courses 表中的所有课程
SELECT * FROM courses;
