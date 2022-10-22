USE master;
GO

CREATE DATABASE swati;
GO

USE swati;
GO

CREATE SCHEMA Client;
GO

CREATE TABLE Client.Person
	 (
	 Id INT NOT NULL,
	 [Name] VARCHAR(50) NOT NULL,
	 LastName VARCHAR(50) NOT NULL,
	 VehiculeId INT,
	 LicenseId VARCHAR(20)

	 PRIMARY KEY (Id)
	 );

CREATE TABLE Client.Company
	(
	Id INT NOT NULL,
	[Name] VARCHAR(50),
	VehiculeId INT,
	LicenseId VARCHAR(20)

	PRIMARY KEY (Id)
	);

CREATE TABLE Client.Contact
	(
	Id INT NOT NULL,
	EmailAdress VARCHAR(20),
	PhoneNumber VARCHAR(20)

	PRIMARY KEY (ID)
	);
GO


CREATE SCHEMA Vehicle;
GO

CREATE TABLE Vehicle.Vehicle
	(
	Id INT NOT NULL,
	Marca VARCHAR(30),
	Model VARCHAR(30),
	Kilometers INT,
	Coast MONEY
	);
GO

CREATE SCHEMA Employee;
GO

CREATE TABLE Employee.Jobs
	(
	Id INT NOT NULL,
	JobName VARCHAR(20),
	Salary MONEY,

	);
