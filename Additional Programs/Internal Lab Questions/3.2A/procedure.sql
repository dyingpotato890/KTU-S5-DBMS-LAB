-- SET SERVEROUTPUT ON

CREATE OR REPLACE PROCEDURE STORE(
    CUST_ID IN NUMBER,
    SALES_ID IN NUMBER,
    CUST_NAME IN VARCHAR2,
    CITY IN VARCHAR2,
    GRADE IN NUMBER
)
IS
BEGIN
    INSERT INTO CUSTOMER (CUSTOMER_ID, CUST_NAME, CITY, GRADE, SALESMAN_ID) 
    VALUES (CUST_ID, CUST_NAME, CITY, GRADE, SALES_ID);

    DBMS_OUTPUT.PUT_LINE('Values inserted');
END STORE;
/
 
DECLARE
    CURSOR DISPLAY IS
        SELECT * FROM CUSTOMER;
        
    CURSOR LASTID IS
        SELECT CUSTOMER_ID FROM CUSTOMER ORDER BY CUSTOMER_ID DESC FETCH FIRST 1 ROW ONLY;
    
    REC DISPLAY%ROWTYPE;
    LAST_ID NUMBER;

BEGIN
    OPEN LASTID;
    FETCH LASTID INTO LAST_ID;
    CLOSE LASTID;
    LAST_ID := LAST_ID + 1; 

    STORE(LAST_ID, 1, 'John Doe', 'New York', 12);
    
    OPEN DISPLAY;
    
    LOOP
        FETCH DISPLAY INTO REC;
        EXIT WHEN DISPLAY%NOTFOUND;
        
        DBMS_OUTPUT.PUT_LINE('Customer ID: ' || REC.CUSTOMER_ID || 
                            ', Name: ' || REC.CUST_NAME || 
                            ', City: ' || REC.CITY || 
                            ', Grade: ' || REC.GRADE || 
                            ', Salesman ID: ' || REC.SALESMAN_ID);
    END LOOP;
    
    CLOSE DISPLAY;
END;
/