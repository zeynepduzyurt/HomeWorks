/* Created by Zeynep Düzyurt on 19.06.2018
displays numbers between 1 and 20
*/
DECLARE 
i number;
BEGIN
FOR i IN 0..20 LOOP
IF MOD(i,2) = 0 THEN
DBMS_OUTPUT.PUT_LINE(i);
END IF;
END LOOP;
END;
/
