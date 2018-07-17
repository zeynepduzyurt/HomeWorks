CREATE TABLE employee_info(
    first_name  VARCHAR(50), last_name   VARCHAR(50),  salary NUMBER, department_name   VARCHAR(60), department_id NUMBER, employee_id NUMBER);
    INSERT INTO employee_info ( first_name,last_name,salary,department_name, department_id,employee_id)
        SELECT  emp.first_name,emp.last_name, emp.salary, dep.department_name, dep.department_id, emp.employee_id
        FROM employees emp join departments dep 
         ON emp.department_id =dep.department_id;
           SELECT first_name, last_name, salary, department_name, department_id, employee_id FROM employee_info;
           
           
           
             
  CREATE TABLE employees_info(
  first_name  VARCHAR(50), last_name   VARCHAR(50),  salary NUMBER, department_name   VARCHAR(60), department_id NUMBER, employee_id NUMBER,  hire_date date, phone_number VARCHAR(20));
    INSERT INTO employees_info (  first_name,last_name,salary,department_name, department_id,employee_id, hire_date, phone_number )
        SELECT  emp.first_name,emp.last_name, emp.salary, dep.department_name, dep.department_id, emp.employee_id,emp.hire_date, emp.phone_number
        FROM employees emp join departments dep 
         ON emp.department_id =dep.department_id;
           SELECT first_name, last_name, salary, department_name, department_id, employee_id,hire_date, phone_number FROM employees_info;   