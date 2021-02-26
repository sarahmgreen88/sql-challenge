-- Drop table if exists
DROP TABLE department;
DROP TABLE dept_emp;
DROP TABLE dept_manager;
DROP TABLE employees;
DROP TABLE salaries;
DROP TABLE titles;
--Create department table
CREATE TABLE department (
	dept_number VARCHAR,
	dept_name VARCHAR
);
--Create department employee table
CREATE TABLE dept_emp(
	emp_number INT,
	dept_number VARCHAR
);
--Create department manager table
CREATE TABLE dept_manager (
	dept_number VARCHAR,
	emp_number INT
);
--Create employees table
CREATE TABLE employees (
	emp_number INT,
	emp_title_id VARCHAR,
	birth_date VARCHAR,
	first_name VARCHAR,
	last_name VARCHAR,
	sex VARCHAR,
	hire_date DATE
);
--Create salaries table
CREATE TABLE salaries (
	emp_number INT,
	salary INT
);
--Create titles table
CREATE TABLE titles (
	title_id VARCHAR,
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