-- Drop table if exists
DROP TABLE department;
DROP TABLE dept_emp;
DROP TABLE dept_manager;
DROP TABLE employees;
DROP TABLE salaries;
DROP TABLE titles;
--Create department table
CREATE TABLE department (
	dept_number VARCHAR PRIMARY KEY NOT NULL,
	dept_name VARCHAR
);
--Create department employee table
CREATE TABLE dept_emp(
	emp_number INT PRIMARY KEY NOT NULL,
	dept_number VARCHAR
);
--Create department manager table
CREATE TABLE dept_manager (
	dept_number VARCHAR PRIMARY KEY NOT NULL,
	emp_number INT
);
--Create employees table
CREATE TABLE employees (
	emp_number INT PRIMARY KEY NOT NULL,
	emp_title_id VARCHAR,
	birth_date DATE,
	first_name VARCHAR,
	last_name VARCHAR,
	sex VARCHAR,
	hire_date DATE
);
--Create salaries table
CREATE TABLE salaries (
	emp_number INT PRIMARY KEY NOT NULL,
	salary INT
);
--Create titles table
CREATE TABLE titles (
	title_id VARCHAR PRIMARY KEY NOT NULL,
	title VARCHAR
);
SELECT * 
FROM department
SELECT *
FROM dept_emp
SELECT *
FROM dept_manager
SELECT *
FROM employees
SELECT *
FROM salaries
SELECT *
FROM titles