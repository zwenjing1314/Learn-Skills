# 7 天 MySQL 学习计划

这份计划适合刚入门的学习者，目标不是 7 天“学完 MySQL”，而是 7 天内把最核心的操作链路跑通：

- 能连接 MySQL
- 能建库建表
- 能完成增删改查
- 能写基础多表查询
- 能理解子查询、视图、索引这些进阶概念

建议每天投入时间：

- 工作日：45 到 90 分钟
- 周末：90 到 120 分钟

## 第 1 天：先把环境跑起来

### 今日目标

- 搭好 MySQL 环境
- 学会用命令行连接 MySQL
- 知道数据库、数据表、SQL 分别是什么

### 今天看什么

- [docs/02-environment-setup.md](/Users/zhouwenjing/Documents/WorkTransfer/MySQL-Stu/docs/02-environment-setup.md)
- [docs/chapters/01-connect-and-enter-mysql.md](/Users/zhouwenjing/Documents/WorkTransfer/MySQL-Stu/docs/chapters/01-connect-and-enter-mysql.md)

### 今天做什么

1. 启动 MySQL
2. 执行连接命令
3. 在 MySQL 中执行：

```sql
SHOW DATABASES;
SELECT VERSION();
```

### 今日检查点

- 你能不能独立连接到 MySQL
- 你是否知道 `mysql -h -P -u -p` 这几个参数是什么意思

## 第 2 天：建库、建表、灌入测试数据

### 今日目标

- 能创建数据库
- 能创建三张核心表
- 能看懂学生、课程、成绩三张表的关系

### 今天看什么

- [docs/chapters/02-create-database-and-tables.md](/Users/zhouwenjing/Documents/WorkTransfer/MySQL-Stu/docs/chapters/02-create-database-and-tables.md)

### 今天做什么

按顺序执行：

1. [sql/00-reset.sql](/Users/zhouwenjing/Documents/WorkTransfer/MySQL-Stu/sql/00-reset.sql)
2. [sql/01-create-database.sql](/Users/zhouwenjing/Documents/WorkTransfer/MySQL-Stu/sql/01-create-database.sql)
3. [sql/02-create-tables.sql](/Users/zhouwenjing/Documents/WorkTransfer/MySQL-Stu/sql/02-create-tables.sql)
4. [sql/03-seed-data.sql](/Users/zhouwenjing/Documents/WorkTransfer/MySQL-Stu/sql/03-seed-data.sql)

### 今日检查点

- 你能不能说出 `students`、`courses`、`scores` 各自的职责
- 你是否知道 `scores` 为什么能把学生和课程关联起来

## 第 3 天：学会插入和基础查询

### 今日目标

- 学会 `INSERT`
- 学会 `SELECT *`
- 学会查询指定列和使用别名

### 今天看什么

- [docs/chapters/03-insert-and-select.md](/Users/zhouwenjing/Documents/WorkTransfer/MySQL-Stu/docs/chapters/03-insert-and-select.md)

### 今天做什么

1. 执行 [sql/04-insert.sql](/Users/zhouwenjing/Documents/WorkTransfer/MySQL-Stu/sql/04-insert.sql)
2. 执行 [sql/05-select-basic.sql](/Users/zhouwenjing/Documents/WorkTransfer/MySQL-Stu/sql/05-select-basic.sql)
3. 完成 [practice/01-basic-exercises.sql](/Users/zhouwenjing/Documents/WorkTransfer/MySQL-Stu/practice/01-basic-exercises.sql) 前 3 题

### 今日检查点

- 你是否能自己插入一条学生数据
- 你是否能区分“查所有列”和“只查指定列”

## 第 4 天：掌握条件查询、更新和删除

### 今日目标

- 学会用 `WHERE` 限定范围
- 学会 `ORDER BY`、`LIMIT`
- 理解更新和删除的风险点

### 今天看什么

- [docs/chapters/04-where-update-delete.md](/Users/zhouwenjing/Documents/WorkTransfer/MySQL-Stu/docs/chapters/04-where-update-delete.md)

### 今天做什么

1. 执行 [sql/06-select-where-order-limit.sql](/Users/zhouwenjing/Documents/WorkTransfer/MySQL-Stu/sql/06-select-where-order-limit.sql)
2. 执行 [sql/07-update.sql](/Users/zhouwenjing/Documents/WorkTransfer/MySQL-Stu/sql/07-update.sql)
3. 执行 [sql/08-delete.sql](/Users/zhouwenjing/Documents/WorkTransfer/MySQL-Stu/sql/08-delete.sql)
4. 完成 [practice/01-basic-exercises.sql](/Users/zhouwenjing/Documents/WorkTransfer/MySQL-Stu/practice/01-basic-exercises.sql) 后 2 题和 [practice/02-query-exercises.sql](/Users/zhouwenjing/Documents/WorkTransfer/MySQL-Stu/practice/02-query-exercises.sql)

### 今日检查点

- 你是否真正理解“没有 `WHERE` 会发生什么”
- 你能不能先写 `SELECT` 再写 `UPDATE` / `DELETE`

## 第 5 天：突破多表查询

### 今日目标

- 学会 `GROUP BY`
- 学会 `JOIN`
- 能写出学生、课程、成绩三张表的多表查询

### 今天看什么

- [docs/chapters/05-group-by-and-join.md](/Users/zhouwenjing/Documents/WorkTransfer/MySQL-Stu/docs/chapters/05-group-by-and-join.md)

### 今天做什么

1. 执行 [sql/09-group-by.sql](/Users/zhouwenjing/Documents/WorkTransfer/MySQL-Stu/sql/09-group-by.sql)
2. 执行 [sql/10-join.sql](/Users/zhouwenjing/Documents/WorkTransfer/MySQL-Stu/sql/10-join.sql)
3. 完成 [practice/03-multi-table-exercises.sql](/Users/zhouwenjing/Documents/WorkTransfer/MySQL-Stu/practice/03-multi-table-exercises.sql)

### 今日检查点

- 你能否独立说出三张表的关联字段
- 你能否写出“学生姓名 + 课程名称 + 分数”这样的查询

## 第 6 天：理解事务，并用 Python 操作数据库

### 今日目标

- 知道事务为什么存在
- 学会用 Python 连接数据库并执行 CRUD

### 今天看什么

- [docs/chapters/06-transaction-and-python.md](/Users/zhouwenjing/Documents/WorkTransfer/MySQL-Stu/docs/chapters/06-transaction-and-python.md)

### 今天做什么

1. 执行 [sql/11-transaction-basic.sql](/Users/zhouwenjing/Documents/WorkTransfer/MySQL-Stu/sql/11-transaction-basic.sql)
2. 运行：
   - [examples/python/01-connect.py](/Users/zhouwenjing/Documents/WorkTransfer/MySQL-Stu/examples/python/01-connect.py)
   - [examples/python/02-query-all.py](/Users/zhouwenjing/Documents/WorkTransfer/MySQL-Stu/examples/python/02-query-all.py)
   - [examples/python/03-insert.py](/Users/zhouwenjing/Documents/WorkTransfer/MySQL-Stu/examples/python/03-insert.py)
   - [examples/python/04-update.py](/Users/zhouwenjing/Documents/WorkTransfer/MySQL-Stu/examples/python/04-update.py)
   - [examples/python/05-delete.py](/Users/zhouwenjing/Documents/WorkTransfer/MySQL-Stu/examples/python/05-delete.py)

### 今日检查点

- 你能不能解释 `COMMIT` 和 `ROLLBACK`
- 你是否知道 Python 里为什么要 `commit()`

## 第 7 天：进入进阶主题

### 今日目标

- 理解子查询的常见写法
- 知道视图的作用
- 理解索引是为了解决什么问题
- 初步看懂 `EXPLAIN` 和查询优化思路

### 今天看什么

- [docs/chapters/07-subquery.md](/Users/zhouwenjing/Documents/WorkTransfer/MySQL-Stu/docs/chapters/07-subquery.md)
- [docs/chapters/08-view.md](/Users/zhouwenjing/Documents/WorkTransfer/MySQL-Stu/docs/chapters/08-view.md)
- [docs/chapters/09-index.md](/Users/zhouwenjing/Documents/WorkTransfer/MySQL-Stu/docs/chapters/09-index.md)
- [docs/chapters/10-explain-and-optimization.md](/Users/zhouwenjing/Documents/WorkTransfer/MySQL-Stu/docs/chapters/10-explain-and-optimization.md)

### 今天做什么

1. 执行 [sql/12-subquery-basic.sql](/Users/zhouwenjing/Documents/WorkTransfer/MySQL-Stu/sql/12-subquery-basic.sql)
2. 执行 [sql/13-view-basic.sql](/Users/zhouwenjing/Documents/WorkTransfer/MySQL-Stu/sql/13-view-basic.sql)
3. 执行 [sql/14-index-basic.sql](/Users/zhouwenjing/Documents/WorkTransfer/MySQL-Stu/sql/14-index-basic.sql)
4. 执行 [sql/15-explain-and-optimization.sql](/Users/zhouwenjing/Documents/WorkTransfer/MySQL-Stu/sql/15-explain-and-optimization.sql)
5. 完成 [practice/04-advanced-exercises.sql](/Users/zhouwenjing/Documents/WorkTransfer/MySQL-Stu/practice/04-advanced-exercises.sql)
6. 完成 [practice/05-explain-optimization-exercises.sql](/Users/zhouwenjing/Documents/WorkTransfer/MySQL-Stu/practice/05-explain-optimization-exercises.sql)

### 今日检查点

- 你能否分清“子查询”和“JOIN”分别适合什么场景
- 你是否知道视图本质上保存的是查询逻辑
- 你是否知道索引通常是为了加快查询，而不是为了装饰数据库
- 你是否能说出 `EXPLAIN` 至少是用来“看 SQL 怎么执行”的

## 最后提醒

7 天结束后，不代表你已经学完 MySQL，而是你已经搭起了一个足够稳固的基础骨架。

如果你学完这 7 天还想继续深入，下一步建议是：

1. 继续加强多表查询和子查询
2. 学习索引优化和 `EXPLAIN`
3. 再学习约束、存储过程、权限管理等更进阶主题
