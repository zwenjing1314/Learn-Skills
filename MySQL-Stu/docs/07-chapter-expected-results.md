# 每章执行后的预期结果

这份文档用来回答一个很实际的问题：

“我脚本跑完了，那我现在看到的结果算不算正常？”

注意：

- 这里给的是学习用预期结果，不是唯一答案展示方式
- `EXPLAIN`、索引等内容会受到 MySQL 版本、数据量、执行计划影响，所以更适合看“方向是否正确”，不要死盯完全一样的输出

## 第 1 章：连接 MySQL 与进入数据库

你完成后，通常应该能做到：

- 能成功进入 MySQL 命令行
- `SHOW DATABASES;` 能正常返回数据库列表
- `SELECT VERSION();` 能返回当前 MySQL 版本

如果你已经完成建库：

- `USE mysql_study;` 不会报 `Unknown database`

## 第 2 章：创建数据库、数据表和初始化数据

按顺序执行完：

- [sql/00-reset.sql](/Users/zhouwenjing/Documents/WorkTransfer/MySQL-Stu/sql/00-reset.sql)
- [sql/01-create-database.sql](/Users/zhouwenjing/Documents/WorkTransfer/MySQL-Stu/sql/01-create-database.sql)
- [sql/02-create-tables.sql](/Users/zhouwenjing/Documents/WorkTransfer/MySQL-Stu/sql/02-create-tables.sql)
- [sql/03-seed-data.sql](/Users/zhouwenjing/Documents/WorkTransfer/MySQL-Stu/sql/03-seed-data.sql)

你通常应该看到：

- 数据库 `mysql_study` 已存在
- 表 `students`、`courses`、`scores` 已存在
- `students` 中有 5 条初始化学生数据
- `courses` 中有 3 条初始化课程数据
- `scores` 中有 8 条初始化成绩数据

可以用下面这些 SQL 自查：

```sql
USE mysql_study;
SELECT COUNT(*) AS student_count FROM students;
SELECT COUNT(*) AS course_count FROM courses;
SELECT COUNT(*) AS score_count FROM scores;
```

预期数量：

- `student_count = 5`
- `course_count = 3`
- `score_count = 8`

## 第 3 章：新增数据与基础查询

执行完：

- [sql/04-insert.sql](/Users/zhouwenjing/Documents/WorkTransfer/MySQL-Stu/sql/04-insert.sql)
- [sql/05-select-basic.sql](/Users/zhouwenjing/Documents/WorkTransfer/MySQL-Stu/sql/05-select-basic.sql)

你通常应该看到：

- 学号为 `S006` 的学生已经插入成功
- `courses` 表中新增了“操作系统”和“计算机网络”
- `students` 总记录数从 5 变成 6
- `courses` 总记录数从 3 变成 5

自查 SQL：

```sql
SELECT * FROM students WHERE student_no = 'S006';
SELECT COUNT(*) AS student_count FROM students;
SELECT COUNT(*) AS course_count FROM courses;
```

预期数量：

- `student_count = 6`
- `course_count = 5`

## 第 4 章：条件查询、更新与删除

执行完：

- [sql/06-select-where-order-limit.sql](/Users/zhouwenjing/Documents/WorkTransfer/MySQL-Stu/sql/06-select-where-order-limit.sql)
- [sql/07-update.sql](/Users/zhouwenjing/Documents/WorkTransfer/MySQL-Stu/sql/07-update.sql)
- [sql/08-delete.sql](/Users/zhouwenjing/Documents/WorkTransfer/MySQL-Stu/sql/08-delete.sql)

你通常应该看到：

- 各种 `WHERE`、`ORDER BY`、`LIMIT` 查询都能正常返回结果
- `S006` 的年龄被更新为 `20`
- 临时学生 `S999` 在删除后查询不到
- `students` 表最终仍然保持 6 条数据

自查 SQL：

```sql
SELECT age FROM students WHERE student_no = 'S006';
SELECT * FROM students WHERE student_no = 'S999';
SELECT COUNT(*) AS student_count FROM students;
```

预期结果：

- `S006` 的 `age = 20`
- `S999` 查询结果为空
- `student_count = 6`

## 第 5 章：分组统计与多表查询

执行完：

- [sql/09-group-by.sql](/Users/zhouwenjing/Documents/WorkTransfer/MySQL-Stu/sql/09-group-by.sql)
- [sql/10-join.sql](/Users/zhouwenjing/Documents/WorkTransfer/MySQL-Stu/sql/10-join.sql)

你通常应该看到：

- 班级人数统计结果正常
- 多表联查可以查出学生姓名、课程名称、分数
- 明细查询返回 8 条成绩记录

在当前学习数据下，班级人数通常会是：

- 一班：2 人
- 二班：2 人
- 三班：2 人

成绩明细里你应该能看到类似记录：

- 张三 / MySQL基础 / 88.50
- 张三 / Python开发 / 92.00
- 孙七 / 数据结构 / 95.50

## 第 6 章：事务基础与 Python 操作 MySQL

执行完：

- [sql/11-transaction-basic.sql](/Users/zhouwenjing/Documents/WorkTransfer/MySQL-Stu/sql/11-transaction-basic.sql)
- `examples/python/` 下的 Python 示例

你通常应该看到：

- 事务脚本里的课程学分被调整
- Python 能成功连接数据库
- Python 能查出学生列表
- `03-insert.py` 插入 `S007`
- `04-update.py` 把 `S007` 年龄改为 `21`
- `05-delete.py` 再把 `S007` 删除掉

如果你把 3、4、5 三个 Python 文件按顺序跑完，最终结果通常是：

- 表里不会保留 `S007`

## 第 7 章：子查询

执行完：

- [sql/12-subquery-basic.sql](/Users/zhouwenjing/Documents/WorkTransfer/MySQL-Stu/sql/12-subquery-basic.sql)

你通常应该看到：

- 能查出高于全表平均分的成绩记录
- 能查出参加过 “MySQL基础” 课程的学生
- 能查出平均分大于等于 `85` 的学生

在当前样例数据下，全表平均分大约是：

- `87.06`

所以“高于平均分”的成绩记录通常会包含：

- `88.50`
- `89.00`
- `91.00`
- `92.00`
- `95.50`

## 第 8 章：视图

执行完：

- [sql/13-view-basic.sql](/Users/zhouwenjing/Documents/WorkTransfer/MySQL-Stu/sql/13-view-basic.sql)

你通常应该看到：

- 视图 `v_student_score_detail` 已创建
- 视图 `v_student_avg_score` 已创建
- 视图可以像表一样直接查询

自查 SQL：

```sql
SHOW FULL TABLES WHERE TABLE_TYPE = 'VIEW';
SELECT * FROM v_student_score_detail;
SELECT * FROM v_student_avg_score;
```

## 第 9 章：索引

执行完：

- [sql/14-index-basic.sql](/Users/zhouwenjing/Documents/WorkTransfer/MySQL-Stu/sql/14-index-basic.sql)

你通常应该看到：

- `students` 上有 `idx_students_class_name`
- `courses` 上有 `idx_courses_course_name`
- `scores` 上有 `idx_scores_student_course`

自查 SQL：

```sql
SHOW INDEX FROM students;
SHOW INDEX FROM courses;
SHOW INDEX FROM scores;
```

## 第 10 章：EXPLAIN 与查询优化入门

执行完：

- [sql/15-explain-and-optimization.sql](/Users/zhouwenjing/Documents/WorkTransfer/MySQL-Stu/sql/15-explain-and-optimization.sql)

你通常应该看到：

- 每条 `EXPLAIN` 都返回一张执行计划表
- 能看到类似 `type`、`key`、`rows`、`Extra` 这些字段
- 当查询条件和索引匹配时，有机会看到对应索引名出现在 `key` 列中

注意：

- 由于当前学习数据量较小，不同 MySQL 版本下执行计划可能并不完全一致
- 所以这一章更重要的是“会读执行计划”，而不是“结果逐字完全一致”

## 推荐搭配使用

如果你发现某一章跑完后和预期差别很大，建议按这个顺序排查：

1. 回看对应章节讲解文档
2. 回看 SQL 文件中的注释
3. 对照 [docs/03-faq.md](/Users/zhouwenjing/Documents/WorkTransfer/MySQL-Stu/docs/03-faq.md)
4. 再对照 [docs/05-learning-progress-checklist.md](/Users/zhouwenjing/Documents/WorkTransfer/MySQL-Stu/docs/05-learning-progress-checklist.md)
