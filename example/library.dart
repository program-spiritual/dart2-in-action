/*
* Dart有一组内置库，可用于存储经常使用的例程。Dart库包含一组类，常量，函数，typedef，属性和异常。

导入库
导入使库中的组件可用于调用者代码。import关键字用于实现相同的目标。dart文件可以有多个import语句。

内置Dart库URI使用dart：scheme来引用库。其他库可以使用文件系统路径或package：scheme来指定其URI。包管理器（如pub工具）提供的库使用package：scheme。

下面给出了在Dart中导入库的语法 -

import 'URI'
请考虑以下代码段 -

import 'dart:io'
import 'package:lib1/libfile.dart'
如果只想使用库的一部分，则可以有选择地导入库。下面给出了相同的语法 -

import 'package: lib1/lib1.dart' show foo, bar;
// Import only foo and bar.

import 'package: mylib/mylib.dart' hide foo;
// Import all names except foo
*
*
* 下面给出了一些常用的库 -
* dart:io

服务器应用程序的文件，套接字，HTTP和其他I / O支持。此库在基于浏览器的应用程序中不起作用。默认情况下会导入此库。

2
dart:core

每个Dart程序的内置类型，集合和其他核心功能。该库是自动导入的。

3
dart: math

数学常数和函数，加上随机数生成器。

4
dart: convert

用于在不同数据表示之间进行转换的编码器和解码器，包括JSON和UTF-8。

5
dart: typed_data
有效处理固定大小数据的列表（例如，无符号8字节整数）。

示例：导入和使用库 以下示例导入内置库dart：math。该片段从数学库中调用sqrt（）函数。此函数返回传递给它的数字的平方根。
封装在库中
Dart脚本可以使用下划线（_）为标识符添加前缀，以将其组件标记为私有。简而言之，Dart库可以通过外部脚本限制对其内容的访问。这被称为封装。下面给出了相同的语法 -

句法
_identifier

创建自定义库
Dart还允许您将自己的代码用作库。创建自定义库涉及以下步骤 -

第1步：声明库

要显式声明库，请使用库语句。声明库的语法如下所示 -

library library_name
// library contents go here
第2步：关联图书馆

您可以通过两种方式关联库 -

在同一目录中
import 'library_name'
来自不同的目录
import 'dir/library_name'
示例：自定义库
首先，让我们定义一个自定义库，calculator.dart。

库前缀
如果导入两个具有冲突标识符的库，则可以为一个或两个库指定前缀。使用'as'关键字指定前缀。下面给出了相同的语法 -

句法
import 'library_uri' as prefix

首先，让我们定义一个库：loggerlib.dart。

library loggerlib;
void log(msg){
   print("Log method called in loggerlib msg:$msg");
}


* */

import 'test.dart' as test;
import 'dart:math';
import 'calculator.dart';
import 'loggerlib.dart';
import 'webloggerlib.dart' as web;

void main() {
  print("Square root of 36 is: ${sqrt(36)}");
  log("hello from loggerlib");
  web.log("hello from webloggerlib");
//  web._log("hello from webloggerlib");
  void main() {
    var num1 = 10;
    var num2 = 20;
    var sum = add(num1, num2);
    var mod = modulus(num1, num2);
    var r = random(10);

    print("$num1 + $num2 = $sum");
    print("$num1 % $num2= $mod");
    print("random no $r");
  }

  main();
}
