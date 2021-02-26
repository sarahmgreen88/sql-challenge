--List employee number, last name, first name, sex, and salary
SELECT employees.emp_number, employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM employees
JOIN salaries
ON employees.emp_number = salaries.emp_number;

--List first name, last name, and hire date for employees who were hired in 1986
SELECT first_name, last_name, hire_date 
FROM employees
WHERE hire_date >= '1986-01-01' AND
      hire_date < '1987-01-01';

--List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
SELECT dept_manager.dept_number, department.dept_name, dept_manager.emp_number, employees.first_name, employees.last_name
FROM department
JOIN dept_manager
ON department.dept_number = dept_manager.dept_number
JOIN employees
ON dept_manager.emp_number = employees.emp_number

-- List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT employees.emp_number, employees.last_name, employees.first_name, department.dept_name
FROM employees
JOIN dept_emp
ON employees.emp_number = dept_emp.emp_number
JOIN department
ON dept_emp.dept_number=department.dept_number;
-- List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%'

-- List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT employees.emp_number, employees.last_name, employees.first_name, department.dept_name
FROM employees
JOIN dept_emp
ON employees.emp_number = dept_emp.emp_number
JOIN department
ON dept_emp.dept_number=department.dept_number
WHERE department.dept_name = 'Sales';

-- List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT employees.emp_number, employees.last_name, employees.first_name, department.dept_name
FROM employees
JOIN dept_emp
ON employees.emp_number = dept_emp.emp_number
JOIN department
ON dept_emp.dept_number=department.dept_number
WHERE department.dept_name = 'Sales' OR department.dept_name = 'Development'

-- In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT last_name, 
COUNT(last_name)
FROM employees
GROUP BY last_name
ORDER BY COUNT(last_name) DESC;

