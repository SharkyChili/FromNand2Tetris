//push constant 0--------------------------
//#get constant 0
@0
D=A
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
// label LOOP_START
(LOOP_START)
//push argument 0--------------------------
//#get argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
//push local 0--------------------------
//#get local 0
@LCL
D=M
@0
A=D+A
D=M
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
//push argument 0--------------------------
//#get argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
//push constant 1--------------------------
//#get constant 1
@1
D=A
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
//pop argument 0----------------------------
@ARG
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
//push argument 0--------------------------
//#get argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
// if-goto LOOP_START
@SP
A=M-1
D=M
@SP
M=M-1
@LOOP_START
D;JGT
//push local 0--------------------------
//#get local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
