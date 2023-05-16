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
	,de.emp_no
	,e.last_name
	,e.first_name
FROM
	departments as d
	inner join dept_emp as de on de.dept_no = d.dept_no
	inner join employees as e on e.emp_no = de.emp_no
;






