SET VERIFY OFF;
SET SERVEROUTPUT ON;

DECLARE
	a INTEGER := &a;
	flag INTEGER := 0;

BEGIN
	FOR i IN 2..a/2 LOOP
		IF mod(a,i) = 0 THEN
			dbms_output.put_line(a || ' Is Not A Prime Number!');
			flag := 1;
			EXIT;
		END IF;
	END LOOP;
	
	IF flag = 0 THEN	
		dbms_output.put_line(a || ' Is A Prime Number!');
	END IF;
	
END;
/
