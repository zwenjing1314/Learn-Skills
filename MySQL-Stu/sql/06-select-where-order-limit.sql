-- 06-select-where-order-limit.sql
-- 主题：
-- 1. WHERE：条件筛选
-- 2. ORDER BY：排序
-- 3. LIMIT：限制返回条数

USE mysql_study;

-- 查询年龄大于等于 19 的学生
SELECT *
FROM students
WHERE age >= 19;

-- 查询一班的学生
SELECT *
FROM students
WHERE class_name = '一班';

-- 查询年龄在 18 到 20 之间的学生
SELECT *
FROM students
WHERE age BETWEEN 18 AND 20;

-- 查询姓名中包含“张”的学生
SELECT *
FROM students
WHERE student_name LIKE '%张%';

-- 按年龄从大到小排序
SELECT *
FROM students
ORDER BY age DESC;

-- 先按班级升序，再按年龄降序
SELECT *
FROM students
ORDER BY class_name ASC, age DESC;

-- 只取前 3 条学生记录
SELECT *
FROM students
LIMIT 3;

-- 取成绩最高的 3 条记录
SELECT *
FROM scores
ORDER BY score DESC
LIMIT 3;
