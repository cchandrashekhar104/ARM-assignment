  PRESERVE8
     THUMB
 AREA     appcode, CODE, READONLY
     EXPORT __main
	 ENTRY 
__main  FUNCTION
	MOV r3,#5
	MOV r4,#1
	MOV r5,#0
	AND r3,r4
	CMP r3,#0 //IF its even then r5 will get assigned 1 otherwise 0 for odd
	MOVEQ r5,#1
stop B stop ; stop program
     ENDFUNC
     END