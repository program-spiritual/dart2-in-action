/*
* Dart是一种面向对象的语言。它支持面向对象的编程功能，如类，接口等.OOP方面的类是创建对象的蓝图。甲类为对象封装的数据。Dart为这个名为class的概念提供了内置支持。
* */

/*
* 使用class关键字在Dart中声明一个类。类定义以关键字class开头，后跟类名 ; 并且由一对花括号包围的类体。下面给出了相同的语法 -

句法
class class_name {
   <fields>
   <getters/setters>
   <constructors>
   <functions>
}
在类关键字后跟类名。在命名类时必须考虑标识符的规则。

类定义可包括以下内容 -

  字段 - 字段是类中声明的任何变量。字段表示与对象有关的数据。

  Setters和Getters - 允许程序初始化和检索类字段的值。默认的getter / setter与每个类相关联。但是，可以通过显式定义setter / getter来覆盖默认值。

  构造函数 - 负责为类的对象分配内存。

  函数 - 函数表示对象可以采取的操作。它们有时也被称为方法。
* */

/*
  * * 构造函数
*构造函数是类的特殊函数，负责初始化类的变量。Dart定义了一个与该类名称相同的构造函数。构造函数是一个函数，因此可以参数化。但是，与函数不同，构造函数不能具有返回类型。如果未声明构造函数，则会为您提供默认的无参数构造函数。
* Class_name(parameter_list) {
   //constructor body
  }
  * */
/*
* 命名的构造函数
Dart提供了命名构造函数，以使类定义多个构造函数。命名构造函数的语法如下所示 -

语法：定义构造函数
Class_name.constructor_name(param_list)
* */

/*
* this关键字引用类的当前实例。这里，参数名称和类字段的名称是相同的。因此，为了避免歧义，类的字段以this关键字为前缀。以下示例解释相同 -

* */
class Car {
//  该示例声明了一个类Car。该类有一个名为engine的字段。 disp()  是一个简单的函数，打印字段的值 engine。
  Car(String engine) {
    print(engine);
  }

  Car.namedConst(String engine) {
    this.engine = engine;
    print("The engine is : ${engine}");
  }

  String engine = "E1001";

  // function
  void disp() {
    print(engine);
  }
}

//getter and setter methods
class Student {
  String name;
  int age;

  String get stud_name {
    return name;
  }

  void set stud_name(String name) {
    this.name = name;
  }

  void set stud_age(int age) {
    if (age <= 0) {
      print("Age should be greater than 5");
    } else {
      this.age = age;
    }
  }

  int get stud_age {
    return age;
  }
}

// class extend

class Shape {
  void cal_area() {
    print("calling calc area defined in the Shape class");
  }
}
class Circle extends Shape {}
class Root {
  String str;
}
class Child extends Root {}
class Leaf extends Child {}

/*方法重写是子类在其父类中重新定义方法的机制。以下示例说明了相同的情况 -

*/
class Parent {
  void m1(int a){ print("value of a ${a}");}
}
class Child2 extends Parent {
  @override
  void m1(int b) {
    print("value of b ${b}");
  }
}

//静态关键字
//的静态关键字可以应用于一类，即，数据成员字段和方法。静态变量保留其值，直到程序完成执行。静态成员由类名引用。


class StaticMem {
  static int num;
  static disp() {
    print("The value of num is ${StaticMem.num}")  ;
  }
}
/*
创建实例
* 句法
var object_name = new class_name([ arguments ])
在新的关键字负责实例化。

表达式的右侧调用构造函数。如果参数化，构造函数应该传递值。


* */


/*
* 继承的类型
继承可以是以下三种类型 -

单 - 每个类最多可以从一个父类扩展。

Multiple - 一个类可以从多个类继承。Dart不支持多重继承。

多级 - 类可以从另一个子类继承。
* */


//super关键字
//该super关键字用来指一类的直接父。关键字可用于引用变量，属性或方法的超类版本。以下示例说明了相同的情况 -
class Parents3 {
  String msg = "message variable from the parent class";
  void m1(int a){ print("value of a ${a}");}
}
class Child3 extends Parents3 {
  @override
  void m1(int b) {
    print("value of b ${b}");
    super.m1(13);
    print("${super.msg}")   ;
  }
}

void main() {
  Car car = new Car("engine1 ");
//   访问属性
  car.disp();
  Car c1 = new Car.namedConst('E1001');
  Student s1 = new Student();
  s1.stud_name = 'MARK';
  s1.stud_age = 0;
  print(s1.stud_name);
  print(s1.stud_age);
  var obj = new Circle();
  obj.cal_area();

  StaticMem.num = 12;
  // initialize the static variable }
  StaticMem.disp();
  // invoke the static method

  Child3 c3 = new Child3();
  c3.m1(12);
}
