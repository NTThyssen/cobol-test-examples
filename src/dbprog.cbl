       IDENTIFICATION DIVISION.
       PROGRAM-ID. DBPROG.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  WS-USER        PIC X(10) VALUE "demo".
       01  WS-PASS        PIC X(10) VALUE "password".
       COPY sqlca.cpy.
       LINKAGE SECTION.
       COPY customer.cpy.
       PROCEDURE DIVISION USING CUSTOMER-RECORD.
           DISPLAY "DBPROG simulating database operation".
           EXEC SQL
                CONNECT TO 'MYDB' USER :WS-USER
           END-EXEC
           EXEC SQL
                INSERT INTO CUSTOMERS
                    (ID, NAME, BALANCE)
                VALUES (:CUST-ID, :CUST-NAME, :CUST-BALANCE)
           END-EXEC
           IF SQLCODE NOT = 0
               DISPLAY "SQL ERROR: " SQLCODE
           END-IF
           EXEC SQL
                COMMIT
           END-EXEC
           GOBACK.
