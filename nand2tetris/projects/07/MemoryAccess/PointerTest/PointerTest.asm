//push constant 3030--------------------------
//#get constant 3030
@3030
D=A
//#pushStack
@SP
A=M
M=D
@SP
M=M+1
//pop pointer 0----------------------------
@THIS
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
//push constant 3040--------------------------
//#get constant 3040
@3040
D=A
//#pushStack
@SP
A=M
M=D
@SP
M=M+1
//pop pointer 1----------------------------
@THAT
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
//push constant 32--------------------------
//#get constant 32
@32
D=A
//#pushStack
@SP
A=M
M=D
@SP
M=M+1
//pop this 2----------------------------
@THIS
D=M
@2
D=D+A
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
//push constant 46--------------------------
//#get constant 46
@46
D=A
//#pushStack
@SP
A=M
M=D
@SP
M=M+1
//pop that 6----------------------------
@THAT
D=M
@6
D=D+A
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
//push pointer 0--------------------------
//#get pointer 0
@THIS
D=M
//#pushStack
@SP
A=M
M=D
@SP
M=M+1
//push pointer 1--------------------------
//#get pointer 1
@THAT
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
//push this 2--------------------------
//#get this 2
@THIS
D=M
@2
A=D+A
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
//push that 6--------------------------
//#get that 6
@THAT
D=M
@6
A=D+A
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
