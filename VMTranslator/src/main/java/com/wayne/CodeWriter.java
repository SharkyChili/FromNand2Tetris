package com.wayne;

import java.io.BufferedWriter;
import java.io.IOException;
import java.io.OutputStream;

public class CodeWriter {

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
        //todo
        writeBw("//command "  + command);
        writeBw("@SP");
        writeBw("A=M-1");
        writeBw("D=M");
        writeBw("A=A-1");
        writeBw("M=M+D");
        writeBw("@SP");
        writeBw("M=M-1");
    }

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

