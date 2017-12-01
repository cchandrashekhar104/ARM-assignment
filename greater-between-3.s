     PRESERVE8
     THUMB
     AREA     appcode, CODE, READONLY
     EXPORT __main
	 ENTRY 
__main  FUNCTION	
		/*Get the largest number between 3 numbers
		The result will be stored in R3
		*/
		MOV R0,#8	;number 1
		MOV R1,#6	;number 2
		MOV R2,#9	;number 3
		MOV R3,R0	;if r0 == r1
		CMP R0,R1	;compare r0 and r1
		MOVLT R3,R1	;if r1 is greater move it to r3
		MOVGT R3,R0	;if r0 is greater move it to r3
		CMP R3,R2	;finally compare r3 and r2
		MOVLT R3,R2	;if r2 is greater move it to r3
stop B stop ; stop program
     ENDFUNC
     END
