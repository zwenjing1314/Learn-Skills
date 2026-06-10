-- 02-create-tables.sql
-- 作用：
-- 创建学生管理系统中的三张核心表：
-- 1. students: 学生表
-- 2. courses: 课程表
-- 3. scores: 成绩表

USE mysql_study;

-- 如果表已经存在，先删除旧表。
-- 删除顺序需要先删依赖表，再删主表。
DROP TABLE IF EXISTS scores;
DROP TABLE IF EXISTS courses;
DROP TABLE IF EXISTS students;

-- 学生表
CREATE TABLE students (
    id INT PRIMARY KEY AUTO_INCREMENT COMMENT '学生主键 ID',
    student_no VARCHAR(20) NOT NULL UNIQUE COMMENT '学号，要求唯一',
    student_name VARCHAR(50) NOT NULL COMMENT '学生姓名',
    gender VARCHAR(10) NOT NULL COMMENT '性别',
    age INT NOT NULL COMMENT '年龄',
    class_name VARCHAR(50) NOT NULL COMMENT '班级名称',
    created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间'
) COMMENT='学生表';

-- 课程表
CREATE TABLE courses (
    id INT PRIMARY KEY AUTO_INCREMENT COMMENT '课程主键 ID',
    course_name VARCHAR(100) NOT NULL COMMENT '课程名称',
    teacher_name VARCHAR(50) NOT NULL COMMENT '授课老师',
    credit INT NOT NULL DEFAULT 2 COMMENT '学分'
) COMMENT='课程表';

-- 成绩表
CREATE TABLE scores (
    id INT PRIMARY KEY AUTO_INCREMENT COMMENT '成绩记录主键 ID',
    student_id INT NOT NULL COMMENT '学生 ID，关联 students.id',
    course_id INT NOT NULL COMMENT '课程 ID，关联 courses.id',
    score DECIMAL(5, 2) NOT NULL COMMENT '分数',
    exam_date DATE NOT NULL COMMENT '考试日期',
    CONSTRAINT fk_scores_student FOREIGN KEY (student_id) REFERENCES students(id),
    CONSTRAINT fk_scores_course FOREIGN KEY (course_id) REFERENCES courses(id)
) COMMENT='成绩表';
