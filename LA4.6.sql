--Learning Activity 4.6

CREATE DATABASE Film_World;

CREATE TABLE Movie(
	movieid int PRIMARY KEY,
	title varchar(255) NOT NULL,
	companyid int,
	releaseDate date,
	boxOfficeRevenue decimal,
	reviewScore float CHECK (reviewScore >=0 AND reviewScore <=10)
);

CREATE TABLE Actor(
	actorid int PRIMARY KEY,
	firstName varchar(255) NOT NULL,
	lastName varchar(255) NOT NULL,
	dateOfBirth date
);

CREATE TABLE ActedIn(
	movieid int FOREIGN KEY REFERENCES Movie(movieid),
	actorid int FOREIGN KEY REFERENCES Actor(actorid)
);



