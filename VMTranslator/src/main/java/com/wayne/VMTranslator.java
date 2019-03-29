package com.wayne;

import java.io.*;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;

public class VMTranslator {
    public static void main(String[] args) throws IOException {
//        String file1 = "D:\\数据分析\\git_push\\FromNand2Tetris\\nand2tetris\\projects\\07\\StackArithmetic\\SimpleAdd\\SimpleAdd.vm";
//        String file1 = "D:\\数据分析\\git_push\\FromNand2Tetris\\nand2tetris\\projects\\07\\StackArithmetic\\StackTest\\StackTest.vm";
//        String file1 = "D:\\数据分析\\git_push\\FromNand2Tetris\\nand2tetris\\projects\\07\\MemoryAccess\\BasicTest\\BasicTest.vm";
//        String file1 = "D:\\数据分析\\git_push\\FromNand2Tetris\\nand2tetris\\projects\\07\\MemoryAccess\\PointerTest\\PointerTest.vm";
//        String file1 = "D:\\数据分析\\git_push\\FromNand2Tetris\\nand2tetris\\projects\\07\\MemoryAccess\\StaticTest\\StaticTest.vm";
//        String file1 = "D:\\数据分析\\git_push\\FromNand2Tetris\\nand2tetris\\projects\\08\\ProgramFlow\\BasicLoop\\BasicLoop.vm";
//        String file1 = "D:\\数据分析\\git_push\\FromNand2Tetris\\nand2tetris\\projects\\08\\ProgramFlow\\FibonacciSeries\\FibonacciSeries.vm";
        String file1 = "D:\\数据分析\\git_push\\FromNand2Tetris\\nand2tetris\\projects\\08\\FunctionCalls\\SimpleFunction\\SimpleFunction.vm";
//        String file1 = "D:\\数据分析\\git_push\\FromNand2Tetris\\nand2tetris\\projects\\08\\FunctionCalls\\NestedCall\\Sys.vm";


        String outputFilePath = generateOutputFilePath(file1);
        String fileSimpleName = generateFileSimpleName(file1);
        CodeWriter writer = new CodeWriter(new BufferedWriter(new FileWriter(outputFilePath)),fileSimpleName);
        writerInit(file1,writer);
        for (File file : getFileList(file1)) {
            if(file.getAbsolutePath().endsWith(".vm")){
                Parser reader = new Parser(new BufferedReader(new FileReader(file.getAbsolutePath())));
                while(reader.hasMoreCommands()){
                    reader.advance(writer);
                }
                reader.close();
            }
        }
        writer.close();
    }

    private static void writerInit(String file1,CodeWriter writer) {
        if(!new File(file1).isDirectory()){
            //do nothing
        }else {
            writer.writeInit();
        }
    }

    private static File[] getFileList(String file1){
        if (!new File(file1).isDirectory()){
            File[] files = new File[1];
            files[0] = new File(file1);
            return files;
        }else {
            File[] files = new File(file1).listFiles();
            return files;
        }
    }


    //生成文件路径
    private static String generateOutputFilePath(String file1){
        if (!new File(file1).isDirectory()){
            return file1.replace(".vm",".asm");
        }else {
            String[] strings = file1.split("\\\\");
            String name = strings[strings.length - 1];
            return file1 + "\\\\" + name + ".vm";
        }
    }

    //生成文件名字
    private static String generateFileSimpleName(String file1) {
        if(!new File(file1).isDirectory()){
            String[] strings = file1.split("\\\\");
            String s = strings[strings.length-1].replace(".vm", "");
            return s;
        }else {
            String[] strings = file1.split("\\\\");
            String s = strings[strings.length - 1];
            return s;
        }
    }

}
