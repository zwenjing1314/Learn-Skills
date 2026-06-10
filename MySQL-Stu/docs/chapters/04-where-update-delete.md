# 第 4 章：条件查询、更新与删除

## 本章目标

这一章会让你第一次真正体会到 SQL 的“控制力”。

你会学习：

- 如何按条件筛选数据
- 如何排序、限制返回条数
- 如何修改已有数据
- 如何删除指定数据

## WHERE 是很多 SQL 的核心

`WHERE` 可以理解成“只对符合条件的数据动手”。

它不仅出现在查询里，也出现在更新和删除里。

例如：

```sql
SELECT * FROM students WHERE age >= 19;
UPDATE students SET age = 20 WHERE student_no = 'S006';
DELETE FROM students WHERE student_no = 'S999';
```

你会发现，这三句 SQL 看起来不同，但都依赖 `WHERE` 来限定作用范围。

## 为什么要特别强调 UPDATE 和 DELETE

因为这两种操作都具有修改性。

如果你忘了写 `WHERE`：

- `UPDATE` 可能改掉整张表
- `DELETE` 可能删掉整张表的数据

所以初学阶段一定要形成习惯：

1. 先写 `SELECT` 检查会命中哪些数据
2. 再写 `UPDATE` 或 `DELETE`

## 对应脚本

- [sql/06-select-where-order-limit.sql](/Users/zhouwenjing/Documents/WorkTransfer/MySQL-Stu/sql/06-select-where-order-limit.sql)
- [sql/07-update.sql](/Users/zhouwenjing/Documents/WorkTransfer/MySQL-Stu/sql/07-update.sql)
- [sql/08-delete.sql](/Users/zhouwenjing/Documents/WorkTransfer/MySQL-Stu/sql/08-delete.sql)

## 你需要掌握的几个常见条件

- `=`：等于
- `>=`：大于等于
- `BETWEEN ... AND ...`：区间查询
- `LIKE '%张%'`：模糊匹配
- `ORDER BY`：排序
- `LIMIT`：限制条数

## 章节小结

这一章是 MySQL 初学者最容易出错、也最需要认真练的一章。

你学完这一章后，应该形成两个习惯：

- 任何修改型 SQL，都先确认条件范围
- 看到 `WHERE` 时，要能清楚判断它会影响哪些记录
