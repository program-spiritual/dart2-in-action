/*
* Dart为布尔数据类型提供内置支持。DART中的布尔数据类型仅支持两个值 - true和false。关键字bool用于表示DART中的布尔文字。

在DART中声明布尔变量的语法如下所示 -
* */

void main() {
  bool test;
  test = 12 > 5;
  print(test);

  /*与JavaScript不同，布尔数据类型仅将文字true识别为true。任何其他值都被视为false。考虑以下示例 -*/
  var str = 'abc';
  if(str) {
    print('String is not empty');

//    Error: A value of type 'dart.core::String' can't be assigned to a variable of type 'dart.core::bool'.
//  Try changing the type of the left hand side, or casting the right hand side to 'dart.core::bool'.
  } else {
    print('Empty String');
  }
  /*
  * 如果在JavaScript中运行，上面的代码段将打印消息“String is not empty”，因为如果字符串不为空，if结构将返回true。

但是，在Dart中，str被转换为false，因为str！= true。因此，代码段将打印消息“空字符串”（在未选中模式下运行时）。
  *
  * */
}
