CREATE OR REPLACE PACKAGE BODY hr.getTime AS
PROCEDURE  SelectOperation(inputNumber IN NUMBER,pin_value IN NUMBER)
AS 
operation Number;
 BEGIN 
   IF(pin_value = 1) THEN 
     DBMS_OUTPUT.PUT_LINE(inputNumber || 'adet tabloya ekleme yap�ld�');
     FOR loop_counter IN  1..inputNumber 
    LOOP
      INSERT INTO intern (name) VALUES('Zeynep'); 
   END LOOP;
    

 ELSIF(pin_value = 2) THEN 
  DBMS_OUTPUT.PUT_LINE(inputNumber ||' adet Tabloda silinme i�lemi yap�ld�');
     FOR loop_counter IN  1..inputNumber 
    LOOP
      DELETE FROM intern WHERE name = 'Zeynep';
   END LOOP;
   
   
    ELSIF(pin_value = 3) THEN 
     DBMS_OUTPUT.PUT_LINE(inputNumber ||' adet sat�r tabloda g�ncellendi');
     FOR loop_counter IN  1..inputNumber 
    LOOP
     UPDATE intern SET name='D�zyurt';
   END LOOP;
   END IF; 
   
END SelectOperation;  
PROCEDURE  CalculateTime (pin_Operation IN NUMBER)
AS

first_number Number; 
final_number Number;
BEGIN
   
   first_number := DBMS_UTILITY.GET_TIME;
   IF(pin_Operation = 1) THEN
    DBMS_OUTPUT.PUT_LINE('rollback yap�ld�');
    rollback;
    ELSIF(pin_Operation =2) THEN
    DBMS_OUTPUT.PUT_LINE('commit yap�ld�');
   commit;
   END IF;
   
   final_number := DBMS_UTILITY.GET_TIME;
   DBMS_OUTPUT.PUT_LINE(((final_number)-(first_number))/100 || 'sn');
   
END CalculateTime;
END getTime;
/
