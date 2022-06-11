SQL Query Commands:

Prepare a student table with
id-->int
name-->string
address-->string
------------------------------------

1. CREATE TABLE students( id int, name varchar(200), address varchar(200) );

2. INSERT INTO students(id, name, address) VALUES(1, "ABC","Dhaka");

3. ALTER TABLE students ADD mobile_number varchar(20);

4. ALTER TABLE students modify mobile_number int;

5. ALTER TABLE students DROP COLUMN mobile_number;

6. INSERT INTO students(id, name, address) VALUES(2, "ABC1","Dhaka"), 

(3, "ABC3","Dhaka"),
(4, "ABC4","Dhaka"),
(5, "ABC5","Dhaka"),
(6, "ABC6","Dhaka");

7. UPDATE students SET id=2 where name="ABC3";UPDATE students SET id=3 where name="ABC4";
UPDATE students SET id=4 where name="ABC5";

8. UPDATE students SET name="ABC2" where id=2;UPDATE students SET name="ABC3" where id=3;
UPDATE students SET name="ABC4" where id=4;

9. UPDATE students SET name="ABC5" WHERE id=5;

10. UPDATE students SET name="Alam" WHERE id=1;

11. DELETE FROM students WHERE id=2;

12. SELECT * FROM `students` WHERE 1;

13. SELECT * FROM `students` WHERE id=1;

14. SELECT name FROM `students` WHERE id=1;

15. SELECT name FROM `students`;

16. SELECT DISTINCT name FROM students;

17. SELECT DISTINCT address FROM students;

18. UPDATE students SET address="Cumilla" WHERE id=1;

19. SELECT DISTINCT address FROM students;

20. SELECT *FROM students WHERE address="Dhaka";

21. SELECT *FROM students WHERE address like "D%";

22. SELECT *FROM students WHERE address like "%D";

23. SELECT *FROM students WHERE address like "%D%";

24. SELECT *FROM students WHERE address like "C%";

25. SELECT *FROM students ORDER by id DESC;

26. SELECT *FROM students ORDER by id ASC;

27. SELECT *FROM students ORDER by name;

28. SELECT MIN(id) FROM students;

29. SELECT MAX(id) FROM students;

30. SELECT COUNT(id) FROM students;

31. SELECT AVG(id) FROM students;

32. SELECT SUM(id) FROM students;

33. SELECT SUM(id) as totalSum FROM students;

in operation:

34. SELECT *FROM students WHERE address in ("Cumilla", "Khulna");

between:

35. SELECT *FROM students WHERE id BETWEEN 1 and 2;

36. SELECT *FROM students WHERE id BETWEEN 4 and 6;

37. SELECT *FROM students WHERE (id BETWEEN 1 and 2) and (name in ("Alam"));


Wild card:

38. SELECT *FROM students WHERE name LIKE "%m%";

joining

39. CREATE TABLE teacher( id int, name varchar(200), address varchar(200) );

40. CREATE TABLE teacher_student( id int, teacher_id int, student_id int);

41. INSERT INTO students(id, name, address) VALUES(1, "Mr. D","Dhaka");

42. INSERT INTO teacher(id, name, address) VALUES(1, "Mr. AAA","Dhaka");

43. -- student name
 -- teacher name
 -- 1.student TABLE
 -- 2.teacher_student TABLE
 -- 3.teacher TABLE

SELECT s.name as studentName, t.name as teacherName 
FROM students as s 
INNER JOIN teacher_student as ts on s.id=ts.student_id 
INNER JOIN teacher as t on t.id= ts.teacher_id;
 

