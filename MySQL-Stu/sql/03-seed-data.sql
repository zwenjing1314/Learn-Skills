-- 03-seed-data.sql
-- 作用：
-- 为三张表插入一些初始数据。
-- 这些数据会在后面的查询、更新、删除、联表中反复使用。

USE mysql_study;

INSERT INTO students (student_no, student_name, gender, age, class_name)
VALUES
    ('S001', '张三', '男', 18, '一班'),
    ('S002', '李四', '女', 19, '一班'),
    ('S003', '王五', '男', 20, '二班'),
    ('S004', '赵六', '女', 18, '二班'),
    ('S005', '孙七', '男', 21, '三班');

INSERT INTO courses (course_name, teacher_name, credit)
VALUES
    ('MySQL基础', '陈老师', 3),
    ('Python开发', '林老师', 4),
    ('数据结构', '周老师', 3);

INSERT INTO scores (student_id, course_id, score, exam_date)
VALUES
    (1, 1, 88.50, '2026-04-01'),
    (1, 2, 92.00, '2026-04-02'),
    (2, 1, 79.50, '2026-04-01'),
    (2, 3, 85.00, '2026-04-03'),
    (3, 1, 91.00, '2026-04-01'),
    (3, 2, 76.00, '2026-04-02'),
    (4, 2, 89.00, '2026-04-02'),
    (5, 3, 95.50, '2026-04-03');
