CREATE DATABASE school;
school=# CREATE TABLE classes(
school(#     pk_class_id SERIAL PRIMARY KEY,
school(#     class_name VARCHAR(100)
school(#     );
CREATE TABLE

school=# CREATE TABLE subjects(
school(#     pk_subject_id SERIAL PRIMARY KEY,
school(#     subjects VARCHAR(200)
school(# );
CREATE TABLE

school=# CREATE TABLE students(
school(#     pk_students_id SERIAL PRIMARY KEY,
school(#     student_name VARCHAR(200),
school(#     date_of_birth DATE,
school(#     contact_number INT,
school(#     name_of_gardian VARCHAR(100),
school(#     fk_subject_id INT,
school(#     FOREIGN KEY(fk_subject_id)REFERENCES classes(pk_class_id)
school(#     ON DELETE CASCADE ON UPDATE CASCADE
school(# );
CREATE TABLE

school=# CREATE TABLE teachers (
school(#     pk_teacher_id SERIAL PRIMARY KEY,
school(#     t_name VARCHAR(200),
school(#     fk_student_id INT
school(# );
CREATE TABLE

 CREATE TABLE examination(
    pk_exam_id SERIAL PRIMARY KEY,
    exam_name VARCHAR(200),
    date  date,
    fk_subject_id INT,
    FOREIGN KEY(fk_subject_id)REFERENCES subjects(pk_subject_id)
    ON DELETE CASCADE ON UPDATE CASCADE
);

school=# INSERT INTO classes VALUES
school-# (1,'10TH A'),
school-# (2,'10TH B'),
school-# (3,'10TH C'),
school-# (4,'10TH D'),
school-# (5,'10TH E'),
school-# (6,'10TH F');
INSERT 0 6

school=#  INSERT INTO subjects VALUES
school-#  (1,'maths'),
school-#  (2,'english'),
school-#  (3,'social'),
school-#  (4,'computer'),
school-#  (5,'physics'),
school-#  (6,'chemistry'),
school-#  (7,'biology'),
school-#  (8,'hindi');
INSERT 0 8

school=# INSERT INTO students VALUES
school-# ( 1 ,'fathima','2002-04-22',98471105,'shafi',1 ),
school-# ( 2 ,'fida','2002-04-23',98471106,'shafi',1 ),
school-# ( 3 ,'hafi','2002-02-19',98471101,'ashique',2 ),
school-# ( 4 ,'fadil','2002-08-27',98471107,'jiyaf',1 ),
school-# ( 5 ,'nishal','2002-04-26',98471104,'salman',2 ),
school-# ( 6 ,'ajmal','2002-05-22',98471102,'noufal',3 ),
school-# ( 7,'nida','2002-06-22',98471103,'jamal',3),
school-# ( 8 ,'minha','2002-07-22',98471103,'salim',4 ),
school-# ( 9 ,'hiba','2002-08-22',88471105,'anvar',4 ),
school-# ( 10 ,'aysha','2002-09-22',78471105,'ajmal',5 ),
school-# ( 11,'afi','2002-01-22',68471105,'rasi',5),
school-# ( 12,'kadeeja','2002-04-11',58471105,'neida',6 ),
school-# ( 13 ,'diya','2002-04-14',48471105,'nasi',6 ),
school-# ( 14,'sana','2002-04-20',38471105,'naju',2),
school-# ( 15,'noor','2002-04-25',28471105,'shafi',3 );
INSERT 0 15

school=# INSERT INTO teachers VALUES
school-# (1,'reshma',2),
school-# (2,'mathew',1),
school-# (3,'rehana',5),
school-# (4,'salam',4),
school-# (5,'megha',6),
school-# (6,'john',3);
INSERT 0 6

school=# INSERT INTO examination VALUES
school-# (1,'midterm','2017-08-11',1),
school-# (2,'midterm','2017-08-11',4),
school-# (3,'midterm','2017-08-11',7),
school-# (4,'midterm','2017-08-11',8),
school-# (5,'monthly','2017-06-10',2),
school-# (6,'monthly','2017-06-10',5),
school-# (7,'monthly','2017-06-10',9),
school-# (8,'monthly','2017-06-10',11),
school-# (9,'monthly','2017-08-11',3),
school-# (10,'classtext','2017-10-11',10),
school-# (11,'classtext','2017-10-11',6),
school-# (12,'classtext','2017-10-11',12),
school-# (13,'classtext','2017-10-11',13),
school-# (14,'classtext','2017-10-11',14);
INSERT 0 14



alter table teachers add constraint

ALTER TABLE students DROP COLUMN  fk_subject_id ;
ALTER TABLE students ADD CONSTRAINT fk_class_id 
  FOREIGN KEY(fk_cLass_id)REFERENCES classes(pk_class_id)
  ON DELETE CASCADE ON UPDATE CASCADE  ;

ALTER TABLE teachers DROP COLUMN  fk_student_id ;
ALTER TABLE teachers ADD  fk_subject_id INT;
ALTER TABLE teachers ADD CONSTRAINT fk_subject_id 
  FOREIGN KEY(fk_subject_id)REFERENCES subjects(pk_subject_id)
  ON DELETE CASCADE ON UPDATE CASCADE ;

 CREATE TABLE examination(
    pk_exam_id SERIAL PRIMARY KEY,
    exam_name VARCHAR(200),
    date  date,
    fk_subject_id INT,
    FOREIGN KEY(fk_subject_id)REFERENCES subjects(pk_subject_id)
    ON DELETE CASCADE ON UPDATE CASCADE
);

school=# INSERT INTO examination VALUES
school-#  (1,'midterm','2017-08-11',1),
school-#  (2,'midterm','2017-08-11',2),
school-#  (3,'monthly','2017-06-10',2),
school-#  (4,'monthly','2017-06-10',3),
school-#  (5,'monthly','2017-06-10',4),
school-#  (6,'monthly','2017-06-10',8),
school-#  (7,'monthly','2017-08-11',5),
school-#  (8,'classtext','2017-10-11',7),
school-#  (9,'classtext','2017-10-11',6),
school-#  (10,'classtext','2017-10-11',8);
INSERT 0 10

UPDATE students SET fk_cLass_id = 1 WHERE pk_students_id = 1;
UPDATE students SET fk_cLass_id = 1 WHERE pk_students_id = 2;
UPDATE students SET fk_cLass_id = 2 WHERE pk_students_id = 3;
UPDATE students SET fk_cLass_id = 2 WHERE pk_students_id = 4;
UPDATE students SET fk_cLass_id = 3 WHERE pk_students_id = 5;
UPDATE students SET fk_cLass_id = 3 WHERE pk_students_id = 6;
UPDATE students SET fk_cLass_id = 4 WHERE pk_students_id = 7;
UPDATE students SET fk_cLass_id = 4 WHERE pk_students_id = 8;
UPDATE students SET fk_cLass_id = 5 WHERE pk_students_id = 9;
UPDATE students SET fk_cLass_id = 6 WHERE pk_students_id = 10;
UPDATE students SET fk_cLass_id = 6 WHERE pk_students_id = 11;
UPDATE students SET fk_cLass_id = 5 WHERE pk_students_id = 12;
UPDATE students SET fk_cLass_id = 4 WHERE pk_students_id = 13;
UPDATE students SET fk_cLass_id = 2 WHERE pk_students_id = 14;
UPDATE students SET fk_cLass_id = 1 WHERE pk_students_id = 15;


UPDATE teachers SET fk_subject_id = 1 WHERE pk_teacher_id = 1;
UPDATE teachers SET fk_subject_id = 3 WHERE pk_teacher_id = 2;
UPDATE teachers SET fk_subject_id = 4 WHERE pk_teacher_id = 3;
UPDATE teachers SET fk_subject_id = 5 WHERE pk_teacher_id = 4;
UPDATE teachers SET fk_subject_id = 6 WHERE pk_teacher_id = 5;
UPDATE teachers SET fk_subject_id = 2 WHERE pk_teacher_id = 6;


 school=#  SELECT * FROM students WHERE fk_class_id = 2;
 pk_students_id | student_name | date_of_birth | contact_number | name_of_gardian | fk_class_id
----------------+--------------+---------------+----------------+-----------------+-------------
              3 | hafi         | 2002-02-19    |       98471101 | ashique         |           2
              4 | fadil        | 2002-08-27    |       98471107 | jiyaf           |           2
             14 | sana         | 2002-04-20    |       38471105 | naju            |           2
(3 rows)

school=# SELECT * FROM examination WHERE fk_subject_id = 8;
 pk_exam_id | exam_name |    date    | fk_subject_id
------------+-----------+------------+---------------
          6 | monthly   | 2017-06-10 |             8
         10 | classtext | 2017-10-11 |             8
(2 rows)

school=# SELECT * FROM teachers  WHERE fk_subject_id = 6;
 pk_teacher_id | t_name | fk_subject_id
---------------+--------+---------------
             5 | megha  |             6
(1 row)

school=# SELECT * FROM students WHERE date_of_birth < '2002-05-22';
 pk_students_id | student_name | date_of_birth | contact_number | name_of_gardian | fk_class_id
----------------+--------------+---------------+----------------+-----------------+-------------
              1 | fathima      | 2002-04-22    |       98471105 | shafi           |           1
              2 | fida         | 2002-04-23    |       98471106 | shafi           |           1
              3 | hafi         | 2002-02-19    |       98471101 | ashique         |           2
              5 | nishal       | 2002-04-26    |       98471104 | salman          |           3
             11 | afi          | 2002-01-22    |       68471105 | rasi            |           6
             12 | kadeeja      | 2002-04-11    |       58471105 | neida           |           5
             13 | diya         | 2002-04-14    |       48471105 | nasi            |           4
             14 | sana         | 2002-04-20    |       38471105 | naju            |           2
             15 | noor         | 2002-04-25    |       28471105 | shafi           |           1
(9 rows)

school=#  SELECT * FROM examination WHERE date > '2017-08-11';
 pk_exam_id | exam_name |    date    | fk_subject_id
------------+-----------+------------+---------------
          8 | classtext | 2017-10-11 |             7
          9 | classtext | 2017-10-11 |             6
         10 | classtext | 2017-10-11 |             8
(3 rows)

school=# SELECT * FROM students LIMIT 3;
 pk_students_id | student_name | date_of_birth | contact_number | name_of_gardian | fk_class_id
----------------+--------------+---------------+----------------+-----------------+-------------
              1 | fathima      | 2002-04-22    |       98471105 | shafi           |           1
              2 | fida         | 2002-04-23    |       98471106 | shafi           |           1
              3 | hafi         | 2002-02-19    |       98471101 | ashique         |           2
(3 rows)
school=#  SELECT DISTINCT fk_subject_id FROM examination;
 fk_subject_id
---------------
             3
             5
             4
             6
             2
             7
             1
             8
(8 rows)

school=# SELECT * FROM students WHERE name_of_gardian LIKE 's%';
 pk_students_id | student_name | date_of_birth | contact_number | name_of_gardian | fk_class_id
----------------+--------------+---------------+----------------+-----------------+-------------
              1 | fathima      | 2002-04-22    |       98471105 | shafi
 |           1
              2 | fida         | 2002-04-23    |       98471106 | shafi
 |           1
              5 | nishal       | 2002-04-26    |       98471104 | salman
 |           3
              8 | minha        | 2002-07-22    |       98471103 | salim
 |           4
             15 | noor         | 2002-04-25    |       28471105 | shafi
 |           1
(5 rows)
-- SELECT * FROM students WHERE contact_number LIKE "98______" ;

school=# SELECT * FROM students WHERE student_name LIKE 'a%';
 pk_students_id | student_name | date_of_birth | contact_number | name_of_gardian | fk_class_id
----------------+--------------+---------------+----------------+-----------------+-------------
              6 | ajmal        | 2002-05-22    |       98471102 | noufal
 |           3
             10 | aysha        | 2002-09-22    |       78471105 | ajmal
 |           6
             11 | afi          | 2002-01-22    |       68471105 | rasi
 |           6
(3 rows)

school=# SELECT* FROM teachers WHERE t_name LIKE '%m%';
 pk_teacher_id | t_name | fk_subject_id
---------------+--------+---------------
             1 | reshma |             1
             2 | mathew |             3
             4 | salam  |             5
             5 | megha  |             6
(4 rows)

school=# SELECT * FROM students WHERE student_name LIKE '%a';
 pk_students_id | student_name | date_of_birth | contact_number | name_of_gardian | fk_class_id
----------------+--------------+---------------+----------------+-----------------+-------------
              1 | fathima      | 2002-04-22    |       98471105 | shafi
 |           1
              2 | fida         | 2002-04-23    |       98471106 | shafi
 |           1
              7 | nida         | 2002-06-22    |       98471103 | jamal
 |           4
              8 | minha        | 2002-07-22    |       98471103 | salim
 |           4
              9 | hiba         | 2002-08-22    |       88471105 | anvar
 |           5
             10 | aysha        | 2002-09-22    |       78471105 | ajmal
 |           6
             12 | kadeeja      | 2002-04-11    |       58471105 | neida
 |           5
             13 | diya         | 2002-04-14    |       48471105 | nasi
 |           4
             14 | sana         | 2002-04-20    |       38471105 | naju
 |           2
(9 rows)

school=# SELECT * FROM subjects WHERE subjects LIKE 'm%s';
 pk_subject_id | subjects
---------------+----------
             1 | maths
(1 row)

school=# SELECT* FROM examination WHERE exam_name LIKE '%a%';
 pk_exam_id | exam_name |    date    | fk_subject_id
------------+-----------+------------+---------------
          8 | classtext | 2017-10-11 |             7
          9 | classtext | 2017-10-11 |             6
         10 | classtext | 2017-10-11 |             8
(3 rows)

school=# SELECT * FROM students WHERE name_of_gardian LIKE '____';
 pk_students_id | student_name | date_of_birth | contact_number | name_of_gardian | fk_class_id
----------------+--------------+---------------+----------------+-----------------+-------------
             11 | afi          | 2002-01-22    |       68471105 | rasi            |           6
             13 | diya         | 2002-04-14    |       48471105 | nasi            |           4
             14 | sana         | 2002-04-20    |       38471105 | naju            |           2
(3 rows)

school=# CREATE TABLE marks(
school(#   pk_mark_id  SERIAL PRIMARY KEY,
school(# fk_students_id INT,
school(#  FOREIGN KEY(fk_students_id)REFERENCES students(pk_students_id)
school(#     ON DELETE CASCADE ON UPDATE CASCADE,
school(#   fk_exam_id INT,
school(#    FOREIGN KEY(fk_exam_id)REFERENCES examination(pk_exam_id)
school(#     ON DELETE CASCADE ON UPDATE CASCADE  ,
school(#   marks_obtained INT
school(# );

INSERT INTO  






