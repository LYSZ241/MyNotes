
SELECT * FROM student
SELECT * FROM result

SELECT s.`studentno`,`studentname`,`subjectno`,`studentresult`
FROM student AS s
INNER JOIN result AS r
WHERE s.studentNo = r.studentNo


SELECT s.`studentno`,`studentname`,`subjectno`,`studentresult`
FROM student AS s
RIGHT JOIN result AS r
WHERE s.studentNo = r.studentNo

SELECT s.`studentno`,`studentname`,`subjectno`,`studentresult`
FROM student s
RIGHT JOIN result r
ON s.studentNo = r.studentNo

SELECT s.studentNo,studentname,subjectname,studentresult
FROM student s
RIGHT JOIN result r
ON r.studentNo = s.studentNo
LEFT JOIN `subject` sb
ON sb.subjectNo = r.subjectNo






