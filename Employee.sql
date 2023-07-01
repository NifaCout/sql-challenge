--Create a table of departments.
CREATE TABLE departments (
	dept_no VARCHAR(10) NOT NULL PRIMARY KEY,
	dept_name VARCHAR NOT NULL
);



--Create a table of dept_emp
CREATE TABLE dept_emp (
	emp_no VARCHAR(10) NOT NULL PRIMARY KEY,
	dept_no VARCHAR NOT NULL
);

--Create a table of dept_manager
CREATE TABLE dept_manager
	dept_no VARCHAR(10) NOT NULL,
	emp_no VARCHAR(10) NOT NULL PRIMARY KEY
	
	
--Create a table of employees
CREATE TABLE employees (
	emp_no VARCHAR(10) NOT NULL PRIMARY KEY,
	emp_title_id VARCHAR NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	sex VARCHAR NOT NULL, 
	hire_date DATE NOT NULL
);

--Create a table of salaries (
	emp_no INTEGER(10) NOT NULL PRIMARY KEY
	salary INTEGER NOT NULL
);

--Create a table of titles
	title_id VARCHAR(10) NOT NULL PRIMARY KEY,
	title VARCHAR NOT NULL
);



	