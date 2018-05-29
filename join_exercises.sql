USE employees;

-- SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name, d.dept_name
-- FROM employees as e
-- JOIN dept_emp as de
--   ON de.emp_no = e.emp_no
-- JOIN departments as d
--   ON d.dept_no = de.dept_no
-- WHERE de.to_date = '9999-01-01' AND e.emp_no = 10001;

SELECT dept.dept_name, concat(emp.first_name, ' ', emp.last_name) as full_name
from departments dept
  JOIN dept_manager mang
    ON (dept.dept_no = mang.dept_no)
  JOIN dept_emp demp
    ON (demp.emp_no = mang.emp_no)
  JOIN employees emp
    ON (demp.emp_no = emp.emp_no)
WHERE mang.to_date > now()
ORDER BY dept.dept_name;

SELECT dept.dept_name, concat(emp.first_name, ' ', emp.last_name) as full_name
from departments dept

JOIN dept_manager mang
    ON (dept.dept_no = mang.dept_no)
  JOIN dept_emp demp
    ON (demp.emp_no = mang.emp_no)
  JOIN employees emp
    ON (demp.emp_no = emp.emp_no)
WHERE mang.to_date > now() AND emp.gender = 'F'
ORDER BY dept.dept_name;

SELECT DISTINCT T.title, count(*)
from  employees EMP
  LEFT JOIN titles T ON (EMP.emp_no = T.emp_no)
  RIGHT JOIN dept_emp DEMP ON (DEMP.emp_no = EMP.emp_no)
  LEFT JOIN departments DEPT ON (DEMP.dept_no = DEPT.dept_no)
WHERE T.to_date >= current_date() and  DEMP.to_date >= current_date() and DEPT.dept_no = 'd009'
GROUP BY T.title

SELECT DISTINCT dept.dept_name, concat(emp.first_name, ' ', emp.last_name) as full_name, SAL.salary
from departments dept
  JOIN dept_manager mang
    ON (dept.dept_no = mang.dept_no)
  JOIN dept_emp demp
    ON (demp.emp_no = mang.emp_no)
  JOIN employees emp
    ON (demp.emp_no = emp.emp_no)
  JOIN salaries SAL
    ON (SAL.emp_no = emp.emp_no)
WHERE mang.to_date > now() AND SAL.to_date > now()
ORDER BY dept.dept_name;

