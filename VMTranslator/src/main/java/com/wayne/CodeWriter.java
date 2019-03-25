package com.wayne;

import java.io.BufferedWriter;
import java.io.IOException;
import java.io.OutputStream;

public class CodeWriter {

    private static int eq = 0;
    private static int lt = 0;
    private static int gt = 0;

    private BufferedWriter bufferedWriter;

    CodeWriter(BufferedWriter bufferedWriter){
        this.bufferedWriter = bufferedWriter;
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

    public void writeArithmetic(String command) throws IOException {
        writeBw("//command "  + command);
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

//    private void twoArith(String command){
//
//    }

    public void writePushPop(String command, String segment, int index) throws IOException {
        if(command.equalsIgnoreCase("push")){
            //取到segment+index的值,D存储有效值
            writeBw("//"+command+ " " + segment + " " + index);
            getSegmentIndex(segment,index);
            pushStack();
        }
    }

    private void getSegmentIndex(String segment, int index) throws IOException {
        //取到segment+index的值,D存储有效值
        writeBw("//#get "+ segment + " " + index);
        if(segment.equalsIgnoreCase("constant")) {
            writeBw("@"+index);
            writeBw("D=A");
        }else {
            if(segment.equalsIgnoreCase("lcl")) {
                writeBw("@Lcl");
            }
            writeBw("D=A");
            writeBw("@" + index);
            writeBw("D=D+A");
            writeBw("A=D");
            writeBw("D=M");
        }

    }

    private void pushStack() throws IOException {
        //开始处理stack，寄存器都可以用
        writeBw("//#pushStack");
        writeBw("@SP");
        writeBw("A=M");
        writeBw("M=D");
        //对stack+1
        writeBw("@SP");
        writeBw("M=M+1");
    }

}

