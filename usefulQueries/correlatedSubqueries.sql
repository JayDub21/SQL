-- for each employee:
-- calculate the avg salary or each office_id
-- return the employee if salary > avg

USE sql_hr;

SELECT *
FROM employees e
WHERE salary > (
	SELECT AVG(salary)
    FROM employees
    WHERE office_id = e.office_id
)