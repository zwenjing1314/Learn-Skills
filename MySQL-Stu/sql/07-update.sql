-- 07-update.sql
-- 主题：
-- UPDATE 用于修改已有数据。
-- 非常重要：如果不写 WHERE，可能会更新整张表。

USE mysql_study;

-- 示例 1：把学号为 S006 的学生年龄改为 20
UPDATE students
SET age = 20
WHERE student_no = 'S006';

-- 查看更新结果
SELECT * FROM students WHERE student_no = 'S006';

-- 示例 2：把课程“Python开发”的学分改为 5
UPDATE courses
SET credit = 5
WHERE course_name = 'Python开发';

SELECT * FROM courses WHERE course_name = 'Python开发';

-- 危险示例（默认不要执行）：
-- 下面语句没有 WHERE，会修改整张表中的所有记录。
-- UPDATE students SET age = 18;
