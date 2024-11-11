-- Write a trigger to print a statement “new book is inserted” when new book is inserted into the table book. 

CREATE OR REPLACE TRIGGER insertTrigger
AFTER INSERT 
ON BOOK 
FOR EACH ROW

BEGIN
    DBMS_OUTPUT.PUT_LINE('New Book is Inserted');
END;
/

INSERT INTO BOOK VALUES(5, 'Harry Potter', 'JK Rowling', 1999);