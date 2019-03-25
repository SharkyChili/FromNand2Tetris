//push constant 10--------------------------
//#get constant 10
@10
D=A
//#pushStack
@SP
A=M
M=D
@SP
M=M+1
//pop local 0----------------------------
@LCL
D=M
@0
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
//push constant 21--------------------------
//#get constant 21
@21
D=A
//#pushStack
@SP
A=M
M=D
@SP
M=M+1
//push constant 22--------------------------
//#get constant 22
@22
D=A
//#pushStack
@SP
A=M
M=D
@SP
M=M+1
//pop argument 2----------------------------
@ARG
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
//pop argument 1----------------------------
@ARG
D=M
@1
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
//push constant 36--------------------------
//#get constant 36
@36
D=A
//#pushStack
@SP
A=M
M=D
@SP
M=M+1
//pop this 6----------------------------
@THIS
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
//push constant 42--------------------------
//#get constant 42
@42
D=A
//#pushStack
@SP
A=M
M=D
@SP
M=M+1
//push constant 45--------------------------
//#get constant 45
@45
D=A
//#pushStack
@SP
A=M
M=D
@SP
M=M+1
//pop that 5----------------------------
@THAT
D=M
@5
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
//pop that 2----------------------------
@THAT
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
//push constant 510--------------------------
//#get constant 510
@510
D=A
//#pushStack
@SP
A=M
M=D
@SP
M=M+1
//pop temp 6----------------------------
@11
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
//push local 0--------------------------
//#get local 0
@LCL
D=M
@0
A=D+A
D=M
//#pushStack
@SP
A=M
M=D
@SP
M=M+1
//push that 5--------------------------
//#get that 5
@THAT
D=M
@5
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
//push argument 1--------------------------
//#get argument 1
@ARG
D=M
@1
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
//push this 6--------------------------
//#get this 6
@THIS
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
//push this 6--------------------------
//#get this 6
@THIS
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
//command sub----------------------------------
@SP
A=M-1
D=M
A=A-1
M=M-D
@SP
M=M-1
//push temp 6--------------------------
//#get temp 6
@11
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
