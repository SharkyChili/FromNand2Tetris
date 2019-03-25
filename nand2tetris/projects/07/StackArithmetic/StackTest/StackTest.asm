//push constant 17
//#get constant 17
@17
D=A
//#pushStack
@SP
A=M
M=D
@SP
M=M+1
//push constant 17
//#get constant 17
@17
D=A
//#pushStack
@SP
A=M
M=D
@SP
M=M+1
//command eq
@SP
A=M-1
D=M
A=A-1
D=M-D
@EQ_0
D;JEQ
@SP
A=M-1
A=A-1
M=0
@EQ_FINALLY_0
0;JMP
(EQ_0)
@SP
A=M-1
A=A-1
M=-1
(EQ_FINALLY_0)
@SP
M=M-1
@EQ_CONTINUE_0
0;JMP
(EQ_CONTINUE_0)
//push constant 17
//#get constant 17
@17
D=A
//#pushStack
@SP
A=M
M=D
@SP
M=M+1
//push constant 16
//#get constant 16
@16
D=A
//#pushStack
@SP
A=M
M=D
@SP
M=M+1
//command eq
@SP
A=M-1
D=M
A=A-1
D=M-D
@EQ_1
D;JEQ
@SP
A=M-1
A=A-1
M=0
@EQ_FINALLY_1
0;JMP
(EQ_1)
@SP
A=M-1
A=A-1
M=-1
(EQ_FINALLY_1)
@SP
M=M-1
@EQ_CONTINUE_1
0;JMP
(EQ_CONTINUE_1)
//push constant 16
//#get constant 16
@16
D=A
//#pushStack
@SP
A=M
M=D
@SP
M=M+1
//push constant 17
//#get constant 17
@17
D=A
//#pushStack
@SP
A=M
M=D
@SP
M=M+1
//command eq
@SP
A=M-1
D=M
A=A-1
D=M-D
@EQ_2
D;JEQ
@SP
A=M-1
A=A-1
M=0
@EQ_FINALLY_2
0;JMP
(EQ_2)
@SP
A=M-1
A=A-1
M=-1
(EQ_FINALLY_2)
@SP
M=M-1
@EQ_CONTINUE_2
0;JMP
(EQ_CONTINUE_2)
//push constant 892
//#get constant 892
@892
D=A
//#pushStack
@SP
A=M
M=D
@SP
M=M+1
//push constant 891
//#get constant 891
@891
D=A
//#pushStack
@SP
A=M
M=D
@SP
M=M+1
//command lt
@SP
A=M-1
D=M
A=A-1
D=M-D
@LT_0
D;JLT
@SP
A=M-1
A=A-1
M=0
@LT_FINALLY_0
0;JMP
(LT_0)
@SP
A=M-1
A=A-1
M=-1
(LT_FINALLY_0)
@SP
M=M-1
@LT_CONTINUE_0
0;JMP
(LT_CONTINUE_0)
//push constant 891
//#get constant 891
@891
D=A
//#pushStack
@SP
A=M
M=D
@SP
M=M+1
//push constant 892
//#get constant 892
@892
D=A
//#pushStack
@SP
A=M
M=D
@SP
M=M+1
//command lt
@SP
A=M-1
D=M
A=A-1
D=M-D
@LT_1
D;JLT
@SP
A=M-1
A=A-1
M=0
@LT_FINALLY_1
0;JMP
(LT_1)
@SP
A=M-1
A=A-1
M=-1
(LT_FINALLY_1)
@SP
M=M-1
@LT_CONTINUE_1
0;JMP
(LT_CONTINUE_1)
//push constant 891
//#get constant 891
@891
D=A
//#pushStack
@SP
A=M
M=D
@SP
M=M+1
//push constant 891
//#get constant 891
@891
D=A
//#pushStack
@SP
A=M
M=D
@SP
M=M+1
//command lt
@SP
A=M-1
D=M
A=A-1
D=M-D
@LT_2
D;JLT
@SP
A=M-1
A=A-1
M=0
@LT_FINALLY_2
0;JMP
(LT_2)
@SP
A=M-1
A=A-1
M=-1
(LT_FINALLY_2)
@SP
M=M-1
@LT_CONTINUE_2
0;JMP
(LT_CONTINUE_2)
//push constant 32767
//#get constant 32767
@32767
D=A
//#pushStack
@SP
A=M
M=D
@SP
M=M+1
//push constant 32766
//#get constant 32766
@32766
D=A
//#pushStack
@SP
A=M
M=D
@SP
M=M+1
//command gt
@SP
A=M-1
D=M
A=A-1
D=M-D
@GT_0
D;JGT
@SP
A=M-1
A=A-1
M=0
@GT_FINALLY_0
0;JMP
(GT_0)
@SP
A=M-1
A=A-1
M=-1
(GT_FINALLY_0)
@SP
M=M-1
@GT_CONTINUE_0
0;JMP
(GT_CONTINUE_0)
//push constant 32766
//#get constant 32766
@32766
D=A
//#pushStack
@SP
A=M
M=D
@SP
M=M+1
//push constant 32767
//#get constant 32767
@32767
D=A
//#pushStack
@SP
A=M
M=D
@SP
M=M+1
//command gt
@SP
A=M-1
D=M
A=A-1
D=M-D
@GT_1
D;JGT
@SP
A=M-1
A=A-1
M=0
@GT_FINALLY_1
0;JMP
(GT_1)
@SP
A=M-1
A=A-1
M=-1
(GT_FINALLY_1)
@SP
M=M-1
@GT_CONTINUE_1
0;JMP
(GT_CONTINUE_1)
//push constant 32766
//#get constant 32766
@32766
D=A
//#pushStack
@SP
A=M
M=D
@SP
M=M+1
//push constant 32766
//#get constant 32766
@32766
D=A
//#pushStack
@SP
A=M
M=D
@SP
M=M+1
//command gt
@SP
A=M-1
D=M
A=A-1
D=M-D
@GT_2
D;JGT
@SP
A=M-1
A=A-1
M=0
@GT_FINALLY_2
0;JMP
(GT_2)
@SP
A=M-1
A=A-1
M=-1
(GT_FINALLY_2)
@SP
M=M-1
@GT_CONTINUE_2
0;JMP
(GT_CONTINUE_2)
//push constant 57
//#get constant 57
@57
D=A
//#pushStack
@SP
A=M
M=D
@SP
M=M+1
//push constant 31
//#get constant 31
@31
D=A
//#pushStack
@SP
A=M
M=D
@SP
M=M+1
//push constant 53
//#get constant 53
@53
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
//push constant 112
//#get constant 112
@112
D=A
//#pushStack
@SP
A=M
M=D
@SP
M=M+1
//command sub
@SP
A=M-1
D=M
A=A-1
D=M-D
@SP
A=M-1
A=A-1
M=D
@SP
M=M-1
//command neg
@SP
A=M-1
D=M
A=A-1
D=-D
@SP
A=M-1
M=D
//command and
@SP
A=M-1
D=M
A=A-1
D=D&M
@SP
A=M-1
A=A-1
M=D
@SP
M=M-1
//push constant 82
//#get constant 82
@82
D=A
//#pushStack
@SP
A=M
M=D
@SP
M=M+1
//command or
@SP
A=M-1
D=M
A=A-1
D=D|M
@SP
A=M-1
A=A-1
M=D
@SP
M=M-1
//command not
@SP
A=M-1
D=M
A=A-1
D=!D
@SP
A=M-1
M=D
