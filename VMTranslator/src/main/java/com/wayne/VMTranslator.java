package com.wayne;

import java.io.*;

public class VMTranslator {
    public static void main(String[] args) {
//        String file1 = "D:\\数据分析\\git_push\\FromNand2Tetris\\nand2tetris\\projects\\07\\StackArithmetic\\SimpleAdd\\SimpleAdd.vm";
//        String file1 = "D:\\数据分析\\git_push\\FromNand2Tetris\\nand2tetris\\projects\\07\\StackArithmetic\\StackTest\\StackTest.vm";
//        String file1 = "D:\\数据分析\\git_push\\FromNand2Tetris\\nand2tetris\\projects\\07\\MemoryAccess\\BasicTest\\BasicTest.vm";
        String file1 = "D:\\数据分析\\git_push\\FromNand2Tetris\\nand2tetris\\projects\\07\\MemoryAccess\\PointerTest\\PointerTest.vm";
        String file2 = generateOutputFileName(file1);

        try {
            Parser reader = new Parser(new BufferedReader(new FileReader(file1)));
            CodeWriter writer = new CodeWriter(new BufferedWriter(new FileWriter(file2)));
            while (reader.hasMoreCommands()){
                reader.advance(writer);
            }
            writer.close();
            reader.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    private static String generateOutputFileName(String str){
        return str.replace(".vm",".asm");
    }
}
