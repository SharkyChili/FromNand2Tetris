//push constant 111--------------------------
//#get constant 111
@111
D=A
//#pushStack
@SP
A=M
M=D
@SP
M=M+1
//push constant 333--------------------------
//#get constant 333
@333
D=A
//#pushStack
@SP
A=M
M=D
@SP
M=M+1
//push constant 888--------------------------
//#get constant 888
@888
D=A
//#pushStack
@SP
A=M
M=D
@SP
M=M+1
//pop static 8----------------------------
@StaticTest.8
D=A
@R13
M=D
//#popStack
@SP
A=M-1
D=M
@SP
M=M-1
@13
A=M
M=D
//pop static 3----------------------------
@StaticTest.3
D=A
@R13
M=D
//#popStack
@SP
A=M-1
D=M
@SP
M=M-1
@13
A=M
M=D
//pop static 1----------------------------
@StaticTest.1
D=A
@R13
M=D
//#popStack
@SP
A=M-1
D=M
@SP
M=M-1
@13
A=M
M=D
//push static 3--------------------------
//#get static 3
@StaticTest.3
D=M
//#pushStack
@SP
A=M
M=D
@SP
M=M+1
//push static 1--------------------------
//#get static 1
@StaticTest.1
D=M
//#pushStack
@SP
A=M
M=D
@SP
M=M+1
//command sub----------------------------------
@SP
A=M-1
D=M
A=A-1
M=M-D
@SP
M=M-1
//push static 8--------------------------
//#get static 8
@StaticTest.8
D=M
//#pushStack
@SP
A=M
M=D
@SP
M=M+1
//command add----------------------------------
@SP
A=M-1
D=M
A=A-1
M=M+D
@SP
M=M-1
