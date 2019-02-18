/*
* 枚举用于定义命名常量值。使用enum关键字声明枚举类型。


* */
//枚举列表中的每个符号代表一个整数值，一个大于它之前的符号。默认情况下，第一个枚举符号的值为0。
enum Status { none, running, stopped, paused }

void main() {
  print(Status.values);
  Status.values.forEach((v) => print('value: $v, index: ${v.index}'));
  print('running: ${Status.running}, ${Status.running.index}');
  print('running values: ${Status.values}');
  print('running index: ${Status.values[1]}');
}
