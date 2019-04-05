# FromNand2Tetris



## lecture 8

一种面向对象语言（类似Java，名Jack）的**方法调用**过程。

### 背景知识：

Jack类似java，是一种运行在虚拟机上的语言，如图。

![](https://github.com/fw1036994377/FromNand2Tetris/blob/master/img/memorysegment.jpg?raw=true)





其中，local，argument等也是内存中的一块区域，起始位置是由某个指针指定。如图

![](https://github.com/fw1036994377/FromNand2Tetris/blob/master/img/ram.jpg?raw=true)



方法调用的大致过程如图：

![](https://github.com/fw1036994377/FromNand2Tetris/blob/master/img/runtimeExample.jpg?raw=true)



那么，不从栈的角度来看，而从字节码（因为jack与java太像，所以直接用java中的术语来表达）来看，方法调用到底是怎么样的呢？



### 具体过程

调用方法，需要call指令，被调用的方法，由一个function指令，方法运行结束，有一个return指令。

方法调用其实就是这三个指令。

#### call

![](https://github.com/fw1036994377/FromNand2Tetris/blob/master/img/call.jpg?raw=true)



#### fuction

![](https://github.com/fw1036994377/FromNand2Tetris/blob/master/img/function.jpg?raw=true)



#### return

![](https://github.com/fw1036994377/FromNand2Tetris/blob/master/img/return.jpg?raw=true)











