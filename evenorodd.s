     PRESERVE8
     THUMB
     AREA     appcode, CODE, READONLY
     EXPORT __main
	 ENTRY 
__main  FUNCTION	
		/*
		Code to check if number is even or odd
		Even number have lsb as 0 so to check if even or we just and it with 1
		If the result is 0 it is even else it is odd
		*/
		MOV R0,#8	;number to check
		MOV R1,#1	;result will be in this register
		AND R1,R0	
stop B stop ; stop program
     ENDFUNC
     END
