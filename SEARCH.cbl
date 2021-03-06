       IDENTIFICATION DIVISION.
       PROGRAM-ID. HELLO.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-TABLE.
       05 WS-A PIC X(1) OCCURS 18 TIMES INDEXED BY I.
       01 WS-SRCH PIC A(1) VALUE 'Z'.

       PROCEDURE DIVISION.
       MOVE 'ABCDEFGHIJKLMNOPQR' TO WS-TABLE.
       SET I TO 1.
       SEARCH WS-A
       AT END DISPLAY WS-SRCH,' NOT FOUND IN TABLE'
       WHEN WS-A(I)=WS-SRCH
       DISPLAY 'LETTER ',WS-SRCH,' FOUND IN TABLE'
       END-SEARCH.

       STOP RUN.
