     PRESERVE8
     THUMB
     AREA     appcode, CODE, READONLY
	 GBLA x		;define global arithmetic variable x
x 	 SETA 9		;set x as 9
	 GBLA y		;define global arithmetic variable y
y 	 SETA 2		;set y as 2
	 GBLA z		;define global arithmetic variable z
z 	 SETA 37	;set z as 37
	 GBLA w		;define global variable w
w 	 SETA 19	;set w as 19
		 		
     EXPORT __main
	 ENTRY 
__main  FUNCTION	
		MOV R0,#0	;R0 will get value based on nested if else condition

		IF x>y
			IF z>w
				MOV R0,#1
			ELSE
				MOV R0,#2
			ENDIF
		ELSE
			IF z>w
				MOV R0,#3
			ELSE
				MOV R0,#4
			ENDIF
		ENDIF
stop B stop ; stop program
     ENDFUNC
     END
