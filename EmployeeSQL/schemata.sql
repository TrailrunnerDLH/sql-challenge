CREATE TABLE titles (
	title_id VARCHAR(5) PRIMARY KEY NOT NULL, 
	title VARCHAR(35)  NOT NULL
);

CREATE TABLE departments (
	dept_no VARCHAR(4) PRIMARY KEY NOT NULL, 
	dept_name VARCHAR(35) NOT NULL
);

CREATE TABLE employees (
	emp_no INT PRIMARY KEY NOT NULL, 
	emp_title_id VARCHAR(5) REFERENCES titles(title_id) NOT NULL,
	birth_date DATE,
	first_name VARCHAR(255),
	last_name VARCHAR(255),
	sex VARCHAR(1),
	hire_date DATE
);

CREATE TABLE salaries (
	emp_no INT REFERENCES employees(emp_no) NOT NULL, 
	salary INT NOT NULL
);

CREATE TABLE dept_emp (
	emp_no INT REFERENCES employees(emp_no) NOT NULL, 
	dept_no VARCHAR(4) REFERENCES departments(dept_no) NOT NULL
);

CREATE TABLE dept_manager (
	dept_no VARCHAR(4) REFERENCES departments(dept_no) NOT NULL,
	emp_no INT REFERENCES employees(emp_no) NOT NULL 
);	
