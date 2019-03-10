package com.wayne;

import java.io.BufferedWriter;
import java.io.IOException;
import java.io.OutputStream;

public class CodeWriter {

    private BufferedWriter bufferedWriter;

    CodeWriter(BufferedWriter bufferedWriter){
        this.bufferedWriter = bufferedWriter;
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
        bufferedWriter.write("");
        bufferedWriter.newLine();
    }

    public void writePushPop(String command, String segment, int index){
        //todo
    }

}

