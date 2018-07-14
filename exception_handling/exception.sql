--Zeynep Düzyurt
--8.7.2018
CREATE OR REPLACE PROCEDURE getEmployeeName(emp_id IN HR.EMPLOYEES.EMPLOYEE_ID%TYPE) 
IS
emp_name  hr.employees.first_name%TYPE;


BEGIN
     SELECT first_name  INTO emp_name  FROM employees   WHERE employee_id=emp_id;
      DBMS_OUTPUT.PUT_LINE('Çalýþanýn adý ' || emp_name);
      EXCEPTION 
         WHEN NO_DATA_FOUND  THEN 
           DBMS_OUTPUT.PUT_LINE(emp_id || 'no lu bir kayýt bulunmamakta');
              WHEN OTHERS THEN
                 dbms_output.put_line('hata' || '----' || sqlerrm || '----'|| DBMS_UTILITY.FORMAT_ERROR_BACKTRACE );
                   RAISE;

  END getEmployeeName;
/

BEGIN 
getEmployeeName(100);
END;
/