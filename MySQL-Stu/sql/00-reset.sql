-- 00-reset.sql
-- 作用：
-- 为了方便重复学习，这个脚本会删除旧的练习数据库。
-- 如果数据库不存在，IF EXISTS 可以避免报错。

DROP DATABASE IF EXISTS mysql_study;
