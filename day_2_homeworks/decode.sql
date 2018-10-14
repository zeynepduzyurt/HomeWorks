/* Create by Zeynep Düzyurt on 24.06.2018
That displays all employeesd and indicate with the words Yes or No
whether they receive a commission.
*/
SELECT FIRST_NAME , SALARY,
DECODE(COMMISSION_PCT, NULL, 'no' , 'yes') COMMISSION
From EMPLOYEES;
 


