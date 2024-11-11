-- Create BOOK table
CREATE TABLE BOOK (
    Book_id INT PRIMARY KEY,
    Title VARCHAR(255) NOT NULL,
    Publisher_Name VARCHAR(255) NOT NULL,
    Pub_Year INT NOT NULL
);

INSERT INTO BOOK VALUES (1, 'The Great Gatsby', 'Scribner', 1925);
INSERT INTO BOOK VALUES (2, '1984', 'Secker & Warburg', 1949);
INSERT INTO BOOK VALUES (3, 'To Kill a Mockingbird', 'J.B. Lippincott & Co.', 1960);


-- Create BOOK_AUTHORS table
CREATE TABLE BOOK_AUTHORS (
    Book_id INT,
    Author_Name VARCHAR(255) NOT NULL,
    PRIMARY KEY (Book_id, Author_Name),
    FOREIGN KEY (Book_id) REFERENCES BOOK(Book_id)
);

INSERT INTO BOOK_AUTHORS VALUES(1, 'F. Scott Fitzgerald');
INSERT INTO BOOK_AUTHORS VALUES(2, 'George Orwell');
INSERT INTO BOOK_AUTHORS VALUES(3, 'Harper Lee');

-- Create PUBLISHER table
CREATE TABLE PUBLISHER (
    Name VARCHAR(255) PRIMARY KEY,
    Address VARCHAR(255),
    Phone VARCHAR(20)
);

INSERT INTO PUBLISHER VALUES('Scribner', '123 Publisher St, New York, NY', '123-456-7890');
INSERT INTO PUBLISHER VALUES('Secker & Warburg', '456 Publisher Rd, London, UK', '987-654-3210');
INSERT INTO PUBLISHER VALUES('J.B. Lippincott & Co.', '789 Publisher Blvd, Philadelphia, PA', '555-555-5555');

-- Create LIBRARY_BRANCH table
CREATE TABLE LIBRARY_BRANCH (
    Branch_id INT PRIMARY KEY,
    Branch_Name VARCHAR(255) NOT NULL,
    Address VARCHAR(255)
);

INSERT INTO LIBRARY_BRANCH VALUES(1, 'Main Library', '100 Main St, New York, NY');
INSERT INTO LIBRARY_BRANCH VALUES(2, 'East Side Branch', '200 East St, New York, NY');
INSERT INTO LIBRARY_BRANCH VALUES(3, 'West Side Branch', '300 West St, New York, NY');

-- Create BOOK_COPIES table
CREATE TABLE BOOK_COPIES (
    Book_id INT,
    Branch_id INT,
    No_of_Copies INT NOT NULL,
    PRIMARY KEY (Book_id, Branch_id),
    FOREIGN KEY (Book_id) REFERENCES BOOK(Book_id),
    FOREIGN KEY (Branch_id) REFERENCES LIBRARY_BRANCH(Branch_id)
);

INSERT INTO BOOK_COPIES VALUES(1, 1, 5);
INSERT INTO BOOK_COPIES VALUES(1, 2, 3);
INSERT INTO BOOK_COPIES VALUES(2, 1, 4);
INSERT INTO BOOK_COPIES VALUES(2, 3, 2);
INSERT INTO BOOK_COPIES VALUES(3, 2, 6);

-- Create BOOK_LENDING table
CREATE TABLE BOOK_LENDING (
    Book_id INT,
    Branch_id INT,
    Card_No INT,
    Date_Out DATE NOT NULL,
    Due_Date DATE NOT NULL,
    PRIMARY KEY (Book_id, Branch_id, Card_No),
    FOREIGN KEY (Book_id) REFERENCES BOOK(Book_id),
    FOREIGN KEY (Branch_id) REFERENCES LIBRARY_BRANCH(Branch_id)
);

INSERT INTO BOOK_LENDING VALUES(1, 1, 101, TO_DATE('2024-10-01', 'YYYY-MM-DD'), TO_DATE('2024-10-15', 'YYYY-MM-DD'));
INSERT INTO BOOK_LENDING VALUES(2, 3, 102, TO_DATE('2024-10-03', 'YYYY-MM-DD'), TO_DATE('2024-10-17', 'YYYY-MM-DD'));
INSERT INTO BOOK_LENDING VALUES(3, 2, 103, TO_DATE('2024-10-05', 'YYYY-MM-DD'), TO_DATE('2024-10-19', 'YYYY-MM-DD'));