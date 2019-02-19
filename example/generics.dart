/*
* Dart是一种可选的类型语言。Dart中的集合默认是异构的。换句话说，单个Dart集合可以托管各种类型的值。但是，可以使Dart集合保持同质值。泛型的概念可以用来实现同样的目的。

泛型的使用强制限制集合可以包含的值的数据类型。这种集合被称为类型安全集合。类型安全是一种编程功能，可确保内存块只能包含特定数据类型的数据。

所有Dart集合都通过泛型支持类型安全实现。包含数据类型的一对尖括号用于声明类型安全的集合。声明类型安全集合的语法如下所示。
*
*
* 句法
*
Collection_name <data_type> identifier= new Collection_name<data_type>
* */
import 'dart:collection';

void main() {
  List<String> logTypes = new List<String>();
//  尝试插入指定类型以外的值将导致编译错误。以下示例说明了这一点。
//  logTypes.add(1);
  logTypes.add("WARNING");
  logTypes.add("ERROR");
  logTypes.add("INFO");

  // iterating across list
  for (String type in logTypes) {
    print(type);
  }

  Set<int> numberSet = new Set<int>();
  numberSet.add(100);
  numberSet.add(20);
  numberSet.add(5);
  numberSet.add(60);
  numberSet.add(70);

//   numberSet.add("Tom");
//  compilation error;
  print("Default implementation  :${numberSet.runtimeType}");

  for (var no in numberSet) {
    print(no);
  }

  Queue<int> queue = new Queue<int>();
  print("Default implementation ${queue.runtimeType}");
  queue.addLast(10);
  queue.addLast(20);
  queue.addLast(30);
  queue.addLast(40);
  queue.removeFirst();

  for (int no in queue) {
    print(no);
  }

//  类型安全的映射声明指定数据类型 - key value   Map <Key_type, value_type>
  Map<String, String> m = {'name': 'Tom', 'Id': 'E1001'};
  print('Map :${m}');
}
