/*
* 与其他编程语言不同，Dart不支持数组。 Dart集合可用于复制数组结构等数据结构。 dart：核心库和其他类在Dart脚本中启用Collection支持。
*
* */
/*
* dart 集合 可以分为
*
*
*1 List
*
* 只是一组有序的对象。 dart：core库提供了List类，可以创建和操作列表。

固定长度列表 - 列表的长度不能在运行时更改。

可增长列表 - 列表的长度可以在运行时更改。

2 Set
Set表示对象的集合，其中每个对象只能出现一次。 dart：core库提供了Set类来实现相同的功能。

3 Map
Map对象是一个简单的键/值对。地图中的键和值可以是任何类型。地图是动态集合。换句话说，Maps可以在运行时增长和缩小。 dart：core库中的Map类提供了相同的支持。

4 Queue
队列是一个可以在两端操纵的集合。当您想要构建先进先出集合时，队列非常有用。简而言之，队列从一端插入数据并从另一端删除。按插入顺序删除/读取值。
*
*
* 来自dart：core库的Iterator类可以轻松进行集合遍历。每个集合都有一个迭代器属性。此属性返回指向集合中对象的迭代器。
* */

import 'dart:collection';

void main() {
  Queue numQ = new Queue();
  numQ.addAll([100, 200, 300]);
  Iterator i = numQ.iterator;
//  moveNext() 函数返回一个布尔值，指示是否存在后续条目。迭代器对象的当前属性返回迭代器当前指向的对象的值。

  while (i.moveNext()) {
    print(i.current);
  }
}
