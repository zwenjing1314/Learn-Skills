# MySQL 初学者面试速记卡片版

这份文档适合在面试前快速过一遍，不适合替代系统学习。

如果前面几份文档是用来“学会”和“练会说”，这份更像“最后 10 分钟快速扫重点”。

建议使用方式：

1. 面试前快速看一遍
2. 每张卡片只记核心关键词
3. 看到关键词后，自己能口头展开 1 到 3 句即可

## 卡片 1：MySQL 是什么

- 关系型数据库管理系统
- 用 SQL 操作数据
- 常用于业务系统和网站开发

## 卡片 2：数据库、表、字段、记录

- 数据库：数据容器
- 表：二维结构
- 字段：列
- 记录：行

## 卡片 3：SQL 是什么

- 结构化查询语言
- 能查
- 能增删改
- 能建库建表

## 卡片 4：主键

- 唯一标识一条记录
- 不能重复
- 不能为 `NULL`
- 一张表通常一个主键

## 卡片 5：外键

- 建立表之间关系
- 通常引用另一张表主键
- 保证关联数据一致性

## 卡片 6：CRUD

- Create：新增
- Read：查询
- Update：修改
- Delete：删除

## 卡片 7：WHERE

- 限定作用范围
- 查询、更新、删除都能用
- 不写可能影响整张表

## 卡片 8：UPDATE / DELETE 风险点

- 风险最大的是没写好 `WHERE`
- 先 `SELECT` 再修改
- 先确认命中范围

## 卡片 9：ORDER BY / GROUP BY

- `ORDER BY`：排序
- `GROUP BY`：分组统计
- 一个看顺序，一个做聚合

## 卡片 10：聚合函数

- `COUNT`：数量
- `AVG`：平均值
- `SUM`：求和
- `MAX` / `MIN`：最大 / 最小

## 卡片 11：JOIN

- 多表查询核心语法
- 先想字段在哪张表
- 再想表靠什么字段关联

## 卡片 12：INNER JOIN

- 只返回匹配成功的数据
- 两边都要有对应记录

## 卡片 13：事务

- 一组操作作为整体执行
- 要么都成功
- 要么都失败
- 核心：保证一致性

## 卡片 14：COMMIT / ROLLBACK

- `COMMIT`：提交生效
- `ROLLBACK`：撤销修改

## 卡片 15：索引

- 作用：提升查询效率
- 本质：更快定位数据
- 像书的目录

## 卡片 16：索引不是越多越好

- 占空间
- 影响插入、更新、删除
- 优先建在 `WHERE` / `JOIN` / `ORDER BY` 字段上

## 卡片 17：视图

- 保存查询逻辑
- 简化复杂查询
- 用法像表
- 底层依赖原表

## 卡片 18：子查询

- 查询中的查询
- 先得中间结果
- 再给外层查询使用

## 卡片 19：NULL

- 表示未知 / 缺失
- 不等于空字符串
- 不等于 0
- 判断用 `IS NULL`

## 卡片 20：SELECT *

- 方便但不总推荐
- 会查所有列
- 更好的习惯是按需查询字段

## 卡片 21：EXPLAIN

- 看执行计划
- 看 SQL 怎么执行
- 辅助判断是否有优化空间

## 卡片 22：查询优化核心目标

- 更低成本拿到正确结果
- 减少无效扫描
- 提高索引利用率

## 卡片 23：分页查询

- 分批取数据
- 常用 `LIMIT`
- 避免一次查太多

## 卡片 24：主键 vs 唯一约束

- 都能防重复
- 主键更偏核心标识
- 唯一约束可以有多个

## 卡片 25：子查询 vs JOIN

- `JOIN`：联表组合结果
- 子查询：先中间结果，再外层使用
- 很多题两种写法都能做

## 卡片 26：视图 vs 表

- 表：真实数据存储
- 视图：查询逻辑封装

## 卡片 27：为什么先写 SELECT

- 先确认命中范围
- 避免误改误删
- 是安全习惯

## 卡片 28：多表查询思路

- 字段在哪张表
- 表怎么关联
- 要明细还是统计

## 卡片 29：面试时怎么说自己掌握情况

- 先说已掌握范围
- 再说还在深入的内容
- 诚实、清晰、别硬装全会

## 卡片 30：初学者最重要的方法意识

- 会写 SQL
- 会跑 SQL
- 会解释 SQL
- 会判断风险

## 推荐搭配顺序

1. [docs/interview/01-mysql-beginner-30-questions.md](/Users/zhouwenjing/Documents/WorkTransfer/MySQL-Stu/docs/interview/01-mysql-beginner-30-questions.md)
2. [docs/interview/02-mysql-beginner-follow-up-20-questions.md](/Users/zhouwenjing/Documents/WorkTransfer/MySQL-Stu/docs/interview/02-mysql-beginner-follow-up-20-questions.md)
3. [docs/interview/03-mysql-beginner-mock-interview-10-sets.md](/Users/zhouwenjing/Documents/WorkTransfer/MySQL-Stu/docs/interview/03-mysql-beginner-mock-interview-10-sets.md)
4. [docs/interview/04-mysql-beginner-interview-cheat-cards.md](/Users/zhouwenjing/Documents/WorkTransfer/MySQL-Stu/docs/interview/04-mysql-beginner-interview-cheat-cards.md)
