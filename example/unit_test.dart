/*
* 单元测试涉及测试应用程序的每个单元。它可以帮助开发人员在不运行整个复杂应用程序的情况下测试小功能。

名为“test” 的Dart 外部库提供了编写和运行单元测试的标准方法。

飞镖单元测试涉及以下步骤 -

第1步：安装“test”包

要在当前项目中安装第三方软件包，您需要pubspec.yaml文件。要安装测试包，首先在pubspec.yaml文件中进行以下输入-

dependencies:
test:
* */
//输入后，右键单击pubspec.yaml文件并获取依赖项。它将安装“测试”包。下面给出了WebStorm编辑器中相同的屏幕截图。
/*
 * 句法
test("Description of the test ", () {
   expect(actualValue , matchingValue)
});
group("some_Group_Name", () {
   test("test_name_1", () {
      expect(actual, equals(exptected));
   });
   test("test_name_2", () {
      expect(actual, equals(expected));
   });
})

分组测试用例
您可以对测试用例进行分组，以便为测试代码添加更多含义。如果您有许多测试用例，这有助于编写更清晰的代码。

在给定的代码中，我们正在为split（）函数和trim函数编写测试用例。因此，我们在逻辑上将这些测试用例分组并称之为String。
 *
 * */
import "package:test/test.dart";

int Add(int x, int y) {
// Function to be tested {
  return x + y;
}

int Sub(int x, int y) {
  return x - y - 1;
}

void main() {
  // Define the test
  test("test to check add method", () {
    // Arrange
    var expected = 30;

    // Act
    var actual = Add(10, 20);

    // Asset
    expect(actual, expected);
  });

  test('test to check sub', () {
    var expected = 10;
    // Arrange

    var actual = Sub(30, 20);
    // Act

    expect(actual, expected);
    // Assert
  });
}
