/*
* Sr.No	基本操作和说明
1	将元素插入列表
可变列表可以在运行时动态增长。所述 List.add() 函数将指定值到列表的结尾，并返回修改的列表对象。

2	更新列表
Dart中的列表可以通过以下方式更新 -

更新索引
使用  List.replaceRange() 函数
3	删除列表项
dart：core库中List类支持的以下函数可用于删除List中的项目。
*
* */

/*
* 可变列表可以在运行时动态增长。所述List.add（）函数将指定值到列表的结尾，并返回修改的列表对象。下面说明了相同的内容。
* */

void main() {
  List l = [1, 2, 3];
  l.add(12);
  print(l);

  /*
  *  List.addAll() 函数接受由逗号分隔的多个值和这些附加到列表
  * */
  l.addAll([13,14]);
  print(l);

  /*
  * 类似地，insertAll（）函数从指定的索引开始插入给定的值列表。insert和insertAll函数的语法如下 -
  * */
  l.insert(0,4);
  print(l);

  l.insertAll(0,[120,130]);
  print(l);
}
