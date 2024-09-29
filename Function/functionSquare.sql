CREATE OR REPLACE FUNCTION squareNum(number IN NUMBER)
RETURN NUMBER
IS
   result NUMBER;
BEGIN
   result := number * number;
   RETURN result;
END;
/
