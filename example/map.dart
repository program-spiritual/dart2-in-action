/*
* Map对象是一个简单的键/值对。Map中的键和值可以是任何类型。Map是动态集合。换句话说，Maps可以在运行时增长和缩小。
* */

/*
* var identifier = { key1:value1, key2:value2 [,…..,key_n:value_n] }

* */


void main() {
//  init
  var details = {'Usrname': 'tom', 'Password': 'pass@123'};
  print(details);
//   在运行时向映射文字添加值
  details['Uid'] = 'U1oo1';
  print(details);
//  构造函数
  var details2 = new Map();
  details2['Usrname'] = 'admin';
  details2['Password'] = 'admin@123';
  print(details2);

  /* Sr.No	财产和描述
  1	Keys
  返回表示键的可迭代对象

  2	Values
  返回表示值的可迭代对象

  3	Length
  返回Map的大小

  4	isEmpty
  如果Map是空Map，则返回true

  五	isNotEmpty
  如果Map是非空Map，则返回true*/

  /*
 * Map - 函数
以下是在Dart中操作Maps的常用函数。

Sr.No	功能名称和描述
1	addAll()
向此映射添加其他所有键值对。

2	clear()
从地图中删除所有对。

3	remove()
从地图中删除键及其关联值（如果存在）。

4	forEach()
将f应用于地图的每个键值对。
 *
 * */

  /*
  * Dart中的符号是不透明的动态字符串名称，用于反映库中的元数据。简而言之，符号是一种存储人类可读字符串与优化供计算机使用的字符串之间关系的方法。

Reflection是一种在运行时获取类型元数据的机制，如类中的方法数，它具有的构造函数数或函数中的参数数。您甚至可以调用在运行时加载的类型的方法。

在Dart反射中，dart：mirrors包中提供了特定的类。此库适用于Web应用程序和命令行应用程序。

Symbol obj = new Symbol('name');
// expects a name of class or function or library to reflect
  * */



}
