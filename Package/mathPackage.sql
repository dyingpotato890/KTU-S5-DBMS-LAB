-- PACKAGE SPECIFICATIONIS
CREATE OR REPLACE PACKAGE mathPack AS

    FUNCTION addNum(num1 NUMBER, num2 NUMBER) RETURN NUMBER;
    FUNCTION subtractNum(num1 NUMBER, num2 NUMBER) RETURN NUMBER;
    FUNCTION multiplyNum(num1 NUMBER, num2 NUMBER) RETURN NUMBER;
    FUNCTION divideNum(num1 NUMBER, num2 NUMBER) RETURN NUMBER;
    FUNCTION square(num IN NUMBER) RETURN NUMBER;

END mathPack; 
/

-- PACKAGE BODY
CREATE OR REPLACE PACKAGE BODY mathPack AS

    -- ADD TWO NUMBERS
    FUNCTION addNum(num1 NUMBER, num2 NUMBER) RETURN NUMBER IS 
        result NUMBER;
    BEGIN
        result := num1 + num2;
        RETURN result;
    END addNum;

    -- SUBTRACT TWO NUMBERS
    FUNCTION subtractNum(num1 NUMBER, num2 NUMBER) RETURN NUMBER IS
        result NUMBER;
    BEGIN
        result := num1 - num2;
        RETURN result;
    END subtractNum;

    -- MULTIPLY TWO NUMBERS
    FUNCTION multiplyNum(num1 NUMBER, num2 NUMBER) RETURN NUMBER IS
        result NUMBER;
    BEGIN
        result := num1 * num2;
        RETURN result;
    END multiplyNum;

    -- DIVIDE TWO NUMBERS
    FUNCTION divideNum(num1 NUMBER, num2 NUMBER) RETURN NUMBER IS
        result NUMBER;
    BEGIN
        IF num2 = 0 THEN
            RAISE_APPLICATION_ERROR(-20001, 'Division by zero is not allowed.');
        END IF;
        result := num1 / num2;
        RETURN result;
    END divideNum;

    -- SQUARE OF A NUMBER
    FUNCTION square(num IN NUMBER) RETURN NUMBER IS
        result NUMBER;
    BEGIN
        result := num * num;
        RETURN result;
    END square;

END mathPack; 
/