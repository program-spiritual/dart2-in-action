不时，开发人员在编码时会犯错误。程序中的错误被称为错误。查找和修复错误的过程称为调试，是开发过程的正常部分。本节介绍可以帮助您完成调试任务的工具和技术。

WebStorm  编辑器启用断点和逐步调试。程序将在断点附加点处中断。此功能类似于您对  Java  或 C＃应用程序开发的期望。您可以从WebStorm  编辑器中观察变量，浏览堆栈，跳过步骤并进入方法和函数调用。


添加断点

请考虑以下代码段。（`TestString.dart`）

```dart
void main() { 
   int a = 10, b = 20, c = 5; 
   c = c * c * c; 
   
   print("$a + $b = ${a+b}"); 
   print("$a%$b = ${a%b}");  // Add a break point here 
   print("$a*$b = ${a*b}"); 
   print("$a/$b = ${a/b}"); 
   print(c); 
}
```

要添加断点，请单击左边距。在下面给出的图中，第7行有一个断点。
![添加断点](https://www.tutorialspoint.com/dart_programming/images/add_breakpoint.jpg)
以调试模式运行程序。在项目浏览器中右键单击我们的案例`TestString.dart`中的dart程序。
![以调试模式运行程序](https://www.tutorialspoint.com/dart_programming/images/debug_teststring.jpg)
程序在调试模式下运行后，您将进入调试器窗口，如以下屏幕截图所示。变量选项卡显示当前上下文中的变量值。您可以为特定变量添加观察者，并使用监视窗口监听值更改。

调试菜单上的`Step Into（F7）`箭头图标有助于一次执行一个代码一个语句。如果main方法调用子例程，那么这也将进入子例程代码。

`跳过（F8）`：它类似于`Step Into`。当前语句包含对子例程的调用时，会出现使用上的差异。如果main方法调用子例程，则跳过将不会深入到子例程。它会跳过子程序。

Step Out`（Shift + F8）`：执行当前执行点所在的函数的剩余行。显示的下一个语句是子程序调用后的语句。
