SET VERIFY OFF;
SET SERVEROUTPUT ON;

DECLARE
	a INTEGER := &a;
	flag INTEGER;
	
BEGIN
	dbms_output.put_line(2);
	FOR j in 3..a LOOP
		flag := 0;
		FOR i IN 2..(j/2) LOOP
			IF mod(j, i) = 0 THEN
				flag := 1;
				EXIT;
			END IF;
		END LOOP;
		
		IF flag = 0 THEN
			dbms_output.put_line(j);
		END IF;
	END LOOP;
END;
/
