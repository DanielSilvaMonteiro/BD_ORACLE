SET SERVEROUTPUT ON;
DECLARE
   v_ID VARCHAR(10) := 'Novo programa PL/SQL';
BEGIN 
   dbms_output.put_line(v_ID);
   v_ID := 2 ;
   dbms_output.put_line(v_ID);
END;