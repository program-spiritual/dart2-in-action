/*
* 函数是可读，可维护和可重用代码的构建块。函数是一组用于执行特定任务的语句。函数将程序组织成逻辑代码块。一旦定义，可以调用函数来访问代码。这使得代码可以重用。此外，函数可以轻松读取和维护程序的代码。
* */

/*
* 函数声明告诉编译器函数的名称，返回类型和参数。函数定义提供函数的实际主体。

Sr.No	功能和描述
1	    定义一个函数
      函数定义指定特定任务的执行方式和方式。

2	    调用函数
       必须调用函数才能执行它。

3	    返回功能
      函数也可以将值与控制一起返回给调用者。

4	    参数化功能
      参数是一种将值传递给函数的机制。
*
*
* 可选参数
当函数执行时不需要强制传递参数时，可以使用可选参数。通过在其名称后附加问号，可以将参数标记为可选。可选参数应设置为函数中的最后一个参数。

我们在Dart中有三种可选参数 -

Sr.No	参数和描述
1	    可选的位置参数
      要指定可选的位置参数，请使用方括号[]括号。

2	    可选的命名参数
      与位置参数不同，必须在传递值时指定参数的名称。Curly brace {}可用于指定可选的命名参数。

3	    带有默认值的可选参数
      默认情况下，还可以为函数参数指定值。但是，这些参数也可以显式传递值。
* */

/*
* Dart递归函数
递归是一种通过对函数自身重复调用直到它到达结果来迭代操作的技术。当您需要使用循环内的不同参数重复调用相同的函数时，最好应用递归。

例
*
* */

/*
* 可选的位置参数
* 句法
void function_name(param1, [optional_param_1, optional_param_2]) { }
如果未传递可选参数值，则将其设置为NULL。


* */
test_param(n1, [s1]) {
  print(n1);
  print(s1);
}

/*
* 可选的命名参数
* void function_name(a, {optional_param1, optional_param2}) { }
语法 - 调用函数
function_name(optional_param:value,…);
与位置参数不同，必须在传递值时指定参数名称。Curly brace {}可用于指定可选的命名参数。
* */
test_param2(n1, {s1, s2}) {
  print(n1);
  print(s1);
  print(s2);
}

/*
* 默认情况下，还可以为函数参数指定值。但是，这些参数也可以显式传递值。
* */
void test_param3(n1, {s1: 'test_param3 default'}) {
  print(n1);
  print(s1);
}

void main() {
  test_param(123);
  test_param2(123, s1: 'hello', s2: 'world');
  test_param3('test3');
  print(factorial(6));
  printMsg();
  print(test());
}

// 阶乘 递归函数
factorial(number) {
  if (number <= 0) {
    // termination case
    return 1;
  } else {
    return (number * factorial(number - 1));
    // function invokes itself
  }
}

/*
* Lambda函数
Lambda函数是表示函数的简洁机制。这些函数也称为箭头函数。
[return_type]function_name(parameters)=>expression;
* */
printMsg() => print("hello");

int test() => 123;
// returning function
