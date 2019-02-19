//异常（或异常事件）是在执行程序期间出现的问题。发生异常时，程序的正常流程中断，程序/应用程序异常终止。

/*
*
* 1
DeferredLoadException

延迟库无法加载时抛出。

2
出现  FormatException

当字符串或某些其他数据没有预期格式且无法解析或处理时抛出异常。

3
IntegerDivisionByZeroException

当数字除以零时抛出。

4
IOException异常

所有与Inupt-Output相关的异常的基类。

5
IsolateSpawnException

无法创建隔离时抛出。

6
Timeout

在等待异步结果时发生计划超时时抛出。


Dart  中的每个异常都是预定义类  Exception 的子类型。必须处理异常以防止应用程序突然终止。


try 块嵌入可能导致异常的代码。需要指定异常类型时使用  on  块。当处理程序需要异常对象时，将使用  catch 块。

try 块必须紧跟一个  on / catch  块或一个  finally 块（或两者之一）。当 try  块中发生异常时，控件将转移到  catch 。
处理异常的语法如下所示 -


try {
   // code that might throw an exception
}
on Exception1 {
   // code for handling exception
}
catch Exception2 {
   // code for handling exception
}
以下是要记住的一些要点 -

代码段可以有多个  on / catch  块来处理多个异常。

on  块和  catch 块是相互包含的，即 try 块可以与  on  块和  catch 块相关联。

以下代码说明了 Dart 中的异常处理 -

在以下示例中，我们使用了与上面相同的代码。唯一的区别是 catch 块（而不是 on 块）包含处理异常的代码。 catch 的参数包含在运行时抛出的异常对象。
以下示例显示如何使用  on ... catch  块。


finally 块包括应该执行的代码，而不管异常的发生。 try / on / catch 之后无条件执行可选的  finally 块。
try {
   // code that might throw an exception
}
on Exception1 {
   // exception handling code
}
catch Exception2 {
   //  exception handling
}
finally {
   // code that should always execute; irrespective of the exception
}

throw 关键字用于显式引发异常。应该处理引发的异常，以防止程序突然退出。 明确引发异常的语法是 - 抛出新的Exception_name()

如上所述，Dart中的每个异常类型都是内置类  Exception 的子类型。 Dart  可以通过扩展现有异常来创建自定义异常。定义自定义异常的语法如下所示 - 小号
* */

class Custom_exception_Name implements Exception {
  // can contain constructors, variables and methods
}
class AmtException implements Exception {
  String errMsg() => 'Amount should be greater than zero';
}
void withdraw_amt(int amt) {
  if (amt <= 0) {
    throw new AmtException();
  }
}
void test_age(int age) {
  if(age<0) {
    throw new FormatException();
  }
}
main() {
  int x = 12;
  int y = 0;
  int res;

  try {
    res = x ~/ y;
  }
  on IntegerDivisionByZeroException {
    print('Cannot divide by zero');
  }

  try {
    res = x ~/ y;
  }
  catch(e) {
    print(e);
  }

  try {
    res = x ~/ y;
  }
  on IntegerDivisionByZeroException catch(e) {
    print(e);
  }

  try {
    test_age(-2);
  }
  catch(e) {
    print('Age cannot be negative');
  }

  try {
    withdraw_amt(-1);
  }
  catch(e) {
    print(e.errMsg());
  }
  finally {
    print('Ending requested operation.....');
  }

  /*
  * 在上面的代码中，我们定义了一个自定义异常AmtException。如果传递的金额不在例外范围内，则代码会引发异常。 main函数将函数调用包含在try ... catch块中。
  * */
}

