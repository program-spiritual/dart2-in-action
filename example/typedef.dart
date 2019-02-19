/*
* Dart 的  typedef 或函数型的别名，有助于存储器内定义指针的可执行代码。简单地说，typedef  可以用作引用函数的指针。

下面给出了在  Dart  程序中实现typedef的步骤。

第1步：定义typedef

一个类型定义可以用来指定我们要具体功能匹配函数签名。函数签名由函数的参数（包括其类型）定义。返回类型不是函数签名的一部分。其语法如下。

typedef function_name(parameters)

第2步：将函数分配给  typedef 变量

的可变的  typedef 可以指向具有相同签名的任何功能的  typedef 。您可以使用以下签名将函数分配给  typedef 变量。

type_def  var_name = function_name
第3步：调用函数

所述的 typedef  变量可以用于调用功能。以下是调用函数的方法 -

var_name(parameters)
*
* */
//
//首先，让我们定义一个typedef。这里我们定义一个函数签名。该函数将采用整数类型的两个输入参数。返回类型不是函数签名的一部分。
//
//typedef ManyOperation(int firstNo , int secondNo); //function signature
typedef ManyOperation(int firstNo , int secondNo); //function signature
Add(int firstNo,int second){
  print("Add result is ${firstNo+second}");
}
Subtract(int firstNo,int second){
  print("Subtract result is ${firstNo-second}");
}
Divide(int firstNo,int second){
  print("Add result is ${firstNo/second}");
}
Calculator(int a, int b, ManyOperation oper){
  print("Inside calculator");
  oper(a,b);
}


void main(){
  ManyOperation oper ;
  //can point to any method of same signature
//  oper = Add;
//  oper(10,20);
//  oper = Subtract;
//  oper(30,20);
//  oper = Divide;
//  oper(50,5);
//  所述OPER变量可以指向这需要两个整数参数的任何方法。该添加函数的引用赋值给变量。Typedef可以在运行时切换函数引用
  Calculator(5,5,Add);
  Calculator(5,5,Subtract);
  Calculator(5,5,Divide);
}
