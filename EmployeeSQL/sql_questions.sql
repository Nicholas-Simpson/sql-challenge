/*Question 1 
List the employee number, last name, first name, sex, and salary of each employee. */
SELECT
	e.emp_no
	,e.last_name
	,e.first_name
	,e.sex
	,s.salaries
FROM
	employees as e
	inner join salaries as s on e.emp_no = s.emp_no
;


/* Question 2 List the first name, last name, and hire date for the employees who were hired in 1986. */
SELECT
	first_name
	,last_name
	,hire_date
FROM
	employees
	where hire_date between '1986-01-01' and '1986-12-31' 
	ORDER BY hire_date ASC
;


/* Question 3 List the manager of each department along with their department number, department name, employee number, last name, and first name. */
SELECT
	d.dept_no
	,d.dept_name
	,dm.emp_no
	,e.last_name
	,e.first_name
FROM
	departments AS d
	INNER JOIN dept_manager AS dm ON dm.dept_no = d.dept_no
	INNER JOIN employees AS e ON e.emp_no = dm.emp_no
;


/* Question 4 List the department number for each employee along with that employee’s employee number, last name, first name, and department name. */
SELECT
	d.dept_no
	,de.emp_no
	,e.last_name
	,e.first_name
	,d.dept_name
FROM
	departments AS d
	INNER JOIN dept_emp AS de ON de.dept_no = d.dept_no
	INNER JOIN employees AS e ON e.emp_no = de.emp_no
;


/* Question 5 List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B. */
SELECT
	e.first_name
	,e.last_name
	,e.sex
FROM
	employees AS e
	WHERE e.first_name LIKE 'Hercules' and e.last_name LIKE 'B%'
;


/* Question 6 List each employee in the Sales department, including their employee number, last name, and first name. */
SELECT
	d.dept_name
	,e.emp_no
	,e.last_name
	,e.first_name
FROM
	departments AS d
	INNER JOIN dept_emp AS de ON de.dept_no = d.dept_no
	INNER JOIN employees AS e ON e.emp_no = de.emp_no
	WHERE d.dept_name = 'Sales'
;


/* Question 7 List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name. */
SELECT
	d.dept_name
	,e.emp_no
	,e.last_name
	,e.first_name
FROM
	departments AS d
	INNER JOIN dept_emp AS de ON de.dept_no = d.dept_no
	INNER JOIN employees AS e ON e.emp_no = de.emp_no
	WHERE d.dept_name IN ('Sales','Development')
;

/* Question 8 List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name). */
SELECT
	COUNT(last_name) as Frequency
	,last_name
FROM
	employees
	GROUP BY last_name 
	ORDER BY Frequency DESC
;





