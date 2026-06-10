# 第 1 章：连接 MySQL 与进入数据库

## 本章目标

这一章的目标只有一个：先连上 MySQL，并能进入命令行环境执行最基础的查看命令。

如果这一章没有走通，后面的 SQL 学习都会卡住，所以不要急着背语法，先把环境打通。

## 你会学到什么

- MySQL 服务是什么
- 什么叫“连接数据库”
- 如何用命令行进入 MySQL
- 如何查看数据库和数据表

## 先建立一个很重要的概念

很多初学者会把 MySQL 和数据库混在一起理解，其实它们不是一回事：

- MySQL：数据库管理系统，负责存储和管理数据
- 数据库：MySQL 里面创建出来的一个数据容器
- 数据表：数据库里的具体表结构

你可以先这样理解：

- MySQL 像一栋楼
- 数据库像某一层楼
- 数据表像这一层楼里的房间
- 表里的数据像房间里的物品

## 如何连接 MySQL

如果你使用默认配置，可以这样连接：

```bash
mysql -h 127.0.0.1 -P 3306 -u root -p
```

参数含义如下：

- `-h`：主机地址
- `-P`：端口
- `-u`：用户名
- `-p`：提示输入密码

## 连接成功后可以做什么

先不要急着执行复杂 SQL，先试下面几句：

```sql
SHOW DATABASES;
USE mysql_study;
SHOW TABLES;
SELECT VERSION();
```

如果 `USE mysql_study;` 报错，通常说明你还没有创建数据库，这时需要先去执行建库脚本。

## 对应文件

- [docs/02-environment-setup.md](/Users/zhouwenjing/Documents/WorkTransfer/MySQL-Stu/docs/02-environment-setup.md)
- [docs/03-faq.md](/Users/zhouwenjing/Documents/WorkTransfer/MySQL-Stu/docs/03-faq.md)
- [examples/python/01-connect.py](/Users/zhouwenjing/Documents/WorkTransfer/MySQL-Stu/examples/python/01-connect.py)

## 学习建议

- 先在命令行里连通一次，再去写 Python
- 遇到报错时，优先排查服务、端口、用户名、密码
- 第一次连接成功后，把常用连接命令自己敲三遍

## 章节小结

这一章最重要的不是记住多少 SQL，而是建立“我能连上 MySQL，并能进入数据库环境”的信心。

你学完这一章后，至少应该做到：

- 知道 MySQL、数据库、数据表三者的关系
- 会用命令行连接 MySQL
- 会执行 `SHOW DATABASES`、`USE`、`SHOW TABLES`
