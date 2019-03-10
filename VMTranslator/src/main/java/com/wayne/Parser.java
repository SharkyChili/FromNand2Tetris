package com.wayne;

import javax.smartcardio.CommandAPDU;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;

public class Parser {

    private BufferedReader bufferedReader;

    private String line;

    private String command;

    private String arg1;

    private int index;

    public Parser(BufferedReader bufferedReader){
        this.bufferedReader = bufferedReader;
    }

    public String commandType(){
        return command;
    }

    public String arg1(){
        return arg1;
    }

    public int arg2(){
        return index;
    }

    public void close() throws IOException {
        bufferedReader.close();
    }

    public boolean hasMoreCommands() throws IOException {
        line = bufferedReader.readLine();
        if (line==null){
            return false;
        }else {
            return true;
        }
    }

    private boolean preHandleLine(){
        line = line.trim();
        if(line.startsWith("//")){
            return false;
        }
        if(line.equals("")){
            return false;
        }
        return true;
    }

    public void advance(){
        //todo 根据line解析出东西
        //预处理一下line
        if(preHandleLine()){

        }

    }
}
