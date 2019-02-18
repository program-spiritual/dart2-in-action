/*
* 字符串是一系列字符。 Dart将字符串表示为Unicode UTF-16代码单元序列。 Unicode是一种格式，用于为每个字母，数字和符号定义唯一的数值
* */

/*
* 由于Dart字符串是UTF-16代码单元序列，因此字符串中的32位Unicode值使用特殊语法表示。符文是表示Unicode代码点的整数。
dart：core库中的String类提供了访问符文的机制。可以通过三种方式访问​​字符串代码单元/符文 -

Using String.codeUnitAt() function
Using String.codeUnits property
Using String.runes property

* */

import 'dart:core';

void main() {
  f1();
//  String.codeUnits 属性 此属性返回指定字符串的UTF-16代码单元的不可修改列表。
  String f = 'Runes';
  print(f.codeUnits);
//  String.runes属性 此属性返回此字符串的可迭代Unicode代码点.Runes可迭代扩展。 句法
  "A string".runes.forEach((int rune) {
    var character=new String.fromCharCode(rune);
    print(character);
  });
/*
* Unicode代码点通常表示为\uXXXX，其中XXXX是4位十六进制值。要指定多于或少于4个十六进制数字，请将值放在大括号中。可以在dart:core库中使用Runes类的构造函数。
* */
  Runes input = new Runes(' \u{1f605} ');
  print(new String.fromCharCodes(input));
  /*output
  * 😅
  * */
}

f1() {
  String x = 'Runes';
  print(x.codeUnitAt(0));


}
