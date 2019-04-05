# FromNand2Tetris



## lecture 8

一种面向对象语言（类似Java，名Jack）的**方法调用**过程。

### 背景知识：

Jack类似java，是一种运行在虚拟机上的语言，如图。

![](C:\Users\wayne\AppData\Roaming\Typora\typora-user-images\1554433778424.png)



![](https://github.com/fw1036994377/FromNand2Tetris/blob/master/img/memorysegment.jpg?raw=true)





其中，local，argument等也是内存中的一块区域，起始位置是由某个指针指定。如图

![](https://github.com/fw1036994377/FromNand2Tetris/blob/master/img/ram.jpg?raw=true)



方法调用的大致过程如图：

![](https://github.com/fw1036994377/FromNand2Tetris/blob/master/img/runtimeExample.jpg?raw=true)



那么，不从栈的角度来看，而从字节码（因为jack与java太像，所以直接用java中的术语来表达）来看，方法调用到底是怎么样的呢？



具体过程

调用方法，需要call指令，被调用的方法，有一个function指令，方法运行结束，有一个return指令。

方法调用其实就是这三个指令。

#### 思路：

调用方法者称为caller，被调用方法称为callee。

caller、callee分别有自己的local，argument，this，that等内存区域，他们分别有自己的起始位置。

我们想要进入方法之后能返回caller，那么就必须保存caller的local，argument等区域的起始位置，那么保存在哪里呢？当然是保存在栈里，也就是上图所说的saved frame里，方法return之后，只要取出这些位置，然后再放到ram里，就能恢复caller的运行，仿佛什么事都没发生过一样（除了栈里的参数变成了方法运行之后的结果）。

当然，还有一个问题，内存区域被重新指定之后，程序从第几行重新执行，也就是return address，这个问题在call中再说。

#### call

![](https://github.com/fw1036994377/FromNand2Tetris/blob/master/img/call.jpg?raw=true)

call指令首先将returnaddress推入栈中，这个returnaddress是call指令结束之后的那个地址。（当然是结束之后，如果是当前位置的话，那结束之后就会再call一遍，循环了）

将local的位置保存。

将argument的位置保存。

将this的位置保存。

将that的位置保存。

将ARG重新设置为stack pointer -5 - 方法参数数量：调用方法时，首先得将参数推入栈顶，再调用call，又因为前面五步占了五个位置，所以将argument重新设置为stack pointer -5 - 参数数量。

将local设置为stack pointer所在位置：因为局部变量只在callee中有用，所以放在callee的内存区域中就行了。因为决定将局部变量放在callee中内存开始的位置（方便），所以将local设置为stack pointer就好。

跳转到functionname的位置：即在程序中找到functionname的位置，将program counter设置为那个位置，执行，也就是跳转到了callee。



#### fuction

![](https://github.com/fw1036994377/FromNand2Tetris/blob/master/img/function.jpg?raw=true)

caller中的call执行完之后，就跳到了callee运行

首先给一个标志 functionname，让call中的goto能找到这里。

然后重复n次（n=局部变量数目），将0推入栈顶。



#### return

![](https://github.com/fw1036994377/FromNand2Tetris/blob/master/img/return.jpg?raw=true)



call中将caller的状态保存了下来，return的时候callee的上下文（context）并不需要保存，所以只需要将caller中的上下文（context）恢复就可以了。



计算endFrame的位置，存入临时变量（即找个安全的地方存下来）。

计算retAddr，存入临时变量（这里有一个问题要注意，如果arg的数目=0，那么会覆盖retAddr，所以retAddr要存入临时变量）

将栈顶元素放入Arg所指位置：callee执行完之后，栈顶必须是要返回的值。（而且在Jack中，只能返回一个元素。）

将stack pointer设置为Arg+1：也就是对caller来说，方法执行结束，栈指针设置成正确的位置。

将endFrame-1所指向位置的值（即stack frame中保存的上下文）赋给THAT。

将endFrame-2所指向位置的值（即stack frame中保存的上下文）赋给THIS。

将endFrame-3所指向位置的值（即stack frame中保存的上下文）赋给ARG。

将endFrame-4所指向位置的值（即stack frame中保存的上下文）赋给LCL。

goto retAddr：由于call的时候，已经计算好了retAddr的位置（即call指令运行结束之后的位置），所以直接将program counter设置成retAddr，继续运行即可。（也就是返回caller执行）





### 补充：

1：局部变量数目，callee需要占用的大小，都是在jack编译至字节码的过程中就已经计算好了，有空再写。

2：Jack是Jack，并不是Java，不可当作一样，不过可以帮助理解。

3：对不运行在虚拟机上的语言，方法调用其实也差不多，只要能将caller的状态保存下来，从callee中返回的时候能恢复如初就可以了。



