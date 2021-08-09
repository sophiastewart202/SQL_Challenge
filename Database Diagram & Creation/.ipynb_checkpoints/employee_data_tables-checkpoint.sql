DROP TABLE IF EXISTS departments;

CREATE TABLE departments(
	dept_no VARCHAR NOT NULL PRIMARY KEY 
	,dept_name VARCHAR
);

DROP TABLE IF EXISTS titles;

CREATE TABLE titles(
	title_id VARCHAR NOT NULL PRIMARY KEY
	,title VARCHAR
);

DROP TABLE IF EXISTS employees;

CREATE TABLE employees(
	emp_no INT NOT NULL PRIMARY KEY
	,emp_title VARCHAR
	,birth_date DATE
	,first_name VARCHAR
	,last_name VARCHAR
	,sex VARCHAR(10)
	,hire_date DATE
	,FOREIGN KEY (emp_title) REFERENCES titles(title_id)
);

DROP TABLE IF EXISTS dept_manager;

CREATE TABLE dept_manager(
	dept_no VARCHAR NOT NULL
	,emp_no INT NOT NULL
	,PRIMARY KEY (dept_no, emp_no)
	,FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
	,FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

DROP TABLE IF EXISTS salaries;

CREATE TABLE salaries(
	emp_id INT NOT NULL
	,salary INT
	,FOREIGN KEY (emp_id) REFERENCES employees(emp_no)
);

DROP TABLE IF EXISTS dept_emp;

CREATE TABLE dept_emp(
	emp_no INT NOT NULL
	,dept_no VARCHAR NOT NULL
	,PRIMARY KEY (emp_no, dept_no)
	,FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
	,FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
)