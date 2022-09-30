
CREATE TABLE IF NOT EXISTS `student`(
     `id` INT(4) NOT NULL AUTO_INCREMENT COMMENT '学号',
     `name` VARCHAR(30) NOT NULL DEFAULT '匿名' COMMENT '姓名',
     `pwd`VARCHAR(20)NOT NULL DEFAULT '123456' COMMENT '密码',
     `sex`VARCHAR(2)NOT NULL DEFAULT '男' COMMENT '性别',
     `gradeid` INT(10) NOT NULL COMMENT '学生年级',
     `birthday`DATETIME DEFAULT NULL COMMENT '出生日期',
     `address` VARCHAR(100) DEFAULT NULL COMMENT '家庭住址',
     `emall` VARCHAR(50) DEFAULT NULL COMMENT '邮箱地址',
     PRIMARY KEY(`id`)
)ENGINE=INNODB DEFAULT CHARSET=utf8
ALTER TABLE `student` ADD CONSTRAINT `FK_gradeid` FOREIGN KEY (`gradeid`) REFERENCES `grade`(gradeid)


INSERT INTO `grade`(`gradename`) VALUES('大二'),('大一')
INSERT INTO `student`(`name`,`pwd`,`sex`) VALUES('张三','123456','男')
INSERT INTO `student`(`name`,`pwd`,`sex`) VALUES('李四','123456','男')
,('王五','aaaaaa','男')
ALTER TABLE `student` CHANGE emall email VARCHAR(50)

UPDATE `student` SET `name`='历时',`sex`='女',`email`='979015340@qq.com' WHERE id = 1;

UPDATE `student` SET `birthday`=CURRENT_TIME,`email`='2517768686@qq.com' WHERE `name` = '李阳' AND pwd='123456';


DELETE FROM `student` WHERE id = 1;


CREATE TABLE `test`(
    `id` INT(4) NOT NULL AUTO_INCREMENT,
    `coll` VARCHAR(20) NOT NULL,
    PRIMARY KEY(`id`)	 
)ENGINE=INNODB DEFAULT CHARSET=utf8

INSERT INTO `test` (`coll`) VALUES('1'),('2'),('3')

DELETE FROM `test`

TRUNCATE `test`