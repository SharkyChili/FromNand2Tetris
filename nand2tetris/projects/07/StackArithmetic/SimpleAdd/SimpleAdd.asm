//push constant 7
//#get constant 7
@7
D=A
//#pushStack
@SP
A=M
M=D
@SP
M=M+1
//push constant 8
//#get constant 8
@8
D=A
//#pushStack
@SP
A=M
M=D
@SP
M=M+1
//command add
@SP
A=M-1
D=M
A=A-1
M=M+D
@SP
M=M-1
