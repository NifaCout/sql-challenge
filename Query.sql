--Data Analysis  Queries 
--List the employee number, last name, first name, sex, and salary of each employee.

SELECT
	e.emp_no AS "Employee_Number",
	e.last_name AS "Last_Name",
	e.first_name AS "First_Name",
	e.sex AS "Sex",
	s.salary AS "Salary"
FROM
	employees e
	INNER JOIN salaries s ON e.emp_no = s.emp_no;
	
--List the first name, last name, and hire date for the employees who were hired in 1986.
SELECT
	first_name AS "Last_Name",
	last_name AS "Last_Name",
	hire_date AS "Hire_Date"
FROM
	employees
WHERE
	EXTRACT(YEAR FROM hire_date) = 1986;

--List the manager of each department along with their department number, department name, employee number, last name, and first name.
SELECT
	dm.emp_no AS "Manager_Emp_No",
	dm.dept_no AS "Dept_Number",
	d.dept_name AS "Dept_Name",
	e.emp_no AS "Employee_Number",
	e.last_name AS "First_Name",
	e.first_name AS "Last_Name"
FROM
	dept_manager dm
	INNER JOIN departments d ON dm.dept_no = d.dept_no
	INNER JOIN employees e ON dm.emp_no = e.emp_no;

--List the department number for each employee along with that employee’s employee number, last name, first name, and department name 
SELECT 
    de.dept_no AS "Dept_Number",
    e.emp_no AS "Employee_Number",
    e.last_name AS "Last_Name",
    e.first_name AS "First_Name",
    d.dept_name AS "Dept_Name"
FROM 
    dept_emp de
    INNER JOIN employees e ON de.emp_no = e.emp_no
    INNER JOIN departments d ON de.dept_no = d.dept_no;
	
--List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B 
SELECT
    first_name AS "First_Name",
    last_name AS "Last_Name",
    sex AS "Sex"
FROM
    employees
WHERE
    first_name = 'Hercules' AND last_name LIKE 'B%';

--List each employee in the Sales department, including their employee number, last name, and first name
SELECT
	d.dept_name AS "Dept_Name",
    e.emp_no AS "Employee_Number",
    e.last_name AS "Last_Name",
    e.first_name AS "First_Name"
FROM
    employees e
    INNER JOIN dept_emp de ON e.emp_no = de.emp_no
    INNER JOIN departments d ON de.dept_no = d.dept_no
WHERE
    d.dept_name = 'Sales';

--List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name 
SELECT
    e.emp_no AS "Employee_Number",
    e.last_name AS "Last_Name",
    e.first_name AS "First_Name",
    d.dept_name AS "Dept_Name"
FROM
    employees e
    INNER JOIN dept_emp de ON e.emp_no = de.emp_no
    INNER JOIN departments d ON de.dept_no = d.dept_no
WHERE
    d.dept_name IN ('Sales', 'Development');
	
--List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name
SELECT
    last_name AS "Last_Name",
    COUNT(*) AS frequency
FROM
    employees
GROUP BY
    last_name
ORDER BY
    frequency DESC;
