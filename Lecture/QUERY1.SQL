CREATE DATABASE school;

CREATE DATABASE IF NOT EXISTS school;

DROP DATABASE school;

DROP DATABASE IF EXISTS school;


-- Create database 
CREATE DATABASE college;
USE college;

SHOW DATABASES;

CREATE TABLE employee (
empId INT PRIMARY KEY,
name VARCHAR(50),
salary INT 
);

CREATE TABLE IF NOT EXISTS employee (
empId INT PRIMARY KEY,
name VARCHAR(50),
salary INT 
);



-- Insert Values into table
INSERT INTO employee (empId, name, salary)
VALUES(001, "Amit Kumar", 40000),
(002, "Sachin Kumar", 35000),
(003, "Ankul Kumar Rai", 50000);

SELECT *FROM employee;

SELECT empId FROM employee;

SELECT name FROM employee;

SELECT salary FROM employee;

SELECT "Amit Kumar" FROM employee;

--  It will provide an error because date column is not available
SELECT date FROM employee;

SHOW TABLES;




-- Create a database for Instagram 
CREATE DATABASE IF NOT EXISTS instagramDb;

USE instagramDb;

-- Table 1
CREATE TABLE IF NOT EXISTS users (
userId INT PRIMARY KEY,
userName VARCHAR(50),
email VARCHAR(100)
);

-- Table 2
CREATE TABLE IF NOT EXISTS posts (
postId INT PRIMARY KEY,
userId INT,
caption VARCHAR(100)
);

INSERT INTO users (userId, userName, email)
VALUES 
(1, "Amit", "amit@gmail.com"),
(2, "Sachin", "sachin@gmail.com"),
(3, "Deepshikha", "deep@gmail.com");

INSERT INTO posts (postId, userId, caption)
VALUES
(101, 561, "light"),
(102, 562, "air"),
(103, 563, "water");

USE instagramDb;

SHOW TABLES;

SELECT * FROM users;

SELECT * FROM posts;

USE college;

CREATE TABLE student (
phoneNo INT UNIQUE
);

INSERT INTO student (phoneNo)
VALUES 
(123),
(456);

-- not null constraint
CREATE TABLE student1 (
age INT,
rollNo INT NOT NULL
);

INSERT INTO student1 (age, rollNo)
VALUES 
(27, 1);


-- check constraint
CREATE TABLE student2 (
age INT CHECK(age > 18)
);

INSERT INTO student2 (age)
VALUES 
(19);


-- default constraint
CREATE TABLE student3 (
schoolName VARCHAR(50) DEFAULT 'XYZ',
age INT
);

INSERT INTO student3 (age)
VALUES 
(19);

SELECT * FROM student3;


-- Primary Key constraint
CREATE TABLE student4 (
age INT,
rollNo INT PRIMARY KEY
);

-- unique
INSERT INTO student4 (age, rollNo)
VALUES
(12, 1),
(13, 2),
(14, 2);

-- not null
INSERT INTO student4 (age)
VALUES
(12);

-- foreign key constraint
CREATE TABLE course (
courseName VARCHAR(50),
rollNo INT,
FOREIGN KEY (rollNo) REFERENCES student4(rollNo)
);

 
 
 
 
 CREATE DATABASE school;
 USE school;

CREATE TABLE student (
id INT PRIMARY KEY,
name VARCHAR(50)
);

CREATE TABLE course (
cid INT PRIMARY KEY,
id INT ,
FOREIGN KEY (id) REFERENCES student(id)
);



-- (12)  UPDATE command in sql

/*
Let's make a databse for a company  
1. Make a database for a company xyz
2. Make an employee table in the xyz database
3. Fill details in the table

*/

-- 1. Make a database for a company xyz
CREATE DATABASE xyz;
USE xyz;

-- 2. Make an employee table in the xyz database
CREATE TABLE employee (
id INT PRIMARY KEY,
name VARCHAR(50),
age int,
department VARCHAR(50),
city VARCHAR(50),
salary INT
);


-- 3. Fill details in the table
INSERT INTO employee (id, name, age, department, city, salary)
VALUES 
(1, "Amit", 25, "IT", "Mumbai", 1500),
(2, "Nitesh", 26, "HR", "Pune", 2000),
(3, "Nikhil", 27, "IT", "Mumbai", 2500),
(4, "Abhishek", 25, "Marketing", "Surat", 2400),
(5, "Raj", 24, "Finance", "Indore", 1500);


--












