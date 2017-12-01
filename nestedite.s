  PRESERVE8
     THUMB
 AREA     appcode, CODE, READONLY
     EXPORT __main
	 ENTRY 
__main  FUNCTION
	MOV r2,#5
	MOV r4,#3
	MOV r3,#0

	CMP r2,r4
	ITTEE GT
	SUBGT r2,r2,r4
	ADDGT r3,#1
	SUBLE r4,r4,r2
	ADDLE r3,#2

stop B stop ; stop program
     ENDFUNC
     END
