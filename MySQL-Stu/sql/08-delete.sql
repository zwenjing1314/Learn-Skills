-- 08-delete.sql
-- 主题：
-- DELETE 用于删除表中的数据。
-- 和 UPDATE 一样，没有 WHERE 会影响整张表。

USE mysql_study;

-- 先插入一条临时数据，方便演示删除。
INSERT INTO students (student_no, student_name, gender, age, class_name)
VALUES ('S999', '临时学生', '男', 22, '测试班');

-- 确认临时数据存在
SELECT * FROM students WHERE student_no = 'S999';

-- 删除这条临时数据
DELETE FROM students
WHERE student_no = 'S999';

-- 再次查询，应该查不到任何记录
SELECT * FROM students WHERE student_no = 'S999';

-- 危险示例（默认不要执行）：
-- DELETE FROM students;
