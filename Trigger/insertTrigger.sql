SET SERVEROUTPUT ON;

CREATE TABLE EMPLOYEES (
    EMPLOYEE_ID NUMBER PRIMARY KEY,
    FIRST_NAME VARCHAR2(50),
    LAST_NAME VARCHAR2(50),
    SALARY NUMBER
);

CREATE OR REPLACE TRIGGER MESSAGE
AFTER INSERT
ON EMPLOYEES
FOR EACH ROW
BEGIN
    DBMS_OUTPUT.PUT_LINE('NEW EMPLOYEE INSERTED!');
END;
/

INSERT INTO EMPLOYEES VALUES (1, 'John', 'Doe', 4500);
INSERT INTO EMPLOYEES VALUES (2, 'Jane', 'Smith', 3500);
INSERT INTO EMPLOYEES VALUES (3, 'Michael', 'Brown', 2800);
INSERT INTO EMPLOYEES VALUES (4, 'Emily', 'Davis', 5000);
INSERT INTO EMPLOYEES VALUES (5, 'David', 'Wilson', 3200);
INSERT INTO EMPLOYEES VALUES (6, 'Linda', 'Taylor', 2000);
/