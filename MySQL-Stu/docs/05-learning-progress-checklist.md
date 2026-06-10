# MySQL 学习完成度清单

这份清单的目标不是让你“打卡式学习”，而是帮你判断：

- 哪些内容你已经真正掌握了
- 哪些内容只是看过，但还没练熟
- 下一步最该补哪里

建议使用方式：

1. 第一次学习时，把“已完成”留空
2. 只有当你能独立完成时再打勾
3. 每周回看一次，重新判断自己的真实掌握情况

你可以直接把下面的 `[ ]` 改成 `[x]`。

## 一、环境与基础认知

- [ ] 我知道 MySQL 是什么，能用自己的话解释“关系型数据库”
- [ ] 我知道数据库、数据表、字段、记录分别是什么
- [ ] 我已经成功启动过 MySQL
- [ ] 我已经成功用命令行连接过 MySQL
- [ ] 我会使用 `SHOW DATABASES;`
- [ ] 我会使用 `USE 数据库名;`
- [ ] 我会使用 `SHOW TABLES;`
- [ ] 我知道默认练习库是 `mysql_study`

对应资料：

- [docs/02-environment-setup.md](/Users/zhouwenjing/Documents/WorkTransfer/MySQL-Stu/docs/02-environment-setup.md)
- [docs/chapters/01-connect-and-enter-mysql.md](/Users/zhouwenjing/Documents/WorkTransfer/MySQL-Stu/docs/chapters/01-connect-and-enter-mysql.md)

## 二、建库建表与初始化数据

- [ ] 我已经执行过 [sql/00-reset.sql](/Users/zhouwenjing/Documents/WorkTransfer/MySQL-Stu/sql/00-reset.sql)
- [ ] 我已经执行过 [sql/01-create-database.sql](/Users/zhouwenjing/Documents/WorkTransfer/MySQL-Stu/sql/01-create-database.sql)
- [ ] 我已经执行过 [sql/02-create-tables.sql](/Users/zhouwenjing/Documents/WorkTransfer/MySQL-Stu/sql/02-create-tables.sql)
- [ ] 我已经执行过 [sql/03-seed-data.sql](/Users/zhouwenjing/Documents/WorkTransfer/MySQL-Stu/sql/03-seed-data.sql)
- [ ] 我知道 `students`、`courses`、`scores` 三张表分别负责什么
- [ ] 我知道 `scores` 表为什么是多表查询的关键
- [ ] 我能独立查看表结构和初始化结果

对应资料：

- [docs/chapters/02-create-database-and-tables.md](/Users/zhouwenjing/Documents/WorkTransfer/MySQL-Stu/docs/chapters/02-create-database-and-tables.md)

## 三、基础 CRUD

- [ ] 我会使用 `INSERT` 新增一条数据
- [ ] 我会使用 `SELECT *` 查询整张表
- [ ] 我会只查询指定字段
- [ ] 我会使用 `AS` 给查询结果起别名
- [ ] 我会使用 `UPDATE` 修改指定数据
- [ ] 我会使用 `DELETE` 删除指定数据
- [ ] 我知道为什么 `UPDATE` / `DELETE` 需要特别注意 `WHERE`
- [ ] 我已经完成过基础练习题

对应资料：

- [sql/04-insert.sql](/Users/zhouwenjing/Documents/WorkTransfer/MySQL-Stu/sql/04-insert.sql)
- [sql/05-select-basic.sql](/Users/zhouwenjing/Documents/WorkTransfer/MySQL-Stu/sql/05-select-basic.sql)
- [sql/07-update.sql](/Users/zhouwenjing/Documents/WorkTransfer/MySQL-Stu/sql/07-update.sql)
- [sql/08-delete.sql](/Users/zhouwenjing/Documents/WorkTransfer/MySQL-Stu/sql/08-delete.sql)
- [practice/01-basic-exercises.sql](/Users/zhouwenjing/Documents/WorkTransfer/MySQL-Stu/practice/01-basic-exercises.sql)

## 四、条件查询能力

- [ ] 我会使用 `WHERE` 做条件筛选
- [ ] 我会使用 `BETWEEN ... AND ...`
- [ ] 我会使用 `LIKE`
- [ ] 我会使用 `ORDER BY` 排序
- [ ] 我会使用 `LIMIT`
- [ ] 我能解释 `ORDER BY` 和 `GROUP BY` 的区别
- [ ] 我已经完成过查询练习题

对应资料：

- [sql/06-select-where-order-limit.sql](/Users/zhouwenjing/Documents/WorkTransfer/MySQL-Stu/sql/06-select-where-order-limit.sql)
- [practice/02-query-exercises.sql](/Users/zhouwenjing/Documents/WorkTransfer/MySQL-Stu/practice/02-query-exercises.sql)

## 五、多表查询与统计

- [ ] 我会使用 `GROUP BY`
- [ ] 我会使用 `COUNT`、`AVG`、`SUM`
- [ ] 我会写基础 `INNER JOIN`
- [ ] 我能查出“学生姓名 + 课程名称 + 分数”
- [ ] 我能写“按学生统计平均分”的查询
- [ ] 我能说清楚三张表的关联字段
- [ ] 我已经完成过多表查询练习题

对应资料：

- [sql/09-group-by.sql](/Users/zhouwenjing/Documents/WorkTransfer/MySQL-Stu/sql/09-group-by.sql)
- [sql/10-join.sql](/Users/zhouwenjing/Documents/WorkTransfer/MySQL-Stu/sql/10-join.sql)
- [practice/03-multi-table-exercises.sql](/Users/zhouwenjing/Documents/WorkTransfer/MySQL-Stu/practice/03-multi-table-exercises.sql)

## 六、事务与代码操作数据库

- [ ] 我知道事务是做什么的
- [ ] 我能解释 `COMMIT` 和 `ROLLBACK`
- [ ] 我已经执行过事务示例
- [ ] 我已经成功运行过 Python 连接 MySQL 示例
- [ ] 我能说清楚 Python 操作数据库的大致流程
- [ ] 我知道为什么 Python 里修改数据后通常要 `commit()`

对应资料：

- [sql/11-transaction-basic.sql](/Users/zhouwenjing/Documents/WorkTransfer/MySQL-Stu/sql/11-transaction-basic.sql)
- [examples/python/01-connect.py](/Users/zhouwenjing/Documents/WorkTransfer/MySQL-Stu/examples/python/01-connect.py)
- [examples/python/02-query-all.py](/Users/zhouwenjing/Documents/WorkTransfer/MySQL-Stu/examples/python/02-query-all.py)
- [examples/python/03-insert.py](/Users/zhouwenjing/Documents/WorkTransfer/MySQL-Stu/examples/python/03-insert.py)
- [examples/python/04-update.py](/Users/zhouwenjing/Documents/WorkTransfer/MySQL-Stu/examples/python/04-update.py)
- [examples/python/05-delete.py](/Users/zhouwenjing/Documents/WorkTransfer/MySQL-Stu/examples/python/05-delete.py)

## 七、进阶主题

### 子查询

- [ ] 我知道什么是子查询
- [ ] 我会写 `WHERE` 子查询
- [ ] 我能解释子查询和 `JOIN` 的思路区别

### 视图

- [ ] 我知道什么是视图
- [ ] 我会创建简单视图
- [ ] 我能解释视图和表的区别

### 索引

- [ ] 我知道索引的主要作用
- [ ] 我知道索引不是越多越好
- [ ] 我会使用 `SHOW INDEX`
- [ ] 我知道哪些字段更适合考虑加索引

### EXPLAIN 与优化

- [ ] 我知道 `EXPLAIN` 是做什么的
- [ ] 我能说出查询优化的核心目标
- [ ] 我知道为什么 `SELECT *` 不一定是好习惯
- [ ] 我知道函数处理字段可能影响索引利用

对应资料：

- [sql/12-subquery-basic.sql](/Users/zhouwenjing/Documents/WorkTransfer/MySQL-Stu/sql/12-subquery-basic.sql)
- [sql/13-view-basic.sql](/Users/zhouwenjing/Documents/WorkTransfer/MySQL-Stu/sql/13-view-basic.sql)
- [sql/14-index-basic.sql](/Users/zhouwenjing/Documents/WorkTransfer/MySQL-Stu/sql/14-index-basic.sql)
- [sql/15-explain-and-optimization.sql](/Users/zhouwenjing/Documents/WorkTransfer/MySQL-Stu/sql/15-explain-and-optimization.sql)
- [practice/04-advanced-exercises.sql](/Users/zhouwenjing/Documents/WorkTransfer/MySQL-Stu/practice/04-advanced-exercises.sql)
- [practice/05-explain-optimization-exercises.sql](/Users/zhouwenjing/Documents/WorkTransfer/MySQL-Stu/practice/05-explain-optimization-exercises.sql)

## 八、章节复习完成度

- [ ] 我已经看过第 1 章复习题
- [ ] 我已经看过第 2 章复习题
- [ ] 我已经看过第 3 章复习题
- [ ] 我已经看过第 4 章复习题
- [ ] 我已经看过第 5 章复习题
- [ ] 我已经看过第 6 章复习题
- [ ] 我已经看过第 7 章复习题
- [ ] 我已经看过第 8 章复习题
- [ ] 我已经看过第 9 章复习题
- [ ] 我已经看过第 10 章复习题
- [ ] 我已经用“每章预期结果”文档做过至少一次结果自查
- [ ] 我已经看过 ER 图，并能对照它解释三张表关系

对应资料：

- [docs/review/01-connect-review.md](/Users/zhouwenjing/Documents/WorkTransfer/MySQL-Stu/docs/review/01-connect-review.md)
- [docs/review/10-explain-optimization-review.md](/Users/zhouwenjing/Documents/WorkTransfer/MySQL-Stu/docs/review/10-explain-optimization-review.md)

## 九、面试准备完成度

- [ ] 我已经刷过基础面试题 30 题
- [ ] 我已经刷过高频追问 20 题
- [ ] 我已经练过模拟面试 10 组
- [ ] 我已经看过速记卡片版
- [ ] 我能用自己的话解释主键、外键、事务、索引、视图、子查询
- [ ] 我能在 1 分钟内说清楚自己目前掌握了哪些 MySQL 内容
- [ ] 我能在被追问时不只背定义，还能解释原因

## 十、综合挑战题完成度

- [ ] 我已经独立完成过 [practice/06-capstone-challenge.sql](/Users/zhouwenjing/Documents/WorkTransfer/MySQL-Stu/practice/06-capstone-challenge.sql)
- [ ] 我已经对照过 [practice/06-capstone-answers.sql](/Users/zhouwenjing/Documents/WorkTransfer/MySQL-Stu/practice/06-capstone-answers.sql)
- [ ] 我能独立写出学生成绩明细三表联查
- [ ] 我能独立写出按学生、按课程、按班级的统计 SQL
- [ ] 我能把子查询和视图放到真实题目里一起使用

对应资料：

- [docs/interview/01-mysql-beginner-30-questions.md](/Users/zhouwenjing/Documents/WorkTransfer/MySQL-Stu/docs/interview/01-mysql-beginner-30-questions.md)
- [docs/interview/02-mysql-beginner-follow-up-20-questions.md](/Users/zhouwenjing/Documents/WorkTransfer/MySQL-Stu/docs/interview/02-mysql-beginner-follow-up-20-questions.md)
- [docs/interview/03-mysql-beginner-mock-interview-10-sets.md](/Users/zhouwenjing/Documents/WorkTransfer/MySQL-Stu/docs/interview/03-mysql-beginner-mock-interview-10-sets.md)
- [docs/interview/04-mysql-beginner-interview-cheat-cards.md](/Users/zhouwenjing/Documents/WorkTransfer/MySQL-Stu/docs/interview/04-mysql-beginner-interview-cheat-cards.md)

## 十一、自我评级

你可以粗略给自己打一个阶段分：

- [ ] A：我已经能独立完成大部分基础操作，并能较清楚解释常见概念
- [ ] B：我已经跑通过大部分教程，但表达和独立书写还不够稳
- [ ] C：我主要还停留在“看懂”，需要更多练习
- [ ] D：我还在环境和基础概念阶段

## 十二、下一步行动

如果你发现自己很多项都没打勾，不要着急，直接按下面策略继续：

- 基础操作不稳：回到 [docs/04-seven-day-study-plan.md](/Users/zhouwenjing/Documents/WorkTransfer/MySQL-Stu/docs/04-seven-day-study-plan.md)
- 多表查询不稳：重点重刷 [practice/03-multi-table-exercises.sql](/Users/zhouwenjing/Documents/WorkTransfer/MySQL-Stu/practice/03-multi-table-exercises.sql)
- 进阶主题不稳：回看第 7 到第 10 章
- 面试表达不稳：从 `docs/interview/` 重新刷一轮
