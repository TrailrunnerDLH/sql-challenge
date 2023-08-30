-- list employee number, last name, first name, sex and salary
SELECT employees.emp_no, last_name, first_name, sex FROM employees INNER JOIN salaries ON employees.emp_no = salaries.emp_no;
-- list first name, last name, hire date, from employees hired in 1986
SELECT first_name, last_name, hire_date FROM employees WHERE date_part('year', hire_date) = 1986;
-- list manager of each department, deptarment number, department name, employee number, last name and first name. 
SELECT departments.dept_no, dept_name, dept_manager.emp_no, last_name, first_name FROM dept_manager INNER JOIN departments ON dept_manager.dept_no = departments.dept_no INNER JOIN employees ON dept_manager.emp_no = employees.emp_no; 

--List dept number for each employee, employee number, last name, first name and department name. 
SELECT dept_emp.dept_no, employees.emp_no, last_name, first_name, dept_name FROM dept_emp INNER JOIN departments ON dept_emp.dept_no = departments.dept_no INNER JOIN employees ON dept_emp.emp_no = employees.emp_no; 
-- list employee number,first name,  last nam,  sex for Hercules, last name B
SELECT last_name, first_name, sex FROM employees WHERE first_name = 'Hercules' AND last_name LIKE 'B%';
-- list each employee in sales dept, employee number, last name and first name
SELECT employees.emp_no, last_name, first_name FROM dept_emp INNER JOIN departments ON dept_emp.dept_no = departments.dept_no INNER JOIN employees ON dept_emp.emp_no = employees.emp_no WHERE dept_name = 'Sales'; 
-- list each employee in sales and development departments, include, employee number, last name, first name, department name. 
SELECT employees.emp_no, last_name, first_name, dept_name FROM dept_emp INNER JOIN departments ON dept_emp.dept_no = departments.dept_no INNER JOIN employees ON dept_emp.emp_no = employees.emp_no WHERE dept_name = 'Sales' OR dept_name = 'Development'; 
-- list frequency counts in descending order of all employee last names
SELECT COUNT (last_name), last_name FROM employees GROUP BY last_name ORDER BY COUNT (last_name) DESC;