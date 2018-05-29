USE employees;

SELECT *
FROM employees
WHERE hire_date IN(
  SELECT hire_date
  FROM employees
  WHERE emp_no = 101010
);

SELECT DISTINCT t.title
FROM employees e
JOIN titles t ON (t.emp_no = e.emp_no)
WHERE e.first_name IN(
  SELECT first_name
  FROM employees
  WHERE first_name = 'Aamod'
);

SELECT concat(first_name, ' ', last_name) AS fullname
FROM employees e
JOIN dept_manager dm ON(dm.emp_no = e.emp_no)
WHERE gender IN(
  SELECT gender
  FROM employees
  WHERE gender = 'F'
);

-- bonus

SELECT DISTINCT dept_name
FROM departments d
JOIN dept_manager dm ON(dm.dept_no = d.dept_no)
JOIN employees e ON(e.emp_no = dm.emp_no)
WHERE gender IN(
  SELECT gender
  FROM employees
  WHERE gender ='F' AND dm.to_date > now()
);

-- second bonus

SELECT first_name, last_name
FROM employees e
JOIN salaries s ON(s.emp_no = e.emp_no)
WHERE salary IN(
SELECT max(salary)
FROM salaries s
WHERE s.to_date > now()
);
