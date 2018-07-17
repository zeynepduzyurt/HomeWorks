--Departmandaki tüm çalýþan personellerin isimlerini yanyana yazdýrma 
SELECT department_id, LISTAGG (first_name || ' ' ||last_name, ', ') 
    WITHIN GROUP (ORDER BY department_id) AS empNameList
     FROM emp GROUP BY department_id;
     
-- job id ye göre  grupla, emp_id ye göre sýrala 
--kendinden bir önceki ve bir sonraki salary ile toplar.
SELECT employee_info.*, SUM(salary) OVER (PARTITION BY department_id ORDER BY employee_id ROWS BETWEEN 1 PRECEDING AND 1 FOLLOWING ) AS deptsal
 FROM employee_info order by department_id 
     
    -- 3-TELEFON NO HERKESIN KENDINDEN BIR SONRAKI KISININ TELEFON NUMARASINI YANINA YAZIN HIRE_DATE E GÖRE SIRALI DEPARTMENT_ID göre gruplanmalý   
SELECT employees_info.*, 
   LEAD(phone_number,1) OVER (PARTITION BY department_id ORDER BY hire_date) NEXT_VALUE
     FROM employees_info ORDER BY department_id;
         

  
--4-MAASLARA GORE 1 DEN BASLAYARAK SIRALA EMPLOYEES TABLOSU ICINDE MAAS AYNI ISE KIDEME(ÝÞE GÝRÝÞ TARÝHÝ) GORE SIRALA       
SELECT  department_id,salary,start_date,
   ROW_NUMBER () OVER ( ORDER BY salary DESC) "Rank"
      FROM ( SELECT emp.department_id, emp.first_name, emp.salary, job.start_date FROM employees_info emp  JOIN job_history job ON emp.employee_id = job.employee_id)
       ORDER BY  "Rank" ,start_date, salary;



--5-TÜM TABLOYU EMPLOYEES ILK 10 ÝÇÝN 1 DIGER 10 ÝÇÝN 2... YAZACAK. Sýralamayý EMPLOYEE_ID

SELECT employees.*, DENSE_RANK() OVER (PARTITION BY department_id ORDER BY employee_id DESC) NUM FROM employees;

--6

SELECT a.*,avg_sal,DECODE(SIGN(avg_sal-SALARY), 1, 1,0) FROM employees a,
(SELECT department_id,AVG(salary)avg_sal FROM employees GROUP BY department_id)b
WHERE 1=1 AND a.department_id=b.department_id ORDER BY a.department_id,salary;

--7   
SELECT employees.*, FIRST_VALUE (hire_date) OVER (PARTITION BY department_id) FROM employees;
 
--8 Her departmanda en yüksek ücret alan personel dýþýndaki tüm kayýtlar gelsin. 

SELECT * FROM (
  SELECT e.first_name,e.department_id,salary, ROW_NUMBER() OVER (PARTITION BY department_id ORDER BY salary DESC) siralama FROM employees e
)
WHERE siralama >1;
 
--9 Her departmanda en yüksek ücret alan 2 personelin kayýtlarý gelsin.
 SELECT * FROM (
  SELECT e.first_name,e.department_id,salary, ROW_NUMBER() OVER (PARTITION BY department_id ORDER BY salary DESC) siralama FROM employees e
)
WHERE siralama <= 2 ;
 
 --10
SELECT first_name,last_name,  first_value(hire_date) OVER (PARTITION BY department_id ORDER BY hire_date ROWS BETWEEN 1 PRECEDING AND
1 FOLLOWING) NUM from employees emp;
           
           
           
           
           
           
           
