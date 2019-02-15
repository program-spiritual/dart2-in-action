/*
* 编程中非常常用的集合是一个数组。Dart以List对象的形式表示数组。一个列表仅仅是对象的有序组。：核心库提供的列表类，使创建和列表的操作。
*
* */

void main() {
//  固定列表
  var lst = new List(3);
  lst[0] = 12;
  lst[1] = 13;
  lst[2] = 11;
  print(lst);
//  可增长列表的长度可以在运行时更改。声明和初始化可增长列表的语法如下所示 -
  var num_list = [1,2,3];
  print(num_list);
  num_list.add(12);
  num_list.add(13);
  print(num_list);
}

/*
* 下表列出了dart：core库中List类的一些常用属性。

Sr.No	方法和描述
1	first
返回第一个元素大小写。

2	isEmpty
如果集合没有元素，则返回true。

3	isNotEmpty
如果集合至少包含一个元素，则返回true。

4	length
返回列表的大小。

5	last
返回列表中的最后一个元素。

6	reversed
以相反的顺序返回包含列表值的可迭代对象。

7	Single
检查列表是否只有一个元素并返回它。
*
* */
