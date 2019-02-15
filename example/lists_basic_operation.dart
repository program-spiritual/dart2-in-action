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

  /*
  * dart允许修改List中项目的值。换句话说，可以重写列表项的值。以下示例说明了相同的情况 -
  * */
  l[0] = 123;
  print(l);
  /*
  * dart：core库中的List类提供了  replaceRange() 函数来修改List项。此函数替换指定范围内元素的值。

使用  List.replaceRange() 函数的语法如下 -
List.replaceRange(int start_index,int end_index,Iterable <items>)
Start_index - 表示要开始替换的索引位置的整数。

End_index - 表示要停止替换的索引位置的整数。

<items> - 表示更新值的可迭代对象。
  * */
  List l2 = [1, 2, 3,4,5,6,7,8,9];
  print('The value of list before replacing ${l2}');
  l2.replaceRange(0,3,[11,23,24]);
  print('''The value of list after replacing the items 
    between the range [0-3] is ${l2}''');

  /*
  *  List.remove() 函数删除列表中第一次出现的指定项。如果从列表中删除指定的值，则此函数返回true。
  *  value - 表示应从列表中删除的项的值。
  * */

  bool res = l2.remove(1);
  print('The value of list after removing the list element ${l2}');

  /*
  * List.removeAt() 函数删除指定索引处的值并将其返回。
  * index - 表示应从列表中删除的元素的索引。
  * */
  dynamic res2 = l2.removeAt(1);
  print('The value of the element ${res2}');

  /*
  *   该List.removeLast() 相同的语法如下 -
  * */
  dynamic res3 = l2.removeLast();
  print('The value of item popped ${res3}');

  /*
  *   所述List.removeRange()  函数删除指定范围内的物品。相同的语法如下 -
  * */
  l2.removeRange(0,3);
  print('''The value of list after removing the list 
    element between the range 0-3 ${l2}''');
}
