/*
* 包是一种封装一组编程单元的机制。应用程序有时可能需要集成某些第三方库或插件。每种语言都有一种机制来管理外部软件包，如Maven或Gradle for Java，Nuget for .NET，npm for Node.js等.Dart的软件包管理器是pub。

Pub有助于在存储库中安装包。托管软件包的存储库可以在https://pub.dartlang.org/找到。

在包元数据是在文件中定义，pubsec.yaml 。YAML 是  Yet Another Markup Language 的缩写。该 pub  工具可用于下载应用程序需要的所有各种库。

每个  Dart  应用程序都有一个  pubspec.yaml  文件，其中包含对其他库的应用程序依赖性以及应用程序的元数据，如应用程序名称，作者，版本和描述。
*
*
* 重要的pub命令如下 -

Sr.No	命令和描述
1
'pub get'

帮助您获取应用程序所依赖的所有包。

2
'pub upgrade'

将所有依赖项升级到较新版本。

3
'pub build'

这用于构建您的Web应用程序，它将创建一个构建文件夹，其中包含所有相关脚本。

4
'pub help'

这将为您提供所有不同pub命令的帮助。

如果您使用的是像WebStorm这样的IDE，那么您可以右键单击pubspec.yaml直接获取所有命令 -
* */


/*
* 安装包
考虑应用程序需要解析xml的示例。 Dart XML是一个轻量级的库，它是开源的，可以稳定地解析，遍历，查询和构建XML文档。

完成上述任务的步骤如下 -
*
*
* 将以下内容添加到pubsec.yaml文件中。
*
* name: TestApp
version: 0.0.1
description: A simple console application.
#dependencies:
#  foo_bar: '>=1.0.0 <2.0.0'
dependencies: https://mail.google.com/mail/u/0/images/cleardot.gif
xml:

* */

//右键单击  pubsec.yaml 并获取依赖项。这将在内部触发  `pub get` 命令，如下所示。
//可以在 packages 文件夹下验证下载的包及其相关包。
//由于安装现在已经完成，我们需要在项目中引用 dart xml  。语法如下 -
//import 'package:xml/xml.dart' as xml;
//要读取 XML  字符串并验证输入， Dart XML 使用 parse()  方法。语法如下 -
//xml.parse(String input):
import 'package:xml/xml.dart' as xml;
void main(){
  print("xml");
  var bookshelfXml = '''<?xml version = "1.0"?> 
   <bookshelf> 
      <book> 
         <title lang = "english">Growing a Language</title> 
         <price>29.99</price> 
      </book> 
      
      <book> 
         <title lang = "english">Learning XML</title> 
         <price>39.95</price> 
      </book> 
      <price>132.00</price> 
   </bookshelf>''';

  var document = xml.parse(bookshelfXml);
  print(document.toString());
}
