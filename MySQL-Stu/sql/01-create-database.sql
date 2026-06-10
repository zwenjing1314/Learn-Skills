-- 01-create-database.sql
-- 作用：
-- 创建学习用数据库 mysql_study。
-- utf8mb4 可以更好地支持中文和更多字符。

CREATE DATABASE IF NOT EXISTS mysql_study
CHARACTER SET utf8mb4
COLLATE utf8mb4_general_ci;

USE mysql_study;
