package com.wayne;

import java.io.*;

public class VMTranslator {
    public static void main(String[] args) {
//        String file1 = "D:\\数据分析\\git_push\\FromNand2Tetris\\nand2tetris\\projects\\07\\StackArithmetic\\SimpleAdd\\SimpleAdd.vm";
//        String file1 = "D:\\数据分析\\git_push\\FromNand2Tetris\\nand2tetris\\projects\\07\\StackArithmetic\\StackTest\\StackTest.vm";
//        String file1 = "D:\\数据分析\\git_push\\FromNand2Tetris\\nand2tetris\\projects\\07\\MemoryAccess\\BasicTest\\BasicTest.vm";
//        String file1 = "D:\\数据分析\\git_push\\FromNand2Tetris\\nand2tetris\\projects\\07\\MemoryAccess\\PointerTest\\PointerTest.vm";
//        String file1 = "D:\\数据分析\\git_push\\FromNand2Tetris\\nand2tetris\\projects\\07\\MemoryAccess\\StaticTest\\StaticTest.vm";
//        String file1 = "D:\\数据分析\\git_push\\FromNand2Tetris\\nand2tetris\\projects\\08\\ProgramFlow\\BasicLoop\\BasicLoop.vm";
//        String file1 = "D:\\数据分析\\git_push\\FromNand2Tetris\\nand2tetris\\projects\\08\\ProgramFlow\\FibonacciSeries\\FibonacciSeries.vm";
        String file1 = "D:\\数据分析\\git_push\\FromNand2Tetris\\nand2tetris\\projects\\08\\FunctionCalls\\SimpleFunction\\SimpleFunction.vm";
        String file2 = generateOutputFileName(file1);
        String fileName = generateFileName(file1);

        try {
            Parser reader = new Parser(new BufferedReader(new FileReader(file1)));
            CodeWriter writer = new CodeWriter(new BufferedWriter(new FileWriter(file2)),fileName);
            while (reader.hasMoreCommands()){
                reader.advance(writer);
            }
            writer.close();
            reader.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    private static String generateFileName(String file1) {
        String[] strings = file1.split("\\\\");
        String s = strings[strings.length-1].replace(".vm", "");
        return s;
    }

    private static String generateOutputFileName(String str){
        return str.replace(".vm",".asm");
    }
}
