//异步操作在线程中执行，与主应用程序线程分开。当应用程序调用方法异步执行操作时，应用程序可以在异步方法执行其任务时继续执行。/**/

/*
* 让我们举个例子来理解这个概念。这里，程序使用IO库接受用户输入。  现场演示
*
* */
import 'dart:io';
import "dart:async";

void main() {
  print("Enter your name :");

  // prompt for user input
//  readLineSync()  是一种同步方法。这意味着将阻止执行 readLineSync() 函数调用之后的所有指令，直到 readLineSync() 方法完成执行。
  String name = stdin.readLineSync();
//  stdin.readLineSync等待输入。它停在轨道上，并且在收到用户输入之前不再执行任何操作。 以上示例将产生以下输出 -
  // this is a synchronous method that reads user input
  print("Hello Mr. ${name}");
  print("End of main");

  File file = new File(Directory.current.path + "/data/contact.txt");
  Future<String> f = file.readAsString();

  // returns a futrue, this is Async method
  f.then((data) => print(data));

  // once file is read , call back method is invoked
  print("End of main");
  // this get printed first, showing fileReading is non blocking or async
}

/*
* 在计算中，我们说当某个事件在继续之前等待事件发生时，它是同步的。这种方法的一个缺点是，如果代码的一部分花费太长时间来执行，则后续的块虽然不相关，但将被阻止执行。考虑一个必须响应多个资源请求的Web服务器。
* 同步执行模型将阻止每个其他用户的请求，直到它完成当前请求的处理。在这种情况下，与Web服务器的情况一样，每个请求必须独立于其他请求。这意味着，Web服务器在响应其他用户的请求之前不应等待当前请求完成执行
* 简而言之，在完成先前用户的请求之前，它应该接受来自新用户的请求。这被称为异步。异步编程基本上意味着没有等待或非阻塞编程模型。 dart：async包有助于在Dart脚本中实现异步编程块。
*
* 以下示例更好地说明了异步块的功能。 步骤1 - 创建如下所示的contact.txt文件，并将其保存在当前项目的数据文件夹中。
* 编写一个程序，它将读取文件而不会阻止应用程序的其他部分。
* 当脚本继续读取文件时，首先执行“main of main”。 Future类是dart：async的一部分，用于在异步任务完成后获取计算结果。然后，此Future值用于在计算完成后执行某些操作。
*
* Dart社区将Future定义为“在未来的某个时间获取价值的手段”。简单地说，Future对象是一种表示由表达式返回的值的机制，该表达式的执行将在稍后的时间点完成。当调用异步方法时，Dart的几个内置类返回Future。
Dart是一种单线程编程语言。如果任何代码阻塞执行线程（例如，通过等待耗时的操作或阻塞I / O），程序将有效冻结。
异步操作可让您的程序运行而不会被阻止。 Dart使用Future对象来表示异步操作。
* */
