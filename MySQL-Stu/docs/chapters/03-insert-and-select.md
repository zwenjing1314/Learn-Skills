# 第 3 章：新增数据与基础查询

## 本章目标

这一章开始真正进入“操作数据”阶段，重点掌握：

- 如何新增数据
- 如何查询全部数据
- 如何只查指定字段
- 如何给字段起别名

## INSERT 在做什么

`INSERT` 的作用是往表里新增数据。

最常见的写法是：

```sql
INSERT INTO 表名 (字段1, 字段2, 字段3)
VALUES (值1, 值2, 值3);
```

这里最需要注意的是：

- 字段顺序和数值顺序必须一一对应
- 字段类型要匹配
- 唯一字段不能重复，例如学号

## SELECT 为什么这么重要

`SELECT` 是你之后使用频率最高的 SQL。

因为无论是查数据、核对插入结果、确认更新结果，几乎都离不开它。

这一章里你需要先掌握最基础的几种写法：

- `SELECT * FROM students;`
- `SELECT student_name, class_name FROM students;`
- `SELECT age AS 年龄 FROM students;`

## 对应脚本

- [sql/04-insert.sql](/Users/zhouwenjing/Documents/WorkTransfer/MySQL-Stu/sql/04-insert.sql)
- [sql/05-select-basic.sql](/Users/zhouwenjing/Documents/WorkTransfer/MySQL-Stu/sql/05-select-basic.sql)

## 学习时建议关注什么

- 插入前后数据有何变化
- `SELECT *` 和只查指定列有什么差别
- 别名是否让结果更易读

## 一个很实用的习惯

每次 `INSERT` 完成后，立即写一条 `SELECT` 去确认结果。

这样你会更快建立“写入数据”和“读取结果”之间的联系。

## 章节小结

这一章是从“数据库结构”走向“真实操作”的关键一步。

你学完这一章后，至少应该会：

- 使用 `INSERT` 新增一条或多条数据
- 使用 `SELECT *` 查看整张表
- 查询指定列
- 使用 `AS` 给结果列起别名
