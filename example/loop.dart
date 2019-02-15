/*
* 循环和描述
1	for循环
该对环是一个明确的循环的实现。for循环执行代码块指定的次数。它可用于迭代一组固定的值，例如数组

2	for ... in Loop
for ... in循环用于循环对象的属性。
*
* */

/*
* 无限循环
*
* while 循环
*每次指定的条件求值为true时，while循环都会执行指令。换句话说，循环在执行代码块之前评估条件。
*
* do ... while循环
* 类似于while循环，只是do ... while循环不会在第一次循环执行时评估条件
* */

/*
* 控制声明和描述
1	break
该休息语句用来作为控制了结构的。在循环中使用break会导致程序退出循环。以下是break语句的示例。

2	continue
在继续语句跳过当前迭代的后续语句，并采取控制回到循环的开始。
*
* */

// break demo

void main() {
  outerloop: // This is the label name

  for (var i = 0; i < 5; i++) {
    print("Innerloop: ${i}");
    innerloop:
    for (var j = 0; j < 5; j++) {
      if (j > 3) break;

      // Quit the innermost loop
      if (i == 2) break innerloop;

      // Do the same thing
      if (i == 4) break outerloop;

      // Quit the outer loop
      print("Innerloop: ${j}");
    }
  }

  // continue

  outerloop:
  for (var i = 0; i < 3; i++) {
    print("outerloops:${i}");
    for (var j = 0; j < 5; j++) {
      if (j == 3) {
        continue outerloop;
      }
      print("inner loop ${j}");
    }
  }
}
