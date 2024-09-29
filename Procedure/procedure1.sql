CREATE OR REPLACE PROCEDURE MIN_VALUE(
	num1 integer, num2 integer
)
IS
BEGIN
	if num1 < num2 then
		dbms_output.put_line(num1 || ' is the Smallest Number.');
	else
		dbms_output.put_line(num1 || ' is the Smallest Number.');
	end if;
END MIN_VALUE;
/
