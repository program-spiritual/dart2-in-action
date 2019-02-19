/*
* 面向对象编程将对象定义为“具有已定义边界的任何实体。”对象具有以下内容 -

状态 - 描述对象。类的字段表示对象的状态。

行为 - 描述对象可以执行的操作。

标识 - 将对象与一组类似的其他对象区分开的唯一值。两个或多个对象可以共享状态和行为，但不能共享身份。
*
* */

/*
* 级联  (..)  运算符可用于通过对象发出一系列调用。上述示例可以按以下方式重写。
* */

/*toString()
* 此函数返回对象的字符串表示形式。请查看以下示例以了解如何使用toString方法。
* */
class Student {
  void test_method() {
    print("This is a  test method");
  }

  void test_method1() {
    print("This is a  test method1");
  }
}

void main() {
/*  Student s1 = new Student();
  s1.test_method();
  s1.test_method1();*/
  int n = 12;
  print(n.toString());
  new Student()
    ..test_method()
    ..test_method1();
}
