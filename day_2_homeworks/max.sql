/* Created by Zeynep Düzyurt on 19.06.2018
   selects frst name of the employee with highest employee id.
/*
SELECT FIRST_NAME
FROM EMPLOYEES
WHERE EMPLOYEE_ID=(SELECT MAX(EMPLOYEE_ID) FROM EMPLOYEES);