@256
D=A
@SP
M=D
// call Sys.init 0--------------------------
@NestedCall_calls_Sys.init_0
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@5
D=D-A
@0
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Sys.init
0;JMP
(NestedCall_calls_Sys.init_0)
// fuction Sys.init 0-------------------------
(Sys.init)
//push constant 4000--------------------------
//#get constant 4000
@4000
D=A
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
//push constant 5000--------------------------
//#get constant 5000
@5000
D=A
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
// call Sys.main 0--------------------------
@NestedCall_calls_Sys.main_1
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@5
D=D-A
@0
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Sys.main
0;JMP
(NestedCall_calls_Sys.main_1)
//pop temp 1----------------------------
@6
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
// label LOOP
(LOOP)
// goto LOOP
@LOOP
0;JMP
// fuction Sys.main 5-------------------------
(Sys.main)
// push constant 0
@SP
A=M
M=0
@SP
M=M+1
// push constant 0
@SP
A=M
M=0
@SP
M=M+1
// push constant 0
@SP
A=M
M=0
@SP
M=M+1
// push constant 0
@SP
A=M
M=0
@SP
M=M+1
// push constant 0
@SP
A=M
M=0
@SP
M=M+1
//push constant 4001--------------------------
//#get constant 4001
@4001
D=A
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
//push constant 5001--------------------------
//#get constant 5001
@5001
D=A
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
//push constant 200--------------------------
//#get constant 200
@200
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop local 1----------------------------
@LCL
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
//push constant 40--------------------------
//#get constant 40
@40
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop local 2----------------------------
@LCL
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
//push constant 6--------------------------
//#get constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop local 3----------------------------
@LCL
D=M
@3
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
//push constant 123--------------------------
//#get constant 123
@123
D=A
@SP
A=M
M=D
@SP
M=M+1
// call Sys.add12 1--------------------------
@NestedCall_calls_Sys.add12_2
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@5
D=D-A
@1
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Sys.add12
0;JMP
(NestedCall_calls_Sys.add12_2)
//pop temp 0----------------------------
@5
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
@SP
A=M
M=D
@SP
M=M+1
//push local 1--------------------------
//#get local 1
@LCL
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
//push local 2--------------------------
//#get local 2
@LCL
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
//push local 3--------------------------
//#get local 3
@LCL
D=M
@3
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
//push local 4--------------------------
//#get local 4
@LCL
D=M
@4
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
//command add----------------------------------
@SP
A=M-1
D=M
A=A-1
M=M+D
@SP
M=M-1
//command add----------------------------------
@SP
A=M-1
D=M
A=A-1
M=M+D
@SP
M=M-1
//command add----------------------------------
@SP
A=M-1
D=M
A=A-1
M=M+D
@SP
M=M-1
// return ----------------------------
@LCL
D=M
@R13
M=D
@LCL
D=M
@5
A=D-A
D=M
@R14
M=D
@SP
A=M - 1
D=M
@ARG
A=M
M=D
@SP
M=M-1
@ARG
D=M + 1
@SP
M=D
@R13
D=M
@1
A = D - A
D=M
@THAT
M=D
@R13
D = M
@2
A = D - A
D=M
@THIS
M=D
@13
D=M
@3
A=D - A
D=M
@ARG
M=D
@R13
D=M
@4
A=D-A
D=M
@LCL
M=D
@R14
A=M
0;JMP
// fuction Sys.add12 0-------------------------
(Sys.add12)
//push constant 4002--------------------------
//#get constant 4002
@4002
D=A
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
//push constant 5002--------------------------
//#get constant 5002
@5002
D=A
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
//push constant 12--------------------------
//#get constant 12
@12
D=A
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
// return ----------------------------
@LCL
D=M
@R13
M=D
@LCL
D=M
@5
A=D-A
D=M
@R14
M=D
@SP
A=M - 1
D=M
@ARG
A=M
M=D
@SP
M=M-1
@ARG
D=M + 1
@SP
M=D
@R13
D=M
@1
A = D - A
D=M
@THAT
M=D
@R13
D = M
@2
A = D - A
D=M
@THIS
M=D
@13
D=M
@3
A=D - A
D=M
@ARG
M=D
@R13
D=M
@4
A=D-A
D=M
@LCL
M=D
@R14
A=M
0;JMP
