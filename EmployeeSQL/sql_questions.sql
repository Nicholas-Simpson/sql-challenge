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
	where hire_date > 1986
;