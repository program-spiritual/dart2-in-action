import 'dart:core';
import 'dart:mirrors';
import 'Foo.dart';
//以下代码在Symbol类型的帮助下加载Foo.dart库并搜索Foo类。由于我们反映了上述库中的元数据，因此代码导入了dart：mirrors库。

bool checkIf_classAvailableInlibrary(Symbol libraryName, Symbol className) {
  MirrorSystem mirrorSystem = currentMirrorSystem();
  LibraryMirror libMirror = mirrorSystem.findLibrary(libraryName);

  if (libMirror != null) {
    print("Found Library");
    print("checkng...class details..");
    print("No of classes found is : ${libMirror.declarations.length}");
    libMirror.declarations.forEach((s, d) => print(s));

    if (libMirror.declarations.containsKey(className)) return true;
    return false;
  }
}

void reflect_InstanceMethods(Symbol libraryName, Symbol className) {
  MirrorSystem mirrorSystem = currentMirrorSystem();
  LibraryMirror libMirror = mirrorSystem.findLibrary(libraryName);

  if (libMirror != null) {
    print("Found Library");
    print("checkng...class details..");
    print("No of classes found is : ${libMirror.declarations.length}");
    libMirror.declarations.forEach((s, d) => print(s));

    if (libMirror.declarations.containsKey(className)) print("found class");
    ClassMirror classMirror = libMirror.declarations[className];

    print(
        "No of instance methods found is ${classMirror.instanceMembers.length}");
    classMirror.instanceMembers.forEach((s, v) => print(s));
  }
}

main() {
  Symbol lib = new Symbol("foo_lib");
  //library name stored as Symbol

  Symbol clsToSearch = new Symbol("Foo");
  // class name stored as Symbol

  if (checkIf_classAvailableInlibrary(lib, clsToSearch))
    // searches Foo class in foo_lib library
    print("class found..");

  /*
  * 显示类的实例方法数
现在让我们考虑在类中显示实例方法的数量。预定义类ClassMirror帮助我们实现相同的目标。
  * */
  reflect_InstanceMethods(lib, clsToSearch);
//  使用  MirrorSystem  类将存储在符号中的类或类的名称转换回字符串。以下代码显示如何将符号转换为字符串。
  String name_of_lib = MirrorSystem.getName(lib);

  print(lib);
  print(name_of_lib);
}
