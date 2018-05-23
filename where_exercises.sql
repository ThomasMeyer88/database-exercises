USE employees;

SELECT * FROM employees WHERE first_name = 'Irena' OR 'Vidya' OR 'Maya';
SELECT * FROM employees WHERE last_name LIKE 'E%';
SELECT * FROM employees WHERE hire_date between '1990-01-01' and '1999-12-31';
SELECT * FROM employees WHERE month(birth_date) = 12 && day(birth_date) = 25;
SELECT * FROM employees WHERE last_name LIKE '%q%';