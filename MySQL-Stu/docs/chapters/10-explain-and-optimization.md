# 第 10 章：EXPLAIN 与查询优化入门

## 本章目标

这一章帮助你从“会写 SQL”开始迈向“会判断 SQL 写得好不好”。

你会学习：

- `EXPLAIN` 是做什么的
- 为什么查询优化很重要
- 哪些 SQL 写法容易导致低效查询
- 初学阶段可以先关注哪些优化点

## 什么是 EXPLAIN

`EXPLAIN` 可以理解为“先别执行，先告诉我你准备怎么执行这条 SQL”。

它不是直接优化 SQL，而是帮助你观察数据库的执行计划。

例如：

```sql
EXPLAIN
SELECT *
FROM students
WHERE class_name = '一班';
```

通过 `EXPLAIN`，你可以初步看到：

- 会访问哪张表
- 可能使用什么索引
- 大概会扫描多少行
- 查询类型是否合理

## 初学阶段重点看什么

一开始不需要把每个字段都背下来，但建议先认识下面几个：

- `type`：访问方式，通常越靠近高效访问越好
- `key`：实际使用的索引
- `rows`：预估扫描的行数
- `Extra`：额外信息，例如是否有临时表、是否回表等

## 查询优化为什么重要

当数据量很小时，很多 SQL 看起来都“能跑”。

但当数据量上来之后，下面这些问题会越来越明显：

- 全表扫描太多
- 联表顺序不合理
- 条件字段没有索引
- 写了函数或模糊条件导致索引失效

所以优化的核心并不是“把 SQL 写复杂”，而是让数据库更高效地找到数据。

## 初学者最常见的低效写法

### 1. 查询不加条件

```sql
SELECT * FROM scores;
```

如果表很大，这种写法成本会越来越高。

### 2. 过滤条件写在函数里

例如：

```sql
SELECT *
FROM students
WHERE LEFT(student_no, 1) = 'S';
```

这种写法可能让索引难以利用。

### 3. 可以查指定列，却习惯性 `SELECT *`

当你只需要少数字段时，查所有列通常不是好习惯。

### 4. 联表后再筛选，导致中间结果过大

如果能提前过滤，通常更容易让查询更轻。

## 你现阶段最该掌握的优化思路

先不要追求复杂技巧，先掌握下面这些就已经很有价值：

1. 先用 `EXPLAIN` 看执行计划
2. 看过滤字段上是否有合适索引
3. 尽量避免不必要的 `SELECT *`
4. 多观察 `rows` 是否过大
5. 注意条件写法是否可能让索引难以生效

## 对应文件

- [sql/15-explain-and-optimization.sql](/Users/zhouwenjing/Documents/WorkTransfer/MySQL-Stu/sql/15-explain-and-optimization.sql)
- [practice/05-explain-optimization-exercises.sql](/Users/zhouwenjing/Documents/WorkTransfer/MySQL-Stu/practice/05-explain-optimization-exercises.sql)

## 章节小结

这一章学完后，你应该能理解：

- `EXPLAIN` 是观察执行计划的工具
- 查询优化的目标是减少无效扫描和不必要开销
- 初学阶段可以先从索引、过滤条件、查询列数这几个方向入手
