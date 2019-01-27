--1. odev
SELECT  Emp.employee_id,Emp.first_name,Dep.department_name
FROM EMPLOYEES Emp JOIN DEPARTMENTS Dep
ON Emp.EMPLOYEE_ID = Dep.DEPARTMENT_ID;