
SELECT * FROM employees;

SELECT 
    emp_name,
    salary,
    RANK() OVER (ORDER BY salary DESC)
FROM employees;
