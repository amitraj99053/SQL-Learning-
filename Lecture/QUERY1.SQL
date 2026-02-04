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



-- (L 12)  UPDATE command in sql

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


-- 4. See all the data
SELECT * FROM employee;

-- QN 1. Write a query to update the salary for all employees in the 'HR' department to 50000
UPDATE employee
SET salary = 50000
WHERE department = "HR";

SET SQL_SAFE_UPDATES = 0;


-- QN 2. Write a query to update the name of an employee from raaj to raj
UPDATE employee
SET name = "Raaj"
Where name = "Raj";


-- (L 13) DELETE Command in sql

-- QN 1. Write a query to DELETE all records from the emplyoee table where the department is "HR"
DELETE FROM employee
WHERE department = "HR"; 


-- QN 2. Write a query to DELETE the record of an employee having name as "Abhishek"
DELETE FROM employee
WHERE name = "Abhishek";


-- (L 14) SELECT Command in sql
SELECT name, age FROM employee;
SELECT * FROM employee;


-- (L 15) Where Clause in sql
SELECT * FROM employee
WHERE age > 25;


-- (L 16) ALTER Command in sql

-- QN1. ADD a column
ALTER TABLE employee
ADD dob VARCHAR(20) DEFAULT "NP";

-- QN2. DROP a column
ALTER TABLE employee
DROP COLUMN dob;

-- Modify dataType of age column 'INT' to 'VARCHAR'
ALTER TABLE employee
MODIFY age VARCHAR(3);

-- CHANGE column name with dataType
ALTER TABLE employee
CHANGE age emp_age INT;

-- RENAME command help to rename table, column, index or constraint
ALTER TABLE employee
RENAME COLUMN emp_age TO age;



-- (L 17) RENAME command in sql

-- rename tables employee to employees
RENAME TABLE employee TO employees;

-- rename name to emp_name
ALTER TABLE employees
RENAME COLUMN name TO emp_name;

-- rename database
CREATE DATABASE employeesDB;
RENAME TABLE xyz.employees TO employeesDB.employees;



-- (L 18) TRUNCATE Command in sql

-- create a salary table into xyz db
CREATE TABLE salaryDetails (
salary INt,
increment INT
);

INSERT INTO salarydetails(salary, increment)
VALUES
(1200, 6),
(1500, 4);

SELECT * FROM salarydetails;

-- TRUNCATE only delete data not strucutre
TRUNCATE TABLE salarydetails;




-- (L 19) DEFFERENCE BETWEEN TRUNCATE | DELETE | DROP

-- (L 20) DISTINCT KEYWORD IN SQL


-- 1. Make a database for a company
CREATE DATABASE company;
USE company;

-- 2. Make an employee table in the database
CREATE TABLE employee (
id INT PRIMARY KEY,
name VARCHAR(50),
age INT,
department VARCHAR(50),
city VARCHAR(50),
salary INT
);

-- 3. Fill details into the table
INSERT INTO employee(id, name, age, department, city, salary)
VALUES
(1, "Rahul", 25, "IT", "Mumbai", 1500),
(2, "Afsara", 26, "HR", "Pune", 2000),
(3, "Abhimanyu", 27, "IT", "Mumbai", 2500),
(4, "Aditya", 25, "Marketing", "Surat", 2400),
(5, "Raj", 24, "Finance", "Indore", 1500);


-- 4. see all the data
SELECT * FROM employee;

SELECT DISTINCT department FROM employee;

SELECT DISTINCT department, age FROM employee;

-- (L 21) OPERATORS IN SQL

-- select person whoes going to retaire
SELECT * FROM employee
WHERE age+1 = 60;

-- select whoes age is greater then 25
SELECT * FROM employee 
WHERE age > 25;

-- use of AND operator
SELECT * FROM employee 
WHERE city = 'Pune' AND age > 18;

SELECT * FROM employee 
WHERE age > 20 AND department = "IT";

-- use of OR operator
SELECT * FROM employee 
WHERE city = 'Pune' OR age > 18;

SELECT * FROM employee 
WHERE age > 20 OR department = "IT";

-- use of NOT IN operator
SELECT * FROM employee 
WHERE department NOT IN ('IT', 'HR');

-- use of IN operator
SELECT * FROM employee 
WHERE department IN ('IT', 'HR');

-- IS NULL / IS NOT NULL
SELECT * FROM employee 
WHERE department IS NOT NULL;

SELECT * FROM employee 
WHERE department IS NULL;


-- LIKE operator

-- list name which starting with A
SELECT * FROM employee 
WHERE name LIKE 'A%';

-- list name which second character is A
SELECT * FROM employee 
WHERE name LIKE '_A%';

-- BETWEEN operator
SELECT * FROM employee
WHERE salary BETWEEN 1200 AND 1500;



-- (L 22) CLAUSES IN SQL
-- EXAMPLE WHERE, GROUP BY, HAVING, ORDER BY, LIMIT

-- LIMIT CLAUSE PRINT ONLT 2 ROWS
SELECT * FROM employee LIMIT 2;

-- ORDER BY CLAUSE
SELECT * FROM employee ORDER BY salary DESC;

SELECT * FROM employee ORDER BY salary;


-- Practice Questions 

-- qn1. Write a sql query to fetch the details of employees having id as 1
SELECT * FROM employee
WHERE id = 1;

-- qn2. Write a sql query to fetch the details of employees having id as 1 and city as mumbai
SELECT * FROM employee
WHERE id = 1 AND city = "Mumbai";

-- qn3. write a sql query to fetch the details of employees having salary greater than 1200 and city as mumbai
SELECT * FROM employee
WHERE salary > 1200 AND city = "Mumbai";

-- qn4. employees who are not from mumbai
SELECT * FROM employee
WHERE city NOT IN ("Mumbai");

-- qn5. employees having the maximum salary
SELECT * FROM employee
ORDER BY salary DESC;

-- qn6. fetch the details of 2 employees having the maximum salary
SELECT * FROM employee
ORDER BY salary DESC
LIMIT 2;



-- (L 23) AGGREGATE FUNCTION IN SQL

-- COUNT() FUNCTION to count number of name
SELECT COUNT(name) FROM employee;

SELECT COUNT(id) FROM employee;

-- SUM() Function 
SELECT SUM(salary) FROM employee;

-- AVG() Function
SELECT AVG(salary) FROM employee;

-- MIN() Function
SELECT MIN(salary) FROM employee;

-- MAX() Function
SELECT MAX(salary) FROM employee;




-- (L 24) GROUP BY & HAVING CLAUSE

-- GROUP BY CLAUSE
-- AS keywords doesn't create a new physical column in the table. Insted, it creates an alias or alternate name for the column
SELECT department, AVG(salary) AS avgSal FROM employee
GROUP BY department;

-- HAVING Clause
SELECT department, AVG(salary) AS avgSal FROM employee
GROUP BY department
HAVING avgSal > 1500;


-- (L 25) PRACTICE QUESTION CLAUSE & AGGREGATES

-- QN 1. Write a query to find the total number of employees in each city
SELECT city, COUNT(name) AS no_of_emp FROM employee
GROUP BY city;

-- QN 2. Write a query to find the maximum salary of employees in each city in descending order
SELECT city, MAX(salary) AS max_salary FROM employee
GROUP BY city
ORDER BY max_salary DESC;

/*
 QN 3. Write a query to display the department names alongside the total count
	   of employees in each department, sorting the results by the total number
       of employees in descending order. 
*/

SELECT department, COUNT(id) AS totalEmployees FROM employee
GROUP BY department
ORDER BY totalEmployees DESC;

/*
QN 4. Write a query to list the departments where the average salary is greater
then 1200, also display the department name and the average salary.
*/

SELECT department, AVG(salary) AS avgSalary FROM employee
GROUP BY department
HAVING avgSalary > 1200;



-- (L 27) GENERAL ORDER OF SQL COMMAND
/*
1. SELECT
2. FROM
3. WHERE
4. GROUP BY
5. HAVING
6. ORDER BY
7. LIMIT
*/


-- (L 28) JOINS IN SQL

-- 1. Make a database for a ecommerce
CREATE DATABASE ecommerce;
USE ecommerce;

-- 2. Make a customer table in the ecommernce databse
CREATE TABLE customer (
id INT,
name VARCHAR(50)
);

-- 3. Fill details in the table
INSERT INTO customer(id, name)
VALUES
(1, "Rahul"),
(2, "Afsara"),
(3, "Abhimanyu"),
(4, "Aditya"),
(5, "Raj");


-- 4. See all the data
SELECT * FROM customer;

USE ecommerce;

-- 5. Make a orders table in the ecommerce database
CREATE TABLE orders (
id INT PRIMARY KEY,
orderName VARCHAR(50)
);

-- 6. Fill details into the table
INSERT INTO orders (id, orderName)
VALUES
(2, "Fruit"),
(3, "Ball"),
(4, "Utensil");

-- 7. See all the data
SELECT * FROM orders;


-- (L 29) INNER JOIN in sql

-- List details which are equal to customer id and orders id
SELECT * 
FROM customer
INNER JOIN orders
ON customer.id = orders.id;

-- List customerId, orderName and customerName which are equal to customer id and orders id
SELECT customer.id, orders.orderName, customer.name
FROM customer
INNER JOIN orders
ON customer.id = orders.id;



-- (L 30) LEFT OUTER JOIN in sql
SELECT *
FROM customer
LEFT JOIN orders
ON customer.id = orders.id;



-- (L 31) RIGHT OUTER JOIN IN SQL
SELECT *
FROM customer
RIGHT JOIN orders
ON customer.id = orders.id;


-- (L 32) FULL OUTER JOIN IN SQL
SELECT * 
FROM customer
LEFT JOIN orders
ON customer.id = orders.id
UNION
SELECT *
FROM customer
RIGHT JOIN orders
ON customer.id = orders.id;


-- (L 33) CROSS JOIN IN SQL
-- m*n (5*3 = 15)
SELECT * 
FROM customer
CROSS JOIN orders;



-- (L 34) SELF JOIN IN SQL
-- 1. Make a database for school
CREATE DATABASE schoolDB;
USE schoolDB;

-- 2. Make a student table in the school database
CREATE TABLE student (
s_id INT,
name VARCHAR(50),
mentor_id INT
);

-- 3. Fill details in the table
INSERT INTO student(s_id, name, mentor_id)
VALUES
(1, "Ram", NULL),
(2, "Rahul", 1),
(3, "Riti", 1),
(4, "Riya", 3);

-- 4. See all the data 
SELECT * FROM student;

-- self join
SELECT s1.name AS menotr_name, s2.name AS student_name
FROM student AS s1
JOIN student AS s2
WHERE s1.s_id = s2.mentor_id;



-- (L 35) EXCLUSIVE JOIN IN SQL
USE ecommerce;

-- Left EXCLUSIVE JOIN
SELECT * 
FROM customer
LEFT JOIN orders
ON customer.id = orders.id
WHERE orders.id IS NULL;

-- Right EXCLUSIVE JOIN
SELECT * 
FROM customer
RIGHT JOIN orders
ON customer.id = orders.id
WHERE customer.id IS NULL;

-- Full EXCLUSIVE JOIN
SELECT * 
FROM customer
LEFT JOIN orders
ON customer.id = orders.id
WHERE orders.id IS NULL
UNION
SELECT * 
FROM customer
RIGHT JOIN orders
ON customer.id = orders.id
WHERE customer.id IS NULL;



-- (L 36) UNIONS IN SQL

-- UNION
SELECT id FROM customer
UNION
SELECT id FROM orders;

-- UNION ALL
SELECT id FROM customer
UNION ALL
SELECT id FROM orders;



-- (L 37) SUBQUERIES IN SQL
USE employeesdb;

-- QN 1
-- min salary
SELECT MIN(salary)
FROM employees;

-- sal > min_salary
SELECT name, salary
FROM employees
WHERE salary > (SELECT MIN(salary)
FROM employees);



-- QN 2. find the employees with the minimum age
-- min_age
SELECT MIN(age) FROM employees;

-- age = min_age
SELECT name, age
FROM employees
WHERE age = (SELECT MIN(age) FROM employees);




-- QN 3. Find the employees who is having age greater than min_age
-- min_age
SELECT MIN(age) AS min_age 
FROM employees;

-- all the employees whoese age > min_age
SELECT emp.name, emp.age
FROM employees emp, (SELECT MIN(age) AS min_age 
FROM employees) AS min_age_query
WHERE emp.age > min_age_query.min_age;




-- QN 4. Print the employees with the average age and age of employees
-- avg_age
SELECT AVG(age) FROM employees;

-- print the employees age and avg_age
SELECT age, (SELECT AVG(age) FROM employees) AS avg_age
FROM employees;



-- (L 38) Nth HIGHEST SALARY IN SQL

-- Find the nth highest salary in a given database

-- salary in descring order
SELECT DISTINCT salary 
FROM employees
ORDER BY salary DESC;


-- 4th Highest salary
SELECT DISTINCT salary 
FROM employees
ORDER BY salary DESC
LIMIT 3, 1;




-- (L 39) STORE PROCEDURE IN SQL

-- QN 1. Stored procedure without params

-- create a procedure to get all order details
DELIMITER /
CREATE PROCEDURE getOrderDetails()
BEGIN
SELECT * FROM orders;
END /
DELIMITER ;
 
CALL getOrderDetails(); -- error

-- CALL employees.getOrderDetails();



-- QN 2. Return the details of the order by id(Stored procedure with params)




-- (L 40) VIEWS IN SQL

-- create a view
CREATE VIEW employeesView AS 
SELECT id, name, city FROM employees;

SELECT id FROM employeesView;






-- END
