CREATE OR REPLACE FUNCTION square(num IN NUMBER)
RETURN NUMBER
IS
   result NUMBER;
BEGIN
   result := num * num;
   RETURN result;
END;
/

