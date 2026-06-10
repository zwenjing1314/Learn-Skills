# 第 7 章：子查询

## 本章目标

这一章帮助你理解一个非常常见的进阶能力：在一条 SQL 里面再嵌一条 SQL。

你会学习：

- 什么是子查询
- 子查询常出现在哪些位置
- 如何用子查询解决筛选和统计问题

## 什么是子查询

子查询就是“把一个查询的结果，当成另一个查询的输入”。

例如你想查：

- 平均分大于全体平均分的成绩记录
- 选修了某门课程的学生
- 每个学生的平均分，并再基于这个结果继续筛选

这类场景都很适合使用子查询。

## 子查询的常见位置

### 1. 放在 WHERE 后面

这类最常见，用来做条件筛选。

例如：

```sql
SELECT *
FROM scores
WHERE score > (SELECT AVG(score) FROM scores);
```

### 2. 放在 FROM 后面

这时子查询会先形成一个临时结果集，再被外层查询继续使用。

这种写法通常适合“先统计，再过滤”。

### 3. 关联子查询

关联子查询会引用外层查询的字段。

它理解起来会稍难一些，但在某些“每一行都要比较一次”的场景里很常见。

## 子查询和 JOIN 的关系

很多初学者会问：子查询和 JOIN 谁更重要？

答案是：两者都重要，而且很多题目两种方式都能写出来。

可以先这样理解：

- `JOIN` 更像把多张表拼起来
- 子查询更像“先求出一个中间结果，再继续查”

## 对应脚本

- [sql/12-subquery-basic.sql](/Users/zhouwenjing/Documents/WorkTransfer/MySQL-Stu/sql/12-subquery-basic.sql)
- [practice/04-advanced-exercises.sql](/Users/zhouwenjing/Documents/WorkTransfer/MySQL-Stu/practice/04-advanced-exercises.sql)

## 章节小结

这一章学完后，你应该能理解：

- 子查询本质上是“查询中的查询”
- 子查询可以放在 `WHERE`、`FROM` 等位置
- 子查询经常用于做“先得到中间结果，再继续过滤或统计”
