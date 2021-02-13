# 基于XML的SSM项目框架搭建测试

- 实现了用户信息管理
- 实现了用户头像上传、更新至数据库

**数据库表格设计**
```sql
CREATE TABLE `user` (
  `user_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '用户编号',
  `username` varchar(20) NOT NULL COMMENT '用户名',
  `nickname` varchar(20) DEFAULT NULL COMMENT '用户别名',
  `password` varchar(30) NOT NULL COMMENT '用户密码',
  `create_time` datetime NOT NULL COMMENT '用户账号创建日期',
  `avartar` mediumblob COMMENT '用户头像',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
```




