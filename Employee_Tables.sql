-- Create tables:
-- departments
CREATE TABLE departments (
	dept_no VARCHAR(30) PRIMARY KEY,
	dept_name VARCHAR(30) NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES dept_managers(dept_no)
);

SELECT * FROM departments;

-- dept_emp
CREATE TABLE dept_emp (
	emp_no INTEGER PRIMARY KEY,
	dept_no VARCHAR(30) NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

SELECT * FROM dept_emp;

-- dept_manager
CREATE TABLE dept_manager (
	dept_no INTEGER PRIMARY KEY,
	emp_no INTEGER NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

SELECT * FROM dept_manager;

-- employees
CREATE TABLE employees (
	emp_no INTEGER PRIMARY KEY,
	emp_title_id VARCHAR(30) NOT NULL,
	birth_date DATE,
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	sex VARCHAR(30) NOT NULL,
	hire_date DATE,
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

SELECT * FROM employees;

-- salaries
CREATE TABLE salaries (
	emp_no INTEGER PRIMARY KEY,
	salary INTEGER,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

SELECT * FROM salaries;

-- titles
CREATE TABLE titles (
	title_id VARCHAR(30) PRIMARY KEY,
	title VARCHAR(30) NOT NULL,
);

SELECT * FROM titles;