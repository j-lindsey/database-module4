--LA4.5
--4.
CREATE DATABASE Registration;

CREATE TABLE Student(
	student_id int IDENTITY(1,1) PRIMARY KEY,
	name varchar(255),
	gpa float
);

CREATE TABLE Dept(
	dept_id int IDENTITY(1,1) PRIMARY KEY,
	name varchar(255),
	dean varchar(255),
	building varchar(255),
	room varchar(255)
);

CREATE TABLE Course(
	dept_id int FOREIGN KEY REFERENCES Dept(dept_id),
	course_id int PRIMARY KEY,
	name varchar(255),
	hours float
);

CREATE TABLE Enrolled(
	dept_id int FOREIGN KEY REFERENCES Dept(dept_id),
	course_id int FOREIGN KEY REFERENCES Course(course_id),
	student_id int FOREIGN KEY REFERENCES Student(student_id)
);

