  PRESERVE8
     THUMB
 AREA     appcode, CODE, READONLY
     EXPORT __main
	 ENTRY 
__main  FUNCTION
	MOV r2,#6
	MOV r4,#4
	MOV r5,#8
	MOV r6,#0
	MOV r1,#0x20000000
	CMP r2,r4
	STRLT r4,[r1]
	STRGT r2,[r1]
	LDR r6,[r1]
	CMP r6,r5
	MOV r6,r5
stop B stop ; stop program
     ENDFUNC
     END