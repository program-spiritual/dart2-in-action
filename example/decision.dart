/*
* Sr.No	声明和说明
1	`if statement`  一个如果语句由一个布尔表达式后跟一个或多个语句。

2	`If...Else Statement`  ... Else声明一个如果可以跟一个可选的其他块。在其他如果由测试的布尔表达式块将执行，如果块的计算结果为假。

3	 `else…if Ladder`

4	`` switch语句计算表达式，将表达式的值与case子句匹配，并执行与该case相关的语句。
*
*
* */

void main() {
  var num = 5;
//   if statement
  if (num > 0) {
    print("num ius positive");
  }
//    if else statement
  if (num % 2 == 0) {
    print("Even");
  } else {
    print("odd");
  }

//  switch case statement
  var grade = "A";
  switch (grade) {
    case "A":
      {
        print("Excellent");
      }
      break;
    case "B":
      {
        print("Good");
      }
      break;
    case "C":
      {
        print("Fair");
      }
      break;
    case "D":
      {
        print("Invalid chioce");
      }
      break;
  }
}
