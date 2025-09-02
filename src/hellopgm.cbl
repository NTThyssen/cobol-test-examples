       IDENTIFICATION DIVISION.
       PROGRAM-ID. HELLOPGM.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       COPY greet.cpy.
       LINKAGE SECTION.
       COPY customer.cpy.
       PROCEDURE DIVISION USING CUSTOMER-RECORD.
           DISPLAY WS-MESSAGE.
           DISPLAY "Customer: " CUST-ID SPACE CUST-NAME.
           EXEC SQL
                SELECT BALANCE
                  INTO :CUST-BALANCE
                  FROM CUSTOMERS
                 WHERE ID = :CUST-ID
           END-EXEC
           CALL "SUBPGM" USING CUSTOMER-RECORD.
           GOBACK.
