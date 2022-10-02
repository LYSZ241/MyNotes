SELECT `studentno`,`studentname` FROM `student`

SELECT `studentno` 学号,`studentname` 学生姓名 FROM `student`

SELECT CONCAT('姓名:',`studentname`,'-->学号:',`studentno`) AS 新名字 FROM `student`

SELECT * FROM result

SELECT DISTINCT `studentno` FROM result

SELECT VERSION()

SELECT 200+100-50 计算结果

SELECT @@auto_increment_increment


SELECT `studentno`,`studentresult`+1 提分后 FROM result

SELECT `studentno`,`studentresult` FROM result WHERE `studentresult`>=70 AND `studentresult`<= 100;

SELECT `studentno`,`studentname` FROM `student` WHERE `studentname` LIKE '赵__%'

SELECT `studentno`,`studentname` FROM `student` WHERE `address` IN ('北京朝阳','广东深圳')

SELECT `studentno`,`studentname` FROM `student` WHERE `address`=NULL







