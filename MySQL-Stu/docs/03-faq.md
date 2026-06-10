# 常见问题

## 1. 为什么我连不上 MySQL？

常见原因有：

- MySQL 服务没有启动
- 端口写错了
- 用户名或密码错误
- 你的 MySQL 并不是运行在 `127.0.0.1:3306`

建议先执行：

```bash
docker compose ps
```

或者检查本机 MySQL 服务状态。

## 2. 为什么提示 `Unknown database 'mysql_study'`？

这说明数据库还没有创建，或者你连到的是另一个 MySQL 实例。

请先执行：

```bash
mysql -h 127.0.0.1 -P 3306 -u root -p < sql/01-create-database.sql
```

## 3. 为什么提示表不存在？

一般是因为还没有执行建表脚本：

```bash
mysql -h 127.0.0.1 -P 3306 -u root -p < sql/02-create-tables.sql
```

## 4. 为什么 Python 连接失败？

可以按下面顺序排查：

1. 先确认你能用命令行连上 MySQL
2. 再检查 `examples/python/db_config.py` 中的配置
3. 检查是否安装了 `PyMySQL`

## 5. `DELETE` 和 `DROP` 有什么区别？

- `DELETE`：删除表中的数据
- `DROP TABLE`：删除整张表
- `DROP DATABASE`：删除整个数据库

初学时一定要分清楚，不然很容易误删结构。

## 6. `WHERE` 为什么很重要？

因为没有 `WHERE` 的更新和删除，通常会作用于整张表。

例如下面这句：

```sql
UPDATE students SET age = 20;
```

它会把所有学生的年龄都改成 `20`。

例如下面这句：

```sql
DELETE FROM students;
```

它会删除整张表中的所有数据。

## 7. 为什么建议多写几遍查询？

因为 SQL 是一门“熟练度很重要”的语言。

你第一次看懂，不等于你第二天还能自己写出来。真正有效的方法是：

- 多执行
- 多修改条件
- 多观察结果
- 多做练习
