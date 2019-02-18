/*
* 一个接口定义的任何实体必须遵守语法。接口定义了一组对象可用的方法。Dart没有声明接口的语法。类声明本身就是Dart中的接口。

类应该使用implements关键字来使用接口。实现类必须提供已实现接口的所有功能的具体实现。换句话说，类必须重新定义它希望实现的接口中的每个函数。
*
* 语法：实现接口
class identifier implements interface_name
* */

/*
* 在以下程序中，我们声明了一个类打印机。该ConsolePrinter类用于实现隐式接口声明的打印机类。在主函数创建的对象ConsolePrinter使用类新的关键字。该对象用于调用ConsolePrinter类中定义的函数print_data。
*
* */
/*
* 实现多个接口
一个类可以实现多个接口。接口用逗号分隔。下面给出了相同的语法 -

class identifier implements interface-1,interface_2,interface_4…….
*
* */
class Calculate_Total {
  int ret_tot() {}
}

class Calculate_Discount {
  int ret_dis() {}
}

class Calculator implements Calculate_Total, Calculate_Discount {
  int ret_tot() {
    return 1000;
  }

  int ret_dis() {
    return 50;
  }
}

class Printer {
  void print_data() {
    print("__________Printing Data__________");
  }
}

class ConsolePrinter implements Printer {
  void print_data() {
    print("__________Printing to Console__________");
  }
}

void main() {
  ConsolePrinter cp = new ConsolePrinter();
  cp.print_data();
  Calculator c = new Calculator();
  print("The gross total : ${c.ret_tot()}");
  print("Discount :${c.ret_dis()}");
}
