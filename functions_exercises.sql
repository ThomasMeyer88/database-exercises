USE employees;

SELECT * FROM employees WHERE
first_name IN ('Irena','Vidya','Maya')
AND gender = 'M'
ORDER BY last_name ASC, first_name DESC;
SELECT CONCAT(first_name, ' ',last_name)FROM employees WHERE
first_name like 'e%e' and last_name like 'e%e'
ORDER BY last_name DESC;

-- SELECT * FROM employees WHERE last_name LIKE 'E%' AND last_name LIKE '%e';

SELECT DATEDIFF(curdate(), hire_date) / 365 as days_hired
FROM employees
WHERE hire_date between '1990-01-01' and '1999-12-31'
AND birth_date LIKE '%12-25'
ORDER BY birth_date ASC, hire_date DESC;
-- SELECT * FROM employees WHERE last_name LIKE '%q%' AND last_name not LIKE '%qu%';