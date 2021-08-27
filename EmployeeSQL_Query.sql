--1 List the following details of each employee: employee number, last name, first name, sex, and salary.
select e.emp_no , e.first_name, e.last_name  , e.sex , s.salary  from EMPLOYEES e
join SALARIES s
on e.emp_no = s.emp_no 
--and e.emp_no = '473302'


--2 List first name, last name, and hire date for employees who were hired in 1986.
select  e.first_name, e.last_name  , hire_date from EMPLOYEES e
where extract(year from hire_date) = 1986




3 --List the manager of each department with the following information: department number, department name, 
--the manager's employee number, last name, first name.

select dm.dept_no as manager_dept_no, dp.dept_name as manager_dept_name, dm.emp_no as manager_emp_no , e.first_name as manager_firstName
, e.last_name as manager_lastName   from dept_manager dm
join departments dp
on dm.dept_no = dp.dept_no
join employees e
on dm.emp_no = e.emp_no

select * from departments

select * from employees e
where e.last_name ='BABA'

select * from dept_emp
--4) List the department of each employee with the following information: employee number, 
--last name, first name, and department name.



select  e.emp_no as emp_no , de.dept_no as emp_dept_no, dp.dept_name as emp_dept_name,
e.first_name as emp_firstName
, e.last_name as emp_lastName   from  employees e
join dept_emp de
on de.emp_no = e.emp_no
join departments dp
on dp.dept_no = de.dept_no

--5 List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
select  e.first_name, e.last_name  , e.sex  from EMPLOYEES e
where  e.first_name = 'Hercules'
and last_name like 'B%'

-- 6 List all employees in the Sales department, including their employee number, last name, 
-- first name, and department name.
select  e.emp_no as emp_no ,e.first_name as emp_firstName
, e.last_name as emp_lastName   ,
dp.dept_name as emp_dept_name  from  employees e
join dept_emp de
on de.emp_no = e.emp_no
join departments dp
on dp.dept_no = de.dept_no
where dp.dept_name like '%Sales%'

7)--List all employees in the Sales and Development departments, including 
--their employee number, last name, first name, and department name.


select  e.emp_no as emp_no ,e.first_name as emp_firstName
, e.last_name as emp_lastName   ,
dp.dept_name as emp_dept_name  from  employees e
join dept_emp de
on de.emp_no = e.emp_no
join departments dp
on dp.dept_no = de.dept_no
where dp.dept_name like '%Sales%'
OR dp.dept_name like '%Development%'

--8 In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

SELECT e.last_name, count(*)
   FROM employees e
   GROUP BY last_name
   HAVING COUNT(*) > 1
   order by count(*) desc
   
   select * from employees e
where e.last_name ='Baba'

