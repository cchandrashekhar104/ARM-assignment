     PRESERVE8
     THUMB
     AREA     appcode, CODE, READONLY
     EXPORT __main
	 ENTRY 
__main  FUNCTION	
		/*
		Calculating gcd using the following algorithm
		while (a != b)
		{
			if (a > b)
				a = a – b;
			else
				b = b – a;
		}
		a=R0
		b=R1
		*/
		MOV R0,#100
		MOV R1,#16
while	CMP R0,R1	;compare r0,r1
		BEQ stop	;if equal we got the gcd come out of the while loop
		IT GT		
		SUBGT R0,R0,R1	;if r0>r1 r0=r0-r1 
		SUBLT R1,R1,R0	;if r1>r0 r1=r1-r0
		B while
stop B stop ; stop program
     ENDFUNC
     END
