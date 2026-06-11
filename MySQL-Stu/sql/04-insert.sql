-- 04-insert.sql
-- 主题：
-- INSERT 用于新增数据。
-- 你可以一次插入一条，也可以一次插入多条。

USE mysql_study;

-- 为了方便重复执行，先删除可能已经存在的演示数据。
DELETE FROM students WHERE student_no = 'S006';
DELETE FROM courses WHERE course_name IN ('操作系统', '计算机网络');

-- 示例 1：插入一条新学生数据
INSERT INTO students (student_no, student_name, gender, age, class_name)
VALUES ('S006', '周八', '女', 19, '三班');

-- 查看刚刚插入的数据是否成功
SELECT * FROM students WHERE student_no = 'S006';

-- 示例 2：一次插入两条课程数据
INSERT INTO courses (course_name, teacher_name, credit)
VALUES
    ('操作系统', '黄老师', 4),
    ('计算机网络', '吴老师', 3);

-- 查看课程表最新数据
SELECT * FROM courses;
