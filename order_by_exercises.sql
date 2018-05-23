USE employees;

SELECT * FROM employees WHERE
  first_name IN ('Irena','Vidya','Maya')
  AND gender = 'M'
ORDER BY last_name ASC, first_name DESC;
SELECT * FROM employees WHERE
  last_name LIKE 'E%' OR last_name LIKE '%e'
ORDER BY emp_no DESC;
-- SELECT * FROM employees WHERE last_name LIKE 'E%' AND last_name LIKE '%e';
SELECT * FROM employees WHERE
  hire_date between '1990-01-01' and '1999-12-31' and month(birth_date) = 12 && day(birth_date) = 25
ORDER BY birth_date ASC, hire_date DESC;
-- SELECT * FROM employees WHERE last_name LIKE '%q%' AND last_name not LIKE '%qu%';