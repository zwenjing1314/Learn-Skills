# 第 6 章：事务基础与 Python 操作 MySQL

## 本章目标

这一章把两个很实用的内容放在一起：

- 理解事务的基本作用
- 学会用 Python 连接并操作 MySQL

## 先理解事务在解决什么问题

事务的核心思想很简单：

一组相关操作，要么全部成功，要么全部取消。

例如课程学分调整时，如果第一条更新成功、第二条更新失败，就可能出现数据不一致。
这时事务就能保证这组操作按一个整体处理。

你在脚本中会看到：

- `START TRANSACTION`
- `COMMIT`
- `ROLLBACK`

这三个关键词是事务学习的第一步。

## 再理解 Python 是怎么操作数据库的

当你在命令行里写 SQL 时，是“人”在操作数据库。
当你在 Python 里执行 SQL 时，是“程序”在操作数据库。

这通常分成四步：

1. 建立连接
2. 创建游标
3. 执行 SQL
4. 提交事务并关闭连接

## 对应文件

- [sql/11-transaction-basic.sql](/Users/zhouwenjing/Documents/WorkTransfer/MySQL-Stu/sql/11-transaction-basic.sql)
- [examples/python/01-connect.py](/Users/zhouwenjing/Documents/WorkTransfer/MySQL-Stu/examples/python/01-connect.py)
- [examples/python/02-query-all.py](/Users/zhouwenjing/Documents/WorkTransfer/MySQL-Stu/examples/python/02-query-all.py)
- [examples/python/03-insert.py](/Users/zhouwenjing/Documents/WorkTransfer/MySQL-Stu/examples/python/03-insert.py)
- [examples/python/04-update.py](/Users/zhouwenjing/Documents/WorkTransfer/MySQL-Stu/examples/python/04-update.py)
- [examples/python/05-delete.py](/Users/zhouwenjing/Documents/WorkTransfer/MySQL-Stu/examples/python/05-delete.py)

## 一个非常值得养成的习惯

只要你的 SQL 会修改数据，就要记得：

- 是否需要 `commit`
- 是否需要先查询确认范围
- 是否需要考虑失败时回滚

这会帮助你从“会写 SQL”逐渐成长为“会安全地操作数据库”。

## 章节小结

这一章帮助你完成从“手动操作数据库”到“程序操作数据库”的过渡。

你学完后，应该能理解：

- 事务为什么能保证一组操作的一致性
- `COMMIT` 和 `ROLLBACK` 分别意味着什么
- Python 如何连接 MySQL 并执行查询、插入、更新、删除
