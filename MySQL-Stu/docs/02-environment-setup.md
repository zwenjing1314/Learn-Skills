# 环境准备

这份文档帮助你把 MySQL 环境跑起来。你可以选择 Docker，也可以使用本机已安装的 MySQL。

## 1. 使用 Docker

这是最推荐的方式，因为环境统一、清理方便。

### 第一步：复制环境变量文件

```bash
cp .env.example .env
```

虽然当前 `docker-compose.yml` 已经写死了默认密码，但保留 `.env` 文件是为了让你熟悉常见项目结构，也方便后续扩展。

### 第二步：启动 MySQL

```bash
docker compose up -d
```

### 第三步：确认容器是否启动成功

```bash
docker compose ps
```

如果容器状态为 `running`，说明启动成功。

### 第四步：连接到 MySQL

```bash
mysql -h 127.0.0.1 -P 3306 -u root -p
```

密码默认是：

```text
123456
```

### 第二步：关闭 MySQL

```bash
docker compose down
```

## 2. 使用本机已安装的 MySQL

如果你本地已经安装 MySQL，可以直接连接：

```bash
mysql -h 127.0.0.1 -P 3306 -u root -p
```

如果端口或用户名不同，请替换成你自己的配置。

## 3. 如何初始化学习数据库

按下面顺序执行初始化脚本：

```bash
mysql -h 127.0.0.1 -P 3306 -u root -p < sql/00-reset.sql
mysql -h 127.0.0.1 -P 3306 -u root -p < sql/01-create-database.sql
mysql -h 127.0.0.1 -P 3306 -u root -p < sql/02-create-tables.sql
mysql -h 127.0.0.1 -P 3306 -u root -p < sql/03-seed-data.sql
```

## 4. 进入数据库后常用命令

连接上 MySQL 后，常用命令有：

```sql
SHOW DATABASES;
USE mysql_study;
SHOW TABLES;
DESC students;
SELECT * FROM students;
```

## 5. Python 示例需要的依赖

先创建虚拟环境：

```bash
python3 -m venv .venv
source .venv/bin/activate
```

安装依赖：

```bash
pip install -r requirements.txt
```

## 6. 建议你先检查的几件事

如果你发现 SQL 不能正常执行，可以先检查：

- MySQL 服务是否已经启动
- 端口 `3306` 是否被占用
- 用户名和密码是否正确
- 是否已经执行过建库建表脚本

如果 Python 无法连接，再继续检查：

- `examples/python/db_config.py` 中的配置是否正确
- 是否安装了 `PyMySQL`

## 7. 一个很重要的学习建议

初学时不要急着把所有命令背下来。

更好的做法是：

1. 先看懂注释
2. 再执行脚本
3. 观察结果
4. 自己改条件重新执行

这样学得更快，也更扎实。
