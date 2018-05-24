USE employees;

SELECT DISTINCT title
FROM titles;

SELECT DISTINCT CONCAT(first_name, ' ', last_name)
FROM employees
WHERE last_name LIKE 'E%e';

SELECT DISTINCT COUNT(last_name), last_name
FROM employees
WHERE last_name LIKE '%q%'
AND last_name NOT LIKE '%qu%'
GROUP BY last_name;

SELECT count(gender), gender
FROM employees
WHERE first_name IN ('Irena','Vidya','Maya')
GROUP BY gender;