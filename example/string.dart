/*
* String数据类型表示一系列字符。Dart字符串是一系列UTF 16代码单元。

Dart中的字符串值可以使用单引号或双引号或三引号表示。单行字符串使用单引号或双引号表示。三引号用于表示多行字符串。
*
* */
void main() {
  String str1 = 'this is a single line string';
  String str2 = "this is a single line string";
  String str3 = '''this is a multiline line string''';
  String str4 = """this is a multiline line string""";

  print(str1);
  print(str2);
  print(str3);
  print(str4);

  /*
  * 字符串插值
通过将值附加到静态字符串来创建新字符串的过程称为连接或插值。换句话说，它是将字符串添加到另一个字符串的过程。

运算符加（+）是连接/插入字符串的常用机制。
  *
  * */
  String string1 = "hello";
  String string2 = "world";
  String res = string1 + string2;

  print("The concatenated string : ${res}");
/*
* 插值
*
* */

  int n = 1 + 1;

  String stringinterpolation1 = "The sum of 1 and 1 is ${n}";
  print(stringinterpolation1);

  String stringinterpolation2 = "The sum of 2 and 2 is ${2 + 2}";
  print(stringinterpolation2);

  /*
  * dart：core库中的String类还提供了操作字符串的方法。其中一些方法如下 -
Sr.No	方法和描述
1	toLowerCase()
将此字符串中的所有字符转换为小写。

2	toUpperCase()
将此字符串中的所有字符转换为大写。

3	trim()
返回没有任何前导和尾随空格的字符串。

4	compareTo()
将此对象与另一对象进行比较。

5. 	replaceAll()
用给定值替换与指定模式匹配的所有子字符串。

6	split()
在指定分隔符的匹配处拆分字符串并返回子字符串列表。

7	toString()
返回此字符串的子字符串，该字符串从startIndex（包括）延伸到endIndex，exclusive。

8	toString()
返回此对象的字符串表示形式。

9	codeUnitAt()
返回给定索引处的16位UTF-16代码单元。
  *
  * */
}
