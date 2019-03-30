@256
D=A
@SP
M=D
// call Sys.init 0--------------------------
@god_calls_Sys.init_0
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
(god_calls_Sys.init_0)
// fuction Class1.set 0-------------------------
(Class1.set)
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
//pop static 0----------------------------
@Class1.0
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
//push argument 1--------------------------
//#get argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
//pop static 1----------------------------
@Class1.1
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
//push constant 0--------------------------
//#get constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
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
// fuction Class1.get 0-------------------------
(Class1.get)
//push static 0--------------------------
//#get static 0
@Class1.0
D=M
@SP
A=M
M=D
@SP
M=M+1
//push static 1--------------------------
//#get static 1
@Class1.1
D=M
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
// fuction Class2.set 0-------------------------
(Class2.set)
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
//pop static 0----------------------------
@Class2.0
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
//push argument 1--------------------------
//#get argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
//pop static 1----------------------------
@Class2.1
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
//push constant 0--------------------------
//#get constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
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
// fuction Class2.get 0-------------------------
(Class2.get)
//push static 0--------------------------
//#get static 0
@Class2.0
D=M
@SP
A=M
M=D
@SP
M=M+1
//push static 1--------------------------
//#get static 1
@Class2.1
D=M
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
// fuction Sys.init 0-------------------------
(Sys.init)
//push constant 6--------------------------
//#get constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 8--------------------------
//#get constant 8
@8
D=A
@SP
A=M
M=D
@SP
M=M+1
// call Class1.set 2--------------------------
@Sys_calls_Class1.set_1
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
@2
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Class1.set
0;JMP
(Sys_calls_Class1.set_1)
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
//push constant 23--------------------------
//#get constant 23
@23
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 15--------------------------
//#get constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1
// call Class2.set 2--------------------------
@Sys_calls_Class2.set_2
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
@2
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Class2.set
0;JMP
(Sys_calls_Class2.set_2)
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
// call Class1.get 0--------------------------
@Sys_calls_Class1.get_3
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
@Class1.get
0;JMP
(Sys_calls_Class1.get_3)
// call Class2.get 0--------------------------
@Sys_calls_Class2.get_4
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
@Class2.get
0;JMP
(Sys_calls_Class2.get_4)
// label WHILE--------------------------------
(WHILE)
// goto WHILE--------------------------------
@WHILE
0;JMP
