SET VERIFY OFF;

DECLARE
    a integer := &a;
	num integer := a;
	sumn integer := 0;
	temp integer;
    
BEGIN
    while num != 0 LOOP
        temp := MOD(num, 10);
        sumn := sumn + (temp * temp * temp);
        num := TRUNC(num / 10);
    END LOOP;
    
    IF sumn = a THEN
        dbms_output.put_line('Armstrong Number');
    ELSE
        dbms_output.put_line('Not An Armstrong Number');
    END IF;
END;
/
