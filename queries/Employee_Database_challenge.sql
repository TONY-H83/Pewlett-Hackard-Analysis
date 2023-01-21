--STEPS 1-7 MODULE 7 CHALLENGE
--create a Retirement Titles table that holds all the titles of employees who were born between January 1, 1952 and December 31, 1955

-- SELECT E.EMP_NO, E.FIRST_NAME, E.LAST_NAME, T.TITLE,T.FROM_DATE, T.TO_DATE
-- INTO RETIREMENT_TITLES
-- FROM EMPLOYEES E
-- LEFT JOIN TITLES T ON (E.EMP_NO = T.EMP_NO)
-- WHERE E.birth_date BETWEEN '1952-01-01' AND '1955-12-31'
-- ORDER BY E.EMP_NO

-- Use Dictinct with Orderby to remove duplicate rows
-- SELECT DISTINCT ON (emp_no) EMP_NO, first_name, last_name, title
-- INTO unique_titles
-- FROM RETIREMENT_TITLES 
-- WHERE TO_DATE = '9999-01-01'
-- ORDER BY EMP_NO, TO_DATE DESC

-- SELECT COUNT(TITLE), TITLE
-- INTO retiring_titles
-- FROM UNIQUE_TITLES
-- GROUP BY TITLE
-- ORDER BY 1 DESC

--In the Employee_Database_challenge.sql file, write a query to create a Mentorship Eligibility table that holds the employees 
--who are eligible to participate in a mentorship program.

-- SELECT DISTINCT ON (E.EMP_NO) E.EMP_NO,
-- E.FIRST_NAME,
-- E.LAST_NAME,
-- E.BIRTH_DATE,
-- DE.FROM_DATE,
-- DE.TO_DATE,
-- T.TITLE
-- INTO mentorship_elgibility
-- FROM EMPLOYEES E
-- LEFT JOIN DEPT_EMP DE ON (E.EMP_NO = DE.EMP_NO)
-- LEFT JOIN TITLES T ON (E.EMP_NO = T.EMP_NO)
-- WHERE E.birth_date BETWEEN '1965-01-01' AND '1965-12-31'
-- ORDER BY EMP_NO