MOV A,#38H
ACALL COMMAND
ACALL DELAY

MOV A,#0EH
ACALL COMMAND
ACALL DELAY
MOV A,#01H
ACALL COMMAND
ACALL DELAY
MOV A,#'V'
ACALL COMMAND
ACALL DELAY
MOV A,#'T'
ACALL COMMAND
ACALL DELAY
STAY: SJMP STAY

COMMAND:CLR P1.3
MOV P0,A
SETB P1.2
ACALL DELAY
CLR P1.2
RET

DATA:SETB P1.2
MOV P0,A
SETB P1.2
ACALL DELAY
CLR P1.2
RET

DELAY:MOV R3,#40H
Back:MOV R2,#250H
here:DJNZ R4,here
DJNZ R3,back
RET