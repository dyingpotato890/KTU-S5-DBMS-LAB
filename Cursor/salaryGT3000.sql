SET SERVEROUTPUT ON;

CREATE TABLE EMPLOYEES (
    EMPLOYEE_ID NUMBER PRIMARY KEY,
    FIRST_NAME VARCHAR2(50),
    LAST_NAME VARCHAR2(50),
    SALARY NUMBER
);

INSERT INTO EMPLOYEES VALUES (1, 'John', 'Doe', 4500),
(2, 'Jane', 'Smith', 3500),
(3, 'Michael', 'Brown', 2800),
(4, 'Emily', 'Davis', 5000),
(5, 'David', 'Wilson', 3200),
(6, 'Linda', 'Taylor', 2000),
(7, 'James', 'Moore', 4000),
(8, 'Patricia', 'Anderson', 1500);

DECLARE
    CURSOR DISPLAY IS
        SELECT * FROM EMPLOYEES WHERE SALARY > 3000;
        
    EMPREC DISPLAY%ROWTYPE;
    
BEGIN
    OPEN DISPLAY;
    
    LOOP
    
        FETCH DISPLAY INTO EMPREC;
        EXIT WHEN DISPLAY%NOTFOUND;
        
        DBMS_OUTPUT.PUT_LINE(EMPREC.EMPLOYEE_ID || ' ' || EMPREC.FIRST_NAME || ' ' || EMPREC.LAST_NAME || ' ' || EMPREC.SALARY);
        
    END LOOP;
    
    CLOSE DISPLAY;
END;
/