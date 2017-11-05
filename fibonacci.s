	PRESERVE8
    THUMB
	AREA     appcode, CODE, READONLY
    EXPORT __main
	ENTRY 
__main  FUNCTION
	; FIBONACCI SERIES
	MOV R0,#0
    MOV R1,#1
    MOV R3,#10 
    MOV R4,#0 
    MOV R5,#0x20000000
    ADD R4,R0,R1
loop1 CMP R4,R3 
    BLE LOOP
    B stop 
LOOP STR R4,[R5];
    MOV R0,R1
    MOV R1,R4
    ADD R4,R0,R1
	B loop1
stop    B stop 
        ENDFUNC 
        END