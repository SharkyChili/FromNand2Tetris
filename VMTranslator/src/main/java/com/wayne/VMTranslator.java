package com.wayne;

import java.io.*;

public class VMTranslator {
    public static void main(String[] args) {
        String file1 = "";
        String file2 = generateOutputFileName(file1);

        try {
            Parser reader = new Parser(new BufferedReader(new FileReader(file1)));
            CodeWriter writer = new CodeWriter(new BufferedWriter(new FileWriter(file2)));
            while (reader.hasMoreCommands()){
                reader.advance();
            }
            writer.close();
            reader.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    private static String generateOutputFileName(String str){
        String[] strings = str.split(".");
        return strings[0] + ".asm";

    }
}
