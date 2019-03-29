package com.wayne;

import java.io.BufferedWriter;
import java.io.IOException;
import java.io.OutputStream;

public class CodeWriter {

    private static int eq = 0;
    private static int lt = 0;
    private static int gt = 0;

    private BufferedWriter bufferedWriter;

    private String fileName;

    CodeWriter(BufferedWriter bufferedWriter,String fileName){
        this.bufferedWriter = bufferedWriter;
        this.fileName = fileName;
    }

    private void writeBw(String str) throws IOException {
        bufferedWriter.write(str);
        bufferedWriter.newLine();
    }

    public void close(){
        try {
            bufferedWriter.close();
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            //todo
        }
    }

    public void writeInit(){
        //todo
    }

    public void writeArithmetic(String command) throws IOException {
        writeBw("//command "  + command + "----------------------------------");
        writeBw("@SP");
        writeBw("A=M-1");
        //两个操作数的处理
        if("add".equalsIgnoreCase(command)||"sub".equalsIgnoreCase(command)||
                "and".equalsIgnoreCase(command)||"or".equalsIgnoreCase(command)||
                "eq".equalsIgnoreCase(command)||"lt".equalsIgnoreCase(command)||
                "gt".equalsIgnoreCase(command)){
            writeBw("D=M");
            writeBw("A=A-1");
        }
        //先取出的在D，后取出的指针在A，内容在M
        //M是先push进去的，D是后push进去的
        if (command.equalsIgnoreCase("add")){
            writeBw("M=M+D");
            sp_1();
        }else if(command.equalsIgnoreCase("sub")){
            writeBw("M=M-D");
            sp_1();
        }else if(command.equalsIgnoreCase("and")){
            writeBw("M=M&D");
            sp_1();
        }else if(command.equalsIgnoreCase("or")){
            writeBw("M=M|D");
            sp_1();
        }else if (command.equalsIgnoreCase("eq")){
            writeBw("D=M-D");
            //测
            writeBw("@EQ_"+eq);
            writeBw("D;JEQ");
            //假
            sp_2_assign(0);
            //跳
            writeBw("@EQ_FINALLY_"+eq);
            writeBw("0;JMP");
            //真
            writeBw("(EQ_"+eq+")");
            sp_2_assign(-1);
            //尾
            writeBw("(EQ_FINALLY_"+eq+")");
            sp_1();
            //忘了跳转回来
            writeBw("@EQ_CONTINUE_"+eq);
            writeBw("0;JMP");
            writeBw("(EQ_CONTINUE_" + eq + ")");
            eq++;
        }else if(command.equalsIgnoreCase("lt")){
            writeBw("D=M-D");
            //测
            writeBw("@LT_"+lt);
            writeBw("D;JLT");
            //假
            sp_2_assign(0);
            //跳到finally
            writeBw("@LT_FINALLY_"+lt);
            writeBw("0;JMP");
            //真
            writeBw("(LT_"+lt +")");
            sp_2_assign(-1);
            //结尾
            writeBw("(LT_FINALLY_"+lt +")");
            sp_1();
            //忘了跳转回来
            writeBw("@LT_CONTINUE_"+lt);
            writeBw("0;JMP");
            writeBw("(LT_CONTINUE_" + lt + ")");
            lt++;
        }else if(command.equalsIgnoreCase("gt")){
            writeBw("D=M-D");
            //测试
            writeBw("@GT_"+gt);
            writeBw("D;JGT");
            //假
            sp_2_assign(0);
            //跳到finally
            writeBw("@GT_FINALLY_"+gt);
            writeBw("0;JMP");
            //真
            writeBw("(GT_" + gt + ")");
            sp_2_assign(-1);
            //结束
            writeBw("(GT_FINALLY_"+ gt +")");
            sp_1();
            //跳下一句
            writeBw("@GT_CONTINUE_" + gt);
            writeBw("0;JMP");
            writeBw("(GT_CONTINUE_" + gt + ")");
            gt++;
        }else if(command.equalsIgnoreCase("neg")){
            writeBw("M=-M");
        }else if(command.equalsIgnoreCase("not")){
            writeBw("M=!M");
        }
    }

    private void sp_2_assign(Integer i) throws IOException {
        writeBw("@SP");
        writeBw("A=M-1");
        writeBw("A=A-1");
        writeBw("M="+i);
    }

    private void sp_1() throws IOException {
        writeBw("@SP");
        writeBw("M=M-1");
    }


    public void writePushPop(String command, String segment, int index) throws IOException {
        if(command.equalsIgnoreCase("push")){
            //取到segment+index的值,D存储有效值
            //push很方便，因为栈顶很容易拿到
            writeBw("//"+command+ " " + segment + " " + index + "--------------------------");

            //D存入segment对应的值
            pushGetSegmentIndex(segment,index);
            //将D的值推入栈内
            pushStack();
        }else if (command.equalsIgnoreCase("pop")) {
            //pop很麻烦，因为要做两次@，必然要用到D寄存器
            writeBw("//"+command+ " " + segment + " " + index + "----------------------------");
            //将segment对应地址存入R13
            popGetSegmentIndex(segment,index);
            //将栈顶值放入R13对应地址值内
            popStack();
        }
    }

    //将segment对应地址存入R13
    private void popGetSegmentIndex(String segment, int index) throws IOException {
        //获取地址值
        if(segment.equalsIgnoreCase("temp")){
//            writeBw("@TEMP"+index);
            writeBw("@"+(5+index));
            writeBw("D=A");
        }else if(segment.equalsIgnoreCase("pointer")&&"0".equalsIgnoreCase(String.valueOf(index))){
            writeBw("@THIS");
            writeBw("D=A");
        }else if(segment.equalsIgnoreCase("pointer")&&"1".equalsIgnoreCase(String.valueOf(index))){
            writeBw("@THAT");
            writeBw("D=A");
        }else if("static".equalsIgnoreCase(segment)){
            writeBw("@"+ fileName +"." + index);
            writeBw("D=A");
        }else {
            if(segment.equalsIgnoreCase("local")){
                writeBw("@LCL");
            }else if(segment.equalsIgnoreCase("argument")){
                writeBw("@ARG");
            }else if(segment.equalsIgnoreCase("this")){
                writeBw("@THIS");
            }else if(segment.equalsIgnoreCase("that")){
                writeBw("@THAT");
            }
            writeBw("D=M");
            writeBw("@"+index);
            writeBw("D=D+A");
        }

        //存入临时地址
        writeBw("@R13");
        writeBw("M=D");
    }

    //将栈顶值放入R13对应地址值内
    private void popStack() throws IOException {
        //开始处理stack，寄存器都可以用
        writeBw("//#popStack");
        //获取栈顶值
        writeBw("@SP");
        writeBw("A=M-1");
        writeBw("D=M");
        //SP-1
        writeBw("@SP");
        writeBw("M=M-1");
        //赋值
        writeBw("@13");
        writeBw("A=M");
        writeBw("M=D");
    }

    //D存入segment对应的值
    private void pushGetSegmentIndex(String segment, int index) throws IOException {
        //取到segment+index的值,D存储有效值
        writeBw("//#get "+ segment + " " + index);
        if(segment.equalsIgnoreCase("constant")) {
            writeBw("@"+index);
            writeBw("D=A");
        }else if(segment.equalsIgnoreCase("temp")){
//            writeBw("@TEMP" + index);
            writeBw("@"+(5+index));
            writeBw("D=M");
        }else if(segment.equalsIgnoreCase("pointer") && "0".equalsIgnoreCase(String.valueOf(index))){
            writeBw("@THIS");
            writeBw("D=M");
        }else if(segment.equalsIgnoreCase("pointer") && "1".equalsIgnoreCase(String.valueOf(index))){
            writeBw("@THAT");
            writeBw("D=M");
        }else if(segment.equalsIgnoreCase("static")){
            writeBw("@"+ fileName +"."+ index);
            writeBw("D=M");
        }else {
            if(segment.equalsIgnoreCase("local")) {
                writeBw("@LCL");
            }else if(segment.equalsIgnoreCase("argument")){
                writeBw("@ARG");
            }else if(segment.equalsIgnoreCase("this")){
                writeBw("@THIS");
            }else if(segment.equalsIgnoreCase("that")){
                writeBw("@THAT");
            }
            writeBw("D=M");
            writeBw("@" + index);
            writeBw("A=D+A");
            writeBw("D=M");
        }
    }

    //将D的值推入栈内
    private void pushStack() throws IOException {
        //开始处理stack，寄存器都可以用
        writeBw("//#pushStack");
        //对栈顶赋值
        writeBw("@SP");
        writeBw("A=M");
        writeBw("M=D");

        writeBw("@SP");
        writeBw("M=M+1");

    }

    public void writeProgramControll(String command, String arg1) throws IOException {
        writeBw("// "+ command+ " " + arg1);
        if("label".equalsIgnoreCase(command)){
            writeBw("(" + arg1 + ")");
        }else if("if-goto".equalsIgnoreCase(command)){
            writeBw("@SP");
            writeBw("A=M-1");
            writeBw("D=M");

            writeBw("@SP");
            writeBw("M=M-1");

            writeBw("@"+arg1);
            writeBw("D;JGT");
        }else if("goto".equalsIgnoreCase(command)){
            writeBw("@"+arg1);
            writeBw("0;JMP");
        }
    }

    public void writeFuction(String function, String arg1, Integer localvals) throws IOException {
        writeBw("// fuction " + arg1 + " "  + localvals + "-------------------------");
        writeBw("("+ arg1 +")");
        for (Integer i = 0; i < localvals; i++) {
            writeBw("// push constant 0");
            writeBw("@SP");
            writeBw("A=M");
            writeBw("M=0");
            writeBw("@SP");
            writeBw("M=M+1");
        }

    }

    public void writeReturn() throws IOException {
        writeBw("// return ----------------------------");
        //endFrame = LCL         将LCL地址存入R13
        writeBw("@LCL");
        writeBw("D=M");
        writeBw("@R13");
        writeBw("M=D");
        //retAddr = *(endFrame - 5)        计算retAddr，存入R14
        writeBw("@LCL");
        writeBw("D=M");
        writeBw("@5");
        writeBw("A=D-A");
        writeBw("D=M");
        writeBw("@R14");
        writeBw("M=D");
        //*ARG=pop()   ps:如果arg数目为0,可能会覆盖retAddr，所以前面要存入一个临时变量
        writeBw("@SP");
        writeBw("A=M - 1");
        writeBw("D=M");

        writeBw("@ARG");
        writeBw("A=M");
        writeBw("M=D");

        writeBw("@SP");
        writeBw("M=M-1");
        //SP=ARG + 1
        writeBw("@ARG");
        writeBw("D=M + 1");
        writeBw("@SP");
        writeBw("M=D");
        //resume THAT THAT = *(endFrame - 1)
        writeBw("@R13");
        writeBw("D=M");
        writeBw("@1");
        writeBw("A = D - A");
        writeBw("D=M");

        writeBw("@THAT");
        writeBw("M=D");
        //resume THIS THIS = *(endFrame - 2)
        writeBw("@R13");
        writeBw("D = M");
        writeBw("@2");
        writeBw("A = D - A");
        writeBw("D=M");

        writeBw("@THIS");
        writeBw("M=D");
        //resume ARG ARG = *(endFrame - 3)
        writeBw("@13");
        writeBw("D=M");
        writeBw("@3");
        writeBw("A=D - A");
        writeBw("D=M");

        writeBw("@ARG");
        writeBw("M=D");
        //resume LCL LCL = *(endFrame - 4)
        writeBw("@R13");
        writeBw("D=M");
        writeBw("@4");
        writeBw("A=D-A");
        writeBw("D=M");

        writeBw("@LCL");
        writeBw("M=D");
        //goto retAddr
        writeBw("@R14");
        writeBw("A=M");
        writeBw("0;JMP");
    }

    public void writeCall(String call, String arg1, Integer arg2) throws IOException {
        writeBw("// call " + arg1 + " " + arg2 +"--------------------------" );
        //push retAddr Lablel
        //厉害，先@，再用A就能取到后面的值
        writeBw("@"+fileName+"_calls_"+arg1);
        writeBw("D=A");
        writeBw("@SP");
        writeBw("A=M");
        writeBw("M=D");
        writeBw("@SP");
        writeBw("M=M+1");
        //push LCL
        writeBw("@LCL");
        writeBw("D=M");
        writeBw("@SP");
        writeBw("A=M");
        writeBw("M=D");
        writeBw("@SP");
        writeBw("M=M+1");
        //push ARG
        writeBw("@ARG");
        writeBw("D=M");
        writeBw("@SP");
        writeBw("A=M");
        writeBw("M=D");
        writeBw("@SP");
        writeBw("M=M+1");
        //push THIS
        writeBw("@THIS");
        writeBw("D=M");
        writeBw("@SP");
        writeBw("A=M");
        writeBw("M=D");
        writeBw("@SP");
        writeBw("M=M+1");
        //push THAT
        writeBw("@THAT");
        writeBw("D=M");
        writeBw("@SP");
        writeBw("A=M");
        writeBw("M=D");
        writeBw("@SP");
        writeBw("M=M+1");
        //ARG = SP - 5 - nArgs
        writeBw("@SP");
        writeBw("D=M");
        writeBw("@5");
        writeBw("D=D-A");
        writeBw("@"+arg2);
        writeBw("D=D-A");
        writeBw("@ARG");
        writeBw("M=D");
        //LCL = SP
        writeBw("@SP");
        writeBw("D=M");
        writeBw("@LCL");
        writeBw("M=D");
        //goto fuctionName
        writeBw("@"+arg1);
        writeBw("0;JMP");
        //(retAddr)
        writeBw("(@"+ fileName + "_calls_"+ arg1+ ")");

    }
}

