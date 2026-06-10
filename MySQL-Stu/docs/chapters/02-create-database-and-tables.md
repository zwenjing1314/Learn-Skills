# 第 2 章：创建数据库、数据表和初始化数据

## 本章目标

这一章带你把练习环境真正搭起来：先创建数据库，再创建数据表，最后插入初始数据。

## 先理解为什么要先建库建表

数据库学习不能只看语法，因为很多 SQL 都需要依赖一个真实的数据结构。

在这个仓库里，我们使用统一案例 `学生管理系统`，包含三张表：

- `students`：学生表
- `courses`：课程表
- `scores`：成绩表

这样的设计有两个好处：

- 既能练单表操作
- 也能练多表关联查询

## 三张表分别负责什么

### students

存学生的基本信息，例如：

- 学号
- 姓名
- 性别
- 年龄
- 班级

### courses

存课程信息，例如：

- 课程名
- 授课老师
- 学分

### scores

存学生和课程之间的成绩关系，例如：

- 哪个学生
- 哪门课程
- 考了多少分
- 哪天考试

这张表的价值非常大，因为它把学生和课程关联了起来。

## 为什么 scores 表里要放外键

你会在建表语句里看到：

- `student_id` 关联 `students.id`
- `course_id` 关联 `courses.id`

这意味着成绩表里的学生和课程必须是“真实存在”的，不能随便写一个不存在的编号。

这就是外键的意义：帮助我们维护数据关联的一致性。

## 推荐执行顺序

1. [sql/00-reset.sql](/Users/zhouwenjing/Documents/WorkTransfer/MySQL-Stu/sql/00-reset.sql)
2. [sql/01-create-database.sql](/Users/zhouwenjing/Documents/WorkTransfer/MySQL-Stu/sql/01-create-database.sql)
3. [sql/02-create-tables.sql](/Users/zhouwenjing/Documents/WorkTransfer/MySQL-Stu/sql/02-create-tables.sql)
4. [sql/03-seed-data.sql](/Users/zhouwenjing/Documents/WorkTransfer/MySQL-Stu/sql/03-seed-data.sql)

## 执行后你应该检查什么

执行完后，建议手动验证：

```sql
USE mysql_study;
SHOW TABLES;
SELECT * FROM students;
SELECT * FROM courses;
SELECT * FROM scores;
```

这样做的目的不是重复，而是帮助你确认：

- 表有没有建出来
- 数据有没有插进去
- 表和表之间的关系是否合理

## 初学者常见误区

- 以为“有数据库”就一定“有数据表”
- 以为建表成功后就自动有测试数据
- 忽略外键关系，导致后面不理解 JOIN

## 章节小结

这一章的核心是把学习环境准备完整。

你学完这一章后，应该能说清楚：

- 为什么我们要先建数据库再建表
- 三张表分别存什么
- `scores` 为什么是多表查询的关键
- 如何验证初始化是否成功
