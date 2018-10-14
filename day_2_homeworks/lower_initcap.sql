/* Created by Zeynep Düzyurt on 19.06.2018
   initcape() and lower() usage
/*

DECLARE
name1 varchar2(10) :='ERMAN';
surname1 varchar2(10) :='ÝbRiÞim';
name2 varchar2(10) := 'MusTaFa';
surname2 varchar2(10) :='Demir';

BEGIN

dbms_output.put_line('Name - Surname = ' || INITCAP(name1) || ' ' ||INITCAP(surname1));
dbms_output.put_line('Name - Surname = ' || LOWER(name2) || ' ' ||LOWER(surname2));

END;
/
