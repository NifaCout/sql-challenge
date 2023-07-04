DROP TABLE IF EXISTS titles;
DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS salaries;


--Create a table of titles
CREATE TABLE IF NOT EXISTS titles (
	title_id VARCHAR(10) NOT NULL PRIMARY KEY,
	title VARCHAR NOT NULL

);
SELECT * FROM titles limit 10;

--Create a table of departments.
CREATE TABLE IF NOT EXISTS departments (
	dept_no VARCHAR(10) NOT NULL PRIMARY KEY,
	dept_name VARCHAR NOT NULL
);

SELECT * FROM departments limit 10;

--Create a table of employees

CREATE TABLE IF NOT EXISTS employees (
    emp_no INT  NOT NULL PRIMARY KEY,
    emp_title_id VARCHAR NOT NULL,
    birth_date DATE  NOT NULL,
    first_name VARCHAR  NOT NULL,
    last_name VARCHAR  NOT NULL,
    sex VARCHAR  NOT NULL,
    hire_date DATE  NOT NULL
	FOREIGN KEY (emp_title_id) REFERENCES titles (title_id)
);
SELECT * FROM employees limit 10;

ALTER DATABASE "SQL_Challenge.db" SET datestyle TO "ISO, MDY";
SELECT current_database();

--Create a table of dept_emp
CREATE TABLE IF NOT EXISTS dept_emp (
	emp_no INT NOT NULL,
	dept_no VARCHAR(10) NOT NULL
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments (dept_no)
);
SELECT * FROM dept_emp limit 10;


--Create a table of dept_manager
CREATE TABLE IF NOT EXISTS dept_manager (
	dept_no VARCHAR(10) NOT NULL,
	emp_no INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no)
);
SELECT * FROM dept_manager limit 10;
	
--Create a table of salaries 
CREATE TABLE IF NOT EXISTS salaries (
	emp_no INT NOT NULL,
	salary INTEGER NOT NULL
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
);

SELECT * FROM salaries limit 10;


