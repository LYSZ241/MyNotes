DROP DATABASE IF EXISTS `school`

CREATE TABLE IF NOT EXISTS `grade` (
    `gradeid` INT(10) NOT NULL AUTO_INCREMENT COMMENT '年纪id',
    `gradename` VARCHAR(50) NOT NULL COMMENT '年级名称',
    PRIMARY KEY (`gradeid`)
)ENGINE=INNODB DEFAULT CHARSET=utf8
DROP TABLE IF EXISTS `student` 
CREATE TABLE IF NOT EXISTS `student`(
     `id` INT(4) NOT NULL AUTO_INCREMENT COMMENT '学号',
     `name` VARCHAR(30) NOT NULL DEFAULT '匿名' COMMENT '姓名',
     `pwd`VARCHAR(20)NOT NULL DEFAULT '123456' COMMENT '密码',
     `sex`VARCHAR(2)NOT NULL DEFAULT '男' COMMENT '性别',
     `birthday`DATETIME DEFAULT NULL COMMENT '出生日期',
     `gradeid` INT(10) NOT NULL COMMENT '学生的年级',
     `address` VARCHAR(100) DEFAULT NULL COMMENT '家庭住址',
     `emall` VARCHAR(50) DEFAULT NULL COMMENT '邮箱地址',
     PRIMARY KEY(`id`),
     KEY `FK_gradeid` (`gradeid`),
     CONSTRAINT `FK_gradeid` FOREIGN KEY (`gradeid`) REFERENCES `grade` (`gradeid`)
)ENGINE=INNODB DEFAULT CHARSET=utf8