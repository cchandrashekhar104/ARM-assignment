     PRESERVE8
     THUMB
     AREA     appcode, CODE, READONLY
     EXPORT __main
	 ENTRY 
__main  FUNCTION		 
		/*Fibonacci numbers
		I am storing the fibonacci numbers starting from memory location 0x2000000
		The first 2 numbers 0 and 1 are stored before the start of the loop
		R1 and R0 contain the initial 2 numbers for generating the series
		R3 contains the number of terms to be generated
		*/
		MOV R0,#0X20000000	;memory location to store the series
		MOV R1,#0			;intial number 0
		MOV R2,#1			;intial number 1
		MOV R3,#5			;number of terms
		MOV R4,#0			;to loop
		STR R1,[R0]			;store 0 to first memory location
		ADD R0,#1			;move the pointer to next location
		STR R2,[R0]			;sotre 1 at the location pointed by R0
		ADD R0,#1			;move the pointer
		
LOOP	CMP R4,R3			;condition for loop
		BGT stop			;jump to stop if r4>r3
		ADD R5,R1,R2		;calculte the next term of the series
		STR R5,[R0]			;store the calculated value at the location pointed
		MOV R1,R2			;update the previous values
		MOV R2,R5			
		ADD R4,#1			;update loop counter
		ADD R0,#1			;update pointer to the memory location
		B LOOP

stop B stop ; stop program
     ENDFUNC
     END
