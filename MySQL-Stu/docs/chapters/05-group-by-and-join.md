# 第 5 章：分组统计与多表查询

## 本章目标

这一章是从“会查表”走向“会分析数据”的关键阶段。

你会学习：

- 如何统计每个班有多少学生
- 如何计算平均分
- 如何把学生、课程、成绩三张表连起来查询

## 先理解 GROUP BY

`GROUP BY` 的作用是“先分组，再统计”。

例如：

- 按班级分组，统计每个班人数
- 按课程分组，统计每门课平均分

如果没有 `GROUP BY`，你只能看到整张表的总体统计；
有了 `GROUP BY`，你才能看到每个类别分别是什么情况。

## 再理解 JOIN

`JOIN` 是数据库里非常重要的能力，因为真实业务的数据通常分散在多张表中。

在这个项目里：

- 学生姓名在 `students`
- 课程名称在 `courses`
- 分数在 `scores`

如果你想查“谁学了什么课，考了多少分”，就必须把这三张表关联起来。

## 一个非常重要的思路

写多表查询前，不要急着敲 SQL，先问自己三个问题：

1. 我要查的字段分别在哪张表里
2. 这些表通过什么字段关联
3. 最终结果是一条明细，还是一条统计结果

只要这三个问题想清楚，多表查询就会容易很多。

## 对应脚本

- [sql/09-group-by.sql](/Users/zhouwenjing/Documents/WorkTransfer/MySQL-Stu/sql/09-group-by.sql)
- [sql/10-join.sql](/Users/zhouwenjing/Documents/WorkTransfer/MySQL-Stu/sql/10-join.sql)
- [practice/03-multi-table-exercises.sql](/Users/zhouwenjing/Documents/WorkTransfer/MySQL-Stu/practice/03-multi-table-exercises.sql)

## 初学者写 JOIN 时最常见的问题

- 忘记表别名，SQL 很长很乱
- 不清楚连接条件，导致结果重复
- 把分组统计和明细查询混在一起

建议你先从“字段在哪张表”开始拆解，再慢慢拼接。

## 章节小结

这一章学完后，你的 SQL 能力会有一次明显跃升。

你应该能做到：

- 使用 `GROUP BY` 做基础统计
- 看懂三张表之间的关系
- 用 `JOIN` 查出多表组合结果
- 区分“明细查询”和“统计查询”
