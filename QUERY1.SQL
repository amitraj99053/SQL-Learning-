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

SELECT *FROM users;

SELECT *FROM posts;











