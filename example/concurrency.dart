/*
*
* 并发是同时执行多个指令序列。它涉及同时执行多个任务。
* Dart 使用 Isolates 作为并行工作的工具。 dart:isolate  包是  Dart  的解决方案，用于获取单线程 Dart  代码并允许应用程序更多地使用可用的硬件。
*
*  Isolates  (隔离)，顾名思义，是运行代码的独立单元。在它们之间发送数据的唯一方法是传递消息，就像在客户端和服务器之间传递消息的方式一样。
*  这里，Isolate 类的 spawn  方法有助于与我们的其余代码并行运行函数 foo  。 spawn  函数有两个参数
*  - 产生的功能，以及
 *  将传递给衍生函数的对象。
 *
 *  如果没有对象传递给生成的函数，则可以传递NULL值。
这两个函数（foo和main）可能不一定每次都以相同的顺序运行。无法保证foo何时执行以及何时执行main（）。每次运行时输出都不同。
* */
import 'dart:isolate';

void foo(var message) {
  print('execution from foo ... the message is :${message}');
}

void main() {
  Isolate.spawn(foo, 'Hello!!');
  Isolate.spawn(foo, 'Greetings!!');
  Isolate.spawn(foo, 'Welcome!!');

  print('execution from main1');
  print('execution from main2');
  print('execution from main3');
}
/*
* 从输出中，我们可以得出结论，  Dart  代码可以从运行代码中产生新的隔离，就像Java或C＃代码可以启动新线程一样
*
* 隔离区与线程的不同之处在于隔离区有自己的内存。没有办法在隔离区之间共享变量 - 隔离区之间通信的唯一方法是通过消息传递。
* 注 - 对于不同的硬件和操作系统配置，上述输出将有所不同。
* 隔离v / s Future
异步执行复杂的计算工作对于确保应用程序的响应性非常重要。
Dart Future是一种在完成后检索异步任务的值的机制，而D​​art Isolates是一种抽象并行性并在实际的高级基础上实现它的工具。
* */
