--Learning Activity 4.5

--1.
CREATE DATABASE Membership;

--2.
CREATE TABLE Individuals(
	IndividualID int IDENTITY(1,1) PRIMARY KEY,
	MemType varchar(255) NOT NULL,
	LastName varchar(255) NOT NULL,
	FirstName varchar(255) NOT NULL,
	Address varchar(255),
	City varchar(255),
	Dues decimal DEFAULT 0 CHECK (Dues>=0)
);
CREATE TABLE Groups(
	GroupID int IDENTITY(1,1) PRIMARY KEY,
	GroupName varchar(255) NOT NULL,
	Dues decimal DEFAULT 0 CHECK (Dues>=0),
	IndividualID int FOREIGN KEY REFERENCES Individuals(IndividualID)
);

--3.
ALTER TABLE Individuals
ADD DuesPaid bit NOT NULL DEFAULT 'False';