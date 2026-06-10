# MySQL 学习路线

这套教程按照“先连上，再操作，再写代码”的顺序安排，尽量降低刚入门时的混乱感。

## 第 1 阶段：先理解你要操作什么

你可以先建立一个最基本的认识：

- MySQL 是数据库管理系统
- 数据通常保存在数据库里的表中
- 表由行和列组成
- 我们平时写的 SQL，就是告诉数据库“要做什么”

这一阶段不要求你记住全部语法，只需要先知道：

- 数据库：像一个大文件夹
- 数据表：像一个二维表格
- 一行：一条数据
- 一列：一个字段

## 第 2 阶段：先把环境跑起来

你的第一个目标不是背语法，而是先做到：

- 能启动 MySQL
- 能连接到 MySQL
- 能进入指定数据库

如果连不上数据库，后面的学习都没法继续，所以这一步非常重要。

建议阅读：

- [docs/02-environment-setup.md](/Users/zhouwenjing/Documents/WorkTransfer/MySQL-Stu/docs/02-environment-setup.md)
- [docs/03-faq.md](/Users/zhouwenjing/Documents/WorkTransfer/MySQL-Stu/docs/03-faq.md)
- [docs/chapters/01-connect-and-enter-mysql.md](/Users/zhouwenjing/Documents/WorkTransfer/MySQL-Stu/docs/chapters/01-connect-and-enter-mysql.md)
- [docs/04-seven-day-study-plan.md](/Users/zhouwenjing/Documents/WorkTransfer/MySQL-Stu/docs/04-seven-day-study-plan.md)
- [docs/05-learning-progress-checklist.md](/Users/zhouwenjing/Documents/WorkTransfer/MySQL-Stu/docs/05-learning-progress-checklist.md)
- [docs/06-er-diagram.md](/Users/zhouwenjing/Documents/WorkTransfer/MySQL-Stu/docs/06-er-diagram.md)
- [docs/07-chapter-expected-results.md](/Users/zhouwenjing/Documents/WorkTransfer/MySQL-Stu/docs/07-chapter-expected-results.md)

## 第 3 阶段：先建库建表，再插入数据

在真正开始查询前，你需要先准备练习数据：

1. 删除旧的练习库
2. 创建新的练习库
3. 创建学生、课程、成绩三张表
4. 插入一些初始数据

对应脚本：

1. `sql/00-reset.sql`
2. `sql/01-create-database.sql`
3. `sql/02-create-tables.sql`
4. `sql/03-seed-data.sql`

配套章节：

- [docs/chapters/02-create-database-and-tables.md](/Users/zhouwenjing/Documents/WorkTransfer/MySQL-Stu/docs/chapters/02-create-database-and-tables.md)

## 第 4 阶段：学习 CRUD

CRUD 是数据库最常见的基础操作：

- Create：新增数据
- Read：读取数据
- Update：更新数据
- Delete：删除数据

对应脚本：

- `sql/04-insert.sql`
- `sql/05-select-basic.sql`
- `sql/07-update.sql`
- `sql/08-delete.sql`

配套章节：

- [docs/chapters/03-insert-and-select.md](/Users/zhouwenjing/Documents/WorkTransfer/MySQL-Stu/docs/chapters/03-insert-and-select.md)
- [docs/chapters/04-where-update-delete.md](/Users/zhouwenjing/Documents/WorkTransfer/MySQL-Stu/docs/chapters/04-where-update-delete.md)

## 第 5 阶段：学习常用查询能力

当你学会最基础的 CRUD 后，可以继续掌握更常见的查询技巧：

- `WHERE`：按条件筛选
- `ORDER BY`：排序
- `LIMIT`：限制返回条数
- `GROUP BY`：分组统计
- `JOIN`：多表联查

对应脚本：

- `sql/06-select-where-order-limit.sql`
- `sql/09-group-by.sql`
- `sql/10-join.sql`

配套章节：

- [docs/chapters/04-where-update-delete.md](/Users/zhouwenjing/Documents/WorkTransfer/MySQL-Stu/docs/chapters/04-where-update-delete.md)
- [docs/chapters/05-group-by-and-join.md](/Users/zhouwenjing/Documents/WorkTransfer/MySQL-Stu/docs/chapters/05-group-by-and-join.md)

## 第 6 阶段：理解事务

事务可以简单理解为“一组操作要么都成功，要么都失败”。

虽然初学阶段不需要深入掌握复杂事务隔离级别，但至少要知道：

- 为什么需要事务
- `START TRANSACTION`
- `COMMIT`
- `ROLLBACK`

对应脚本：

- `sql/11-transaction-basic.sql`

配套章节：

- [docs/chapters/06-transaction-and-python.md](/Users/zhouwenjing/Documents/WorkTransfer/MySQL-Stu/docs/chapters/06-transaction-and-python.md)

## 第 7 阶段：学习程序如何连接 MySQL

当你已经会手写 SQL，下一步就是让程序去执行 SQL。

本仓库提供的是 Python 示例，适合初学者快速理解：

- 怎么建立连接
- 怎么执行查询
- 怎么插入数据
- 怎么修改数据
- 怎么删除数据

对应目录：

- `examples/python/`

配套章节：

- [docs/chapters/06-transaction-and-python.md](/Users/zhouwenjing/Documents/WorkTransfer/MySQL-Stu/docs/chapters/06-transaction-and-python.md)

## 第 8 阶段：做练习巩固

学习数据库最有效的方法不是看懂，而是亲手写。

建议你这样练：

1. 先自己写题目答案
2. 再对照 `practice/answers.sql`
3. 如果答案不同，分析哪一种更准确

建议练习顺序：

1. `practice/01-basic-exercises.sql`
2. `practice/02-query-exercises.sql`
3. `practice/03-multi-table-exercises.sql`
4. `practice/04-advanced-exercises.sql`

## 第 9 阶段：学习子查询、视图、索引

当你已经掌握单表查询和多表查询后，就可以继续往进阶内容走。

这三个主题的定位可以这样理解：

- 子查询：在一条 SQL 里使用另一条 SQL 的结果
- 视图：把复杂查询封装成一个可复用入口
- 索引：帮助数据库更快定位数据

对应脚本：

- `sql/12-subquery-basic.sql`
- `sql/13-view-basic.sql`
- `sql/14-index-basic.sql`

配套章节：

- [docs/chapters/07-subquery.md](/Users/zhouwenjing/Documents/WorkTransfer/MySQL-Stu/docs/chapters/07-subquery.md)
- [docs/chapters/08-view.md](/Users/zhouwenjing/Documents/WorkTransfer/MySQL-Stu/docs/chapters/08-view.md)
- [docs/chapters/09-index.md](/Users/zhouwenjing/Documents/WorkTransfer/MySQL-Stu/docs/chapters/09-index.md)

对应练习：

- `practice/04-advanced-exercises.sql`

## 第 10 阶段：学习 EXPLAIN 与查询优化入门

当你已经知道索引和基本查询写法后，就可以开始学着判断一条 SQL 是否“只是能跑”，还是“写得更合理”。

这一步的重点不是马上掌握复杂调优，而是建立分析意识：

- 学会看执行计划
- 学会观察是否使用索引
- 学会避免明显低效的写法

对应脚本：

- `sql/15-explain-and-optimization.sql`

配套章节：

- [docs/chapters/10-explain-and-optimization.md](/Users/zhouwenjing/Documents/WorkTransfer/MySQL-Stu/docs/chapters/10-explain-and-optimization.md)

对应练习：

- `practice/05-explain-optimization-exercises.sql`

## 第 11 阶段：按章节复习和面试自查

当你完成一个章节后，不要马上跳到下一个主题。

更好的方式是：

1. 先回看章节小结
2. 再做章节自测题
3. 最后用“面试题版答案”检查自己是否真的能说清楚

对应目录：

- `docs/review/`

## 第 12 阶段：单独刷面试题

当你已经完成基础学习、章节复习和练习题后，可以把知识点切换到“口头表达模式”。

这一步的目标不是继续学新语法，而是训练自己：

- 能不能把概念说清楚
- 能不能用简洁的话回答常见问题
- 能不能把基础知识讲得有条理

对应目录：

- `docs/interview/`

推荐文档：

- [docs/interview/01-mysql-beginner-30-questions.md](/Users/zhouwenjing/Documents/WorkTransfer/MySQL-Stu/docs/interview/01-mysql-beginner-30-questions.md)
- [docs/interview/02-mysql-beginner-follow-up-20-questions.md](/Users/zhouwenjing/Documents/WorkTransfer/MySQL-Stu/docs/interview/02-mysql-beginner-follow-up-20-questions.md)
- [docs/interview/03-mysql-beginner-mock-interview-10-sets.md](/Users/zhouwenjing/Documents/WorkTransfer/MySQL-Stu/docs/interview/03-mysql-beginner-mock-interview-10-sets.md)
- [docs/interview/04-mysql-beginner-interview-cheat-cards.md](/Users/zhouwenjing/Documents/WorkTransfer/MySQL-Stu/docs/interview/04-mysql-beginner-interview-cheat-cards.md)

## 第 13 阶段：用完成度清单做复盘

当你已经学完主要内容后，最容易出现的问题不是“完全不会”，而是“好像学过，但不确定能不能独立做”。

这时候就不要继续盲目往后加内容了，而是先做一次系统复盘：

- 哪些内容你能独立完成
- 哪些内容你只是看过
- 哪些内容你一被追问就答不稳

对应文档：

- [docs/05-learning-progress-checklist.md](/Users/zhouwenjing/Documents/WorkTransfer/MySQL-Stu/docs/05-learning-progress-checklist.md)

## 第 14 阶段：用 ER 图和预期结果减少“学会错”

很多初学者不是完全不会，而是：

- 表关系理解错了
- SQL 跑出来了，但不知道结果对不对

所以在这套仓库里，建议你把下面两份资料当成“学习护栏”：

- ER 图：帮助你理清表关系
- 预期结果：帮助你判断自己有没有跑对

对应文档：

- [docs/06-er-diagram.md](/Users/zhouwenjing/Documents/WorkTransfer/MySQL-Stu/docs/06-er-diagram.md)
- [docs/07-chapter-expected-results.md](/Users/zhouwenjing/Documents/WorkTransfer/MySQL-Stu/docs/07-chapter-expected-results.md)

## 第 15 阶段：做综合挑战题收官

当你学完整套基础与进阶内容后，最好不要只停留在“看懂单个例子”。

更好的收尾方式是做一套综合挑战题，看看你能不能把：

- 多表查询
- 分组统计
- 子查询
- 视图

这些内容真正串起来。

对应练习：

- `practice/06-capstone-challenge.sql`
- `practice/06-capstone-answers.sql`

## 推荐节奏

- 每天学习 1 到 2 个 SQL 文件
- 每学完一个主题，手动改 2 到 3 个条件重新执行
- 每周把所有脚本重新跑一遍

这样会比单纯看教程记得更牢。
