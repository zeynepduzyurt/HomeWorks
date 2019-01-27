/* Created by Zeynep Düzyurt on 19.06.2018
displays first and last names from HR.EMPLOYEES table
*/
BEGIN
FOR rec IN (SELECT FIRST_NAME,LAST_NAME FROM EMPLOYEES) LOOP
dbms_output.put_line('First Name - Last Name = ' || rec.FIRST_NAME || ' ' || rec.LAST_NAME);
END LOOP;
END;
/