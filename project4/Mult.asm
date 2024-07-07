@R2
M=0   // initialize R2=0

@R0
D=M
@END
D;JEQ   // if(R0 == 0)

@R1
D=M
@END
D;JEQ   // if(R1 == 0)

@R0
D=M
@R1
D=D-M
@LOOP
D;JLT   // if(R0-R1 < 0)

@R1
D=M
@R0
M=D+M
@R0
D=M
@R1
M=D-M
@R1
D=M
@R0
M=M-D   // swap R0 and R1

(LOOP)
@R1
D=M
@R2
M=D+M   // R2=R2+R1

@R0
M=M-1   // decrement R0(n)

@R0
D=M
@END
D;JEQ   // if(R0 == 0)

@LOOP
0;JMP  // jump back to start of the loop

(END)
0;JMP