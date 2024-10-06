SET SERVEROUTPUT ON;

DECLARE
    CURSOR UPDATE_CURSOR IS
        SELECT rollnumber, S1, S2, S3, S4
        FROM Students
        FOR UPDATE;

    ROLL INTEGER;
    T1 INTEGER;
    T2 INTEGER;
    T3 INTEGER;
    T4 INTEGER;
    percentage FLOAT;

BEGIN
    OPEN UPDATE_CURSOR;
    LOOP
        FETCH UPDATE_CURSOR INTO ROLL, T1, T2, T3, T4;
        EXIT WHEN UPDATE_CURSOR%NOTFOUND;
        
        UPDATE Students
        SET total_marks = T1 + T2 + T3 + T4,
            percentage = (T1 + T2 + T3 + T4) / 4
        WHERE rollnumber = ROLL;
    END LOOP;
    
    CLOSE UPDATE_CURSOR;
END;
/

