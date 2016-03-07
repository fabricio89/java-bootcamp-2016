/etc/init.d/mysqld start
mysql -u root -p 

create database high_school;

	use high_school;


	CREATE TABLE student (
  id_student INT NOT NULL,
  first_name VARCHAR(45) NOT NULL,
  last_name VARCHAR(45) NOT NULL,
  registration_number VARCHAR(45) NOT NULL,
  date_of_birth DATE NOT NULL,
  PRIMARY KEY (id_student));

	CREATE TABLE teacher (
		id_teacher INT NOT NULL,
		fisrt name VARCHAR (45) NOT NULL,
		last_name VARCHAR (45) NOT NULL,
	    date_of_birth DATE NOT NULL, 
	    PRIMARY KEY (id_teacher));

	CREATE TABLE course (
		id_course INT NOT NULL,
		name VARCHAR (20) NOT NULL,
		hoursbyweek INT NOT NULL,
		PRIMARY KEY (id_course));

	CREATE TABLE edition (
		id_edition INT NOT NULL,
		id_course INT,
		id_teacher INT,
		date_edition DATE,
		PRIMARY KEY (id_edition), FOREIGN KEY (id_course) 
		REFERENCES course (id_course), FOREIGN KEY (id_teacher) 
		REFERENCES teacher (id_teacher));

	CREATE TABLE shedule_time(
		idshedule INT NOT NULL,
		day VARCHAR (10) NOT NULL,
		start DATE NOT NULL,
		end DATE NOT NULL,
		PRIMARY KEY (idshedule),
		CONSTRAINT check_day CHECK (day IN ('monday', 'tuesday', 
			'wednesday','thursday','friday','saturday')));

	CREATE TABLE shedule_edition(
		idsheduleEdition INT NOT NULL,
		id_edition INT NOT NULL,
		idshedule INT NOT NULL,
		PRIMARY KEY (idsheduleEdition),
		FOREIGN KEY (id_edition) REFERENCES edition (id_edition),
		FOREIGN KEY (idshedule) REFERENCES shedule_time (idshedule));

	CREATE TABLE student_edition (
		idstudentsbycourse INT NOT NULL,
		id_student INT,
		id_edition INT,
		note1 NUMERIC(3,2),
		note2 NUMERIC(3,2),
		note3 NUMERIC(3,2),
		notefinal NUMERIC(3,2),
		PRIMARY KEY (idstudentsbycourse), FOREIGN KEY (id_student)
		REFERENCES student (id_student),FOREIGN KEY (id_edition)
		REFERENCES edition (id_edition)
		);

--Insert techers


	INSERT INTO teacher VALUES (142,'sergio', 'castro','1970/12/14');
	INSERT INTO teacher VALUES (121,'alejandro', 'gonzales','1983/06/19');
	INSERT INTO teacher VALUES (192,'maria', 'hernandez','1981/02/04');

--Insert courses

	INSERT INTO course VALUES (812, 'calculus',6);
	INSERT INTO course VALUES (856, 'chemistry',4);
	INSERT INTO course VALUES (832, 'spanish',4);

--Insert students 

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

-- INSERT EDITION

INSERT INTO edition VALUES (1,812, 142, '2016/02/03');
INSERT INTO edition VALUES (2,856, 121, '2016/02/03');
INSERT INTO edition VALUES (3,832, 192, '2016/02/03');

-- Insert students into courses

INSERT INTO student_edition VALUES(1,19,1, 3.2,4.0,2.1, 3.1 );
INSERT INTO student_edition VALUES(2,20,1, 1.2,3.2,5.0, 3.13 );
INSERT INTO student_edition VALUES(3,21,1, 4.6,2.4, 3.2, 3.4 );
INSERT INTO student_edition VALUES(4,22,1, 2.0,1.1,3.2, 2.1 );
INSERT INTO student_edition VALUES(5,23,1, 1.1,2.3,4.3, 2.56 );
INSERT INTO student_edition VALUES(6,24,1, 0.0,2.1,3.2, 1.76 );
INSERT INTO student_edition VALUES(7,25,1, 5.0,2.4,4.3, 3.9 );
INSERT INTO student_edition VALUES(8,26,1, 2.3,4.0,1.1, 2.46 );
INSERT INTO student_edition VALUES(9,27,1, 3.4,2.9,2.6, 2.96 );
INSERT INTO student_edition VALUES(10,28,1, 3.2,1.1,2.3, 2.2 );

INSERT INTO student_edition VALUES(11,29,2, 3.2,4.0,2.1, 3.1 );
INSERT INTO student_edition VALUES(12,30,2, 5.0,2.4,4.3, 3.9);
INSERT INTO student_edition VALUES(13,31,2, 2.0,1.1,3.2, 2.1 );
INSERT INTO student_edition VALUES(14,32,2, 3.2,4.0,2.1, 3.1 );
INSERT INTO student_edition VALUES(15,33,2, 0.0,2.1,3.2, 1.76);
INSERT INTO student_edition VALUES(16,34,2, 3.2,4.0,2.1, 3.1 );
INSERT INTO student_edition VALUES(17,35,2, 2.0,1.1,3.2, 2.1 );
INSERT INTO student_edition VALUES(18,36,2, 4.6,2.4, 3.2, 3.4 );
INSERT INTO student_edition VALUES(19,37,2, 3.2,1.1,2.3, 2.2);
INSERT INTO student_edition VALUES(20,37,2, 3.2,4.0,2.1, 3.1 );

INSERT INTO student_edition VALUES(21, 39,3, 3.2,4.0,2.1, 3.1 );
INSERT INTO student_edition VALUES(22, 40,3, 3.2,4.0,2.1, 3.1 );
INSERT INTO student_edition VALUES(23, 41,3, 3.2,1.1,2.3, 2.2 );
INSERT INTO student_edition VALUES(24, 42,3, 3.2,4.0,2.1, 3.1 );
INSERT INTO student_edition VALUES(25, 43,3, 0.0,2.1,3.2, 1.76 );
INSERT INTO student_edition VALUES(26, 44,3, 3.2,4.0,2.1, 3.1 );
INSERT INTO student_edition VALUES(27, 45,3, 4.6,2.4, 3.2, 3.4);
INSERT INTO student_edition VALUES(28, 46,3, 5.0,2.4,4.3, 3.9);
INSERT INTO student_edition VALUES(29, 47,3, 3.2,4.0,2.1, 3.1 );
INSERT INTO student_edition VALUES(30, 48,3, 3.2,1.1,2.3, 2.2 );

-- Shedule

INSERT INTO shedule_time VALUES(1,'monday','0000-00-00 06:00:00','0000-00-00 08:00:00');
INSERT INTO shedule_time VALUES(2,'wednesday','0000-00-00 06:00:00','0000-00-00 08:00:00');
INSERT INTO shedule_time VALUES(3,'friday','0000-00-00 06:00:00','0000-00-00 08:00:00');

INSERT INTO shedule_time VALUES(4,'tuesday','0000-00-00 12:00:00','0000-00-00 14:00:00');	
INSERT INTO shedule_time VALUES(5,'thursday','0000-00-00 12:00:00','0000-00-00 14:00:00');	

INSERT INTO shedule_time VALUES(6,'tuesday','0000-00-00 16:00:00','0000-00-00 18:00:00');	
INSERT INTO shedule_time VALUES(7,'thursday','0000-00-00 16:00:00','0000-00-00 18:00:00');

--Shedule 2 Edition

INSERT INTO shedule_edition VALUES(1,1,1);
INSERT INTO shedule_edition VALUES(2,1,2);
INSERT INTO shedule_edition VALUES(3,1,3);
INSERT INTO shedule_edition VALUES(4,2,4);
INSERT INTO shedule_edition VALUES(5,2,5);
INSERT INTO shedule_edition VALUES(6,3,6);	
INSERT INTO shedule_edition VALUES(7,3,7);	

--Query List students and teachers for a given 

set @course='chemistry';

SELECT c.name Course, concat(t.first_name,' ', t.last_name) Teacher, concat(s.first_name,' ', s.last_name) Students from 
course c, teacher t, student s, edition e, student_edition se
where c.id_course=e.id_course and t.id_teacher=e.id_teacher and e.id_edition=se.id_edition and s.id_student=se.id_student 
and c.name=@course
order by c.name, t.first_name, s.last_name ASC;

-- Query Percentage of students that passed/failed a given course

set @course='spanish';

SELECT c.name Course, concat((count(c.name)*100)/10,'%') Percentage_that_passed, concat(100-(count(c.name)*100)/10,'%') 
Percentage_that_lossed from course c, student s, edition e, student_edition se
where c.id_course=e.id_course  and e.id_edition=se.id_edition and s.id_student=se.id_student and se.notefinal>2.95 
and c.name=@course
order by c.name;



-- Query Shedule for teacher



set @teachername='sergio';
set @teacherlastname='castro';

SELECT concat(t.first_name,t.last_name) Teacher, shet.day,  concat( shet.start, ' - ', shet.end) Hour, c.name Course
from teacher t, edition e, shedule_edition shed, 
shedule_time shet, course c where t.id_teacher=e.id_teacher and shed.id_edition=e.id_edition 
and shet.idshedule=shed.idshedule and c.id_course=e.id_course and t.first_name=@teachername and t.last_name=@teacherlastname;