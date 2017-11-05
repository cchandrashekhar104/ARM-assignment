  PRESERVE8
     THUMB
 AREA     appcode, CODE, READONLY
     EXPORT __main
	 ENTRY 
__main  FUNCTION
	MOV r2,#16
	MOV r4,#8
loop CMP r2,r4
	CMP r2,r4
	ITE GT
	SUBGT r2,r2,r4
	SUBLE r4,r4,r2
	BNE loop
stop B stop ; stop program
     ENDFUNC
     END