CREATE OR REPLACE PACKAGE hr.getTime AS 
PROCEDURE  SelectOperation(inputNumber IN NUMBER,pin_value IN NUMBER);
PROCEDURE  CalculateTime(pin_Operation IN NUMBER);
END getTime;
/