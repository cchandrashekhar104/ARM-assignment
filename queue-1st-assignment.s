     PRESERVE8
     THUMB
     AREA     appcode, CODE, READONLY
     EXPORT __main
	 ENTRY 
__main  FUNCTION		 
        MOV r3, #0x20000000 ;initial value of tail of queue
		MOV r4, #0x20000000	;initial value of head of queue
		MOV r1, #0x12	;random number
		MOV r2, #0xA	;number of times first loop will run
		
		/*This loop will add elements to the end of queue one by one till R2 becomes 0*/
loop 	CMP r2,#0		;compare R2
        STR r1,[r3]		;store the number at the end of the queue
        ADD r3,#0x4		;increment pointer by 4
		EOR r1,r1,r2	;generate next random number
		SUBGT r2,r2,#1	;update R2
		BGT loop
		
		/*This loop will remove elements from the head of the queue*/
		MOV r2,#0x4		;number of elements to be removed
loop1	CMP r2,#0		;compare r2
        MOV r1,#0		
        STR r1,[r4]		;store 0 at the location pointed by head
        ADD r4,#0x4		;update head pointer
		SUBGT r2,r2,#1	;decrement r2
		BGT loop1
			  
		MOV r3, #0x20000000	;update tail pointer to the starting point because it is a circular queue
		MOV r2,#0x4			;number of elements to be added to the queue
loop2 	CMP r2,#0			;compare r2
		EOR r1,r1,r2		;generate next random number
        STR r1,[r3]			;store the number at the location pointed by tail
        ADD r3,#0x4 		;update tail pointer
		SUBGT r2,r2,#1		;update r2
		BGT loop2
			  
		MOV r2,#0x6			;remove 6 elements
loop3	CMP r2,#0			;compare r2
        MOV r1,#0			
        STR r1,[r4]			;store 0 at the location pointed by head of the queue
        ADD r4,#0x4			;update head pointer
		SUBGT r2,r2,#1		;update r2
		BGT loop3
			  
		MOV r4,#0x20000000	;because it is circular queue point the head again at the starting address to remove elements
		MOV r2,#0x4			;number of elements to be removed
loop4	CMP r2,#0			;compare r2
        MOV r1,#0			
        STR r1,[r4]			;make the value pointed by head to 0
        ADD r4,#0x4			;update head
		SUBGT r2,r2,#1		;update r2
		BGT loop4		
       
stop B stop ; stop program
     ENDFUNC
     END
