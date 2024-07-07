(START)
@i
M=0    // initialize i=0
@KBD
D=M
@END
D;JEQ    // if(KBD == 0)
@FILL
D;JGT    // if(KBD > 0)


(FILL)
@i
D=M
@8192    // 32 words per row, 256 rows
D=D-A    
@START
D;JEQ    // if(8192-i == 0), jump to start. loop ends.

@i
D=M
@SCREEN
A=D+A   // screenAddress + i  
M=-1    // -1 in binary is all ones, so it will be set all the bits

@i
M=M+1    // i++
@FILL
0;JMP


(CLEAR)
@i
D=M
@8192
D=D-A
@START
D;JEQ

@i
D=M
@SCREEN
A=D+A
M=0

@i
M=M+1
@CLEAR
0;JMP

(END)
@CLEAR
0;JMP