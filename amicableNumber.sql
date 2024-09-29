SET VERIFY OFF;
SET SERVEROUTPUT ON;

DECLARE
	num1 INTEGER := &a;
	num2 INTEGER := &b;
	sum1 INTEGER := 0;
	sum2 INTEGER := 0;
	
BEGIN
	FOR i IN 1..(num1/2) LOOP
		IF mod(num1, i) = 0 THEN
			sum1 := sum1 + i;
		END IF;
	END LOOP;
	
	FOR i IN 1..(num2/2) LOOP
		IF mod(num2, i) = 0 THEN
			sum2 := sum2 + i;
		END IF;
	END LOOP;
	
	IF sum1 = num2 AND sum2 = num1 THEN
		dbms_output.put_line(num1 || ' and ' || num2 || ' Are Amicable Numbers!');
	ELSE
		dbms_output.put_line(num1 || ' and ' || num2 || ' Are NOT Amicable Numbers!');
	END IF;
	
END;
/
