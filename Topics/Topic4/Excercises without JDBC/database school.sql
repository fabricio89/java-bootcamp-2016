--Teacher

CREATE TABLE teacher (
		id_teacher INT(15) NOT NULL,
		first_name VARCHAR (45) NOT NULL,
		last_name VARCHAR (45) NOT NULL,
	    date_of_birth DATE NOT NULL, 
	    PRIMARY KEY (id_teacher));

--------------------------------------------------------------------------------------

--Student	 

CREATE TABLE student (
  id_student INT (15)NOT NULL,
  first_name VARCHAR(45) NOT NULL,
  last_name VARCHAR(45) NOT NULL,
  registration_number INT(20) NOT NULL,
  date_of_birth DATE NOT NULL,
  PRIMARY KEY (id_student));

----------------------------------------------------------------------------------------
--Course

CREATE TABLE course (
		id_course INT (15)NOT NULL,
		name VARCHAR (20) NOT NULL,
		hoursbyweek INT (2)NOT NULL,
		id_teacher INT (15)NOT NULL,
		PRIMARY KEY (id_course),
		FOREIGN KEY (id_teacher) REFERENCES teacher(id_teacher));

-----------------------------------------------------------------------------------------

--Student Course

CREATE TABLE student_course(

		code INT (3) NOT NULL,
		id_student INT(15) NOT NULL,
		id_course INT (15) NOT NULL,
		note1 NUMERIC(3,2),
		note2 NUMERIC(3,2),
		note3 NUMERIC(3,2),
		finalNote NUMERIC(3,2),
		PRIMARY KEY (code), 
		FOREIGN KEY (id_course) REFERENCES course(id_course),
		FOREIGN KEY (id_student) REFERENCES student(id_student)

		);

-------------------------------------------------------------------------------------------		   


CREATE TABLE shedule(
		id_shedule INT (15) NOT NULL,
		day VARCHAR (10) NOT NULL,
		start DATETIME NOT NULL,
		end DATETIME NOT NULL,
		PRIMARY KEY (id_shedule),
		CONSTRAINT check_day CHECK (day IN ('monday', 'tuesday', 
			'wednesday','thursday','friday','saturday')));

--------------------------------------------------------------------------------------------

CREATE TABLE shedule_course(

		id_course INT (15) NOT NULL,
		id_shedule INT (15) NOT NULL,
		PRIMARY KEY (id_course, id_shedule),
		FOREIGN KEY (id_course) REFERENCES course (id_course),
		FOREIGN KEY (id_shedule) REFERENCES shedule(id_shedule));

----------------------------------------------------------------------------------------

INSERT database

------------------------------------------------------------------------------------------

--Teacher

    INSERT INTO teacher VALUES (142,'sergio', 'castro','1970/12/14');
	INSERT INTO teacher VALUES (121,'alejandro', 'gonzales','1983/06/19');
	INSERT INTO teacher VALUES (192,'maria', 'hernandez','1981/02/04');
------------------------------------------------------------------------------------------
-- Student

INSERT INTO student VALUES (19, 'José Luis', 'Martínez',893746,'1971-11-08');
INSERT INTO student VALUES (20, 'David', 'Pérez', 2897489, '1971-10-26');
INSERT INTO student VALUES (21, 'María Pilar', 'Gómez', 289374,'1955-07-06');
INSERT INTO student VALUES (22, 'José', 'Coca', 290834,'1967-12-17');
INSERT INTO student VALUES (23, 'Carmen', 'Martínez', 5675545, '1948-01-06');
INSERT INTO student VALUES (24, 'Rosa', 'Páez', 94987553,'1986-01-04');
INSERT INTO student VALUES (25, 'María', 'Dolores', 9869473, '1970-12-08');
INSERT INTO student VALUES (26, 'José', 'Carrasco',  4653829, '1969-04-02');
INSERT INTO student VALUES (27, 'Miguel', 'Ángel', 1874945, '1950-10-24');
INSERT INTO student VALUES (28, 'Rafael', 'Diez', 349829074, '1984-11-25');
INSERT INTO student VALUES (29, 'Ramón', 'Álvarez', 9589683, '1989-10-11');
INSERT INTO student VALUES (30, 'María', 'Teresa',  49390731, '1975-11-26');
INSERT INTO student VALUES (31, 'María', 'Pilar', 39085973, '1961-06-03');
INSERT INTO student VALUES (32, 'Daniel', 'Lara', 90598749, '1958-08-04');
INSERT INTO student VALUES (33, 'José María', 'Gómez', 29467852, '1943-12-06');
INSERT INTO student VALUES (34, 'Ángela', 'Gómez',  490759873, '1936-11-02');
INSERT INTO student VALUES (35, 'Antonia', 'Serrano', 904987, '1981-11-12');
INSERT INTO student VALUES (36, 'Álvaro', 'Fernández',  297498798,'1959-06-19');
INSERT INTO student VALUES (37, 'Antonio', 'González', 98728363, '1932-08-11');
INSERT INTO student VALUES (38, 'Ángel', 'Briones', 878296872, '1985-08-18');
INSERT INTO student VALUES (39, 'Laura', 'Rubio', 7846786478, '1963-01-19');
INSERT INTO student VALUES (40, 'Juana', 'Matei',  0948987892,'1978-02-06');
INSERT INTO student VALUES (41, 'Miguel Ángel', 'Rodríguez', 89273986,'1940-04-10');
INSERT INTO student VALUES (42, 'Luis', 'Iglesias',  2378687, '1956-09-14');
INSERT INTO student VALUES (43, 'Juan José', 'Felipe', 8976985789, '1942-03-15');
INSERT INTO student VALUES (44, 'Pedro', 'Herrera', 457978327, '1979-05-13');
INSERT INTO student VALUES (45, 'María Jesús', 'Escobar',  6983097498, '1986-06-16');
INSERT INTO student VALUES (46, 'Jesús', 'Ferro', 58973987, '1968-06-05');
INSERT INTO student VALUES (47, 'María', 'Dávila', 59879827, '1971-06-05');
INSERT INTO student VALUES (48, 'Carlos', 'Urbano', 98579873, '1946-03-31');
INSERT INTO student VALUES (49, 'Jorge', 'Carnero', 39847985, '1956-11-09');
INSERT INTO student VALUES (50, 'Iván', 'Abellán', 74678467832, '1960-04-24');

---------------------------------------------------------------------------------------

--Course

    INSERT INTO course VALUES (812, 'calculus',6,142);
	INSERT INTO course VALUES (856, 'chemistry',4,121);
	INSERT INTO course VALUES (832, 'spanish',4,192);


-----------------------------------------------------------------------------------------

INSERT INTO shedule VALUES(1,'monday','06:00:00','08:00:00');
INSERT INTO shedule VALUES(2,'wednesday','0000-00-00 06:00:00','0000-00-00 08:00:00');
INSERT INTO shedule VALUES(3,'friday','0000-00-00 06:00:00','0000-00-00 08:00:00');

INSERT INTO shedule VALUES(4,'tuesday','0000-00-00 12:00:00','0000-00-00 14:00:00');	
INSERT INTO shedule VALUES(5,'thursday','0000-00-00 12:00:00','0000-00-00 14:00:00');	

INSERT INTO shedule VALUES(6,'tuesday','0000-00-00 16:00:00','0000-00-00 18:00:00');	
INSERT INTO shedule VALUES(7,'thursday','0000-00-00 16:00:00','0000-00-00 18:00:00');

------------------------------------------------------------------------------------------

INSERT INTO student_course VALUES(1,19,812, 3.2,4.0,2.1, 3.1 );
INSERT INTO student_course VALUES(2,20,812, 1.2,3.2,5.0, 3.13 );
INSERT INTO student_course VALUES(3,21,812, 4.6,2.4, 3.2, 3.4 );
INSERT INTO student_course VALUES(4,22,812, 2.0,1.1,3.2, 2.1 );
INSERT INTO student_course VALUES(5,23,812, 1.1,2.3,4.3, 2.56 );
INSERT INTO student_course VALUES(6,24,812, 0.0,2.1,3.2, 1.76 );
INSERT INTO student_course VALUES(7,25,812, 5.0,2.4,4.3, 3.9 );
INSERT INTO student_course VALUES(8,26,812, 2.3,4.0,1.1, 2.46 );
INSERT INTO student_course VALUES(9,27,812, 3.4,2.9,2.6, 2.96 );
INSERT INTO student_course VALUES(10,28,812, 3.2,1.1,2.3, 2.2 );

INSERT INTO student_course VALUES(11,29,856, 3.2,4.0,2.1, 3.1 );
INSERT INTO student_course VALUES(12,30,856, 5.0,2.4,4.3, 3.9);
INSERT INTO student_course VALUES(13,31,856, 2.0,1.1,3.2, 2.1 );
INSERT INTO student_course VALUES(14,32,856, 3.2,4.0,2.1, 3.1 );
INSERT INTO student_course VALUES(15,33,856, 0.0,2.1,3.2, 1.76);
INSERT INTO student_course VALUES(16,34,856, 3.2,4.0,2.1, 3.1 );
INSERT INTO student_course VALUES(17,35,856, 2.0,1.1,3.2, 2.1 );
INSERT INTO student_course VALUES(18,36,856, 4.6,2.4, 3.2, 3.4 );
INSERT INTO student_course VALUES(19,37,856, 3.2,1.1,2.3, 2.2);
INSERT INTO student_course VALUES(20,37,856, 3.2,4.0,2.1, 3.1 );

INSERT INTO student_course VALUES(21,39,832, 3.2,4.0,2.1, 3.1 );
INSERT INTO student_course VALUES(22,40,832, 3.2,4.0,2.1, 3.1 );
INSERT INTO student_course VALUES(23,41,832, 3.2,1.1,2.3, 2.2 );
INSERT INTO student_course VALUES(24,42,832, 3.2,4.0,2.1, 3.1 );
INSERT INTO student_course VALUES(25,43,832, 0.0,2.1,3.2, 1.76 );
INSERT INTO student_course VALUES(26,44,832, 3.2,4.0,2.1, 3.1 );
INSERT INTO student_course VALUES(27,45,832, 4.6,2.4, 3.2, 3.4);
INSERT INTO student_course VALUES(28,46,832, 5.0,2.4,4.3, 3.9);
INSERT INTO student_course VALUES(29,47,832, 3.2,4.0,2.1, 3.1 );
INSERT INTO student_course VALUES(30,48,832, 3.2,1.1,2.3, 2.2 );

---------------------------------------------------------------------------------
INSERT INTO shedule_course VALUES

INSERT INTO shedule_course VALUES(812,1);
INSERT INTO shedule_course VALUES(812,2);
INSERT INTO shedule_course VALUES(812,3);
INSERT INTO shedule_course VALUES(856,4);
INSERT INTO shedule_course VALUES(856,5);
INSERT INTO shedule_course VALUES(832,6);	
INSERT INTO shedule_course VALUES(832,7);	

-----------------------------------------------------------------------------------
--Query List students and teachers for a given 


SET @course='spanish';

SELECT c.name Course, concat(t.first_name,' ',t.last_name) Teacher,
concat(s.last_name,' , ', s.first_name) Students from teacher t, course c,
student_course sc, student s where t.id_teacher=c.id_teacher and 
c.id_course=sc.id_course and sc.id_student=s.id_student and c.name=@course order by c.name, t.first_name, 
s.last_name ASC;

--------------------------------------------------------------------------------------

-- Query Percentage of students that passed/failed a given course

SET @course='spanish';

SELECT c.name Course, 

concat((count(c.name)*100)/(select count(c.name) 
from student s,course c, student_course sc
where c.id_course=sc.id_course and 
sc.id_student=s.id_student and  c.name=@course),' %') Percentage_Aproved,

concat(100-(count(c.name)*100)/(select count(c.name) 
from student s,course c, student_course sc
where c.id_course=sc.id_course and 
sc.id_student=s.id_student and  c.name=@course),' %') Percentage_Failed

from course c, student_course sc, 
student s where c.id_course=sc.id_course and 
sc.id_student=s.id_student and c.name=@course and sc.finalNote>2.95 group by course;

----------------------------------------------------------------------------------------

-- Query Shedule for teacher

SET @teacherlastname='castro';
SET @teacherfirstname='sergio';

SELECT concat(t.last_name,' ', t.first_name) Teacher, sh.day ,concat (Date_format(sh.start,'%H:%i'),' - ',Date_format(sh.end,'%H:%i')) Shedule,c.name Course from teacher t, course c, shedule_course sc, shedule sh where t.id_teacher=c.id_teacher and 
c.id_course=sc.id_course and sc.id_shedule=sh.id_shedule and t.last_name=@teacherlastname and t.first_name=@teacherfirstname;

