/*
*
*int - 任意大小的整数。INT数据类型用于表示整数。

双 -64位（双精度）浮点数，由IEEE 754标准规定。在双数据类型用于表示小数

声明数字的语法如下 -

int var_name;      // declares an integer variable
double var_name;   // declares a double variable
* */
/*
* Sr.No	财产和描述
1	hashcode
返回数值的哈希码。

2	isFinite的
如果数字有限，则为真; 否则，错误。

3	isFinite
如果数字为正无穷大或负无穷大，则为真; 否则，错误。

4	isInfinite
如果数字是双重非数字值，则为真; 否则，错误。

五	isNegative
如果数字为负，则为真; 否则，错误。

6	sign
返回减一，零或加一，具体取决于数字的符号和数值。

7	isEven
如果数字是偶数，则返回true。

8	isOdd
如果数字是奇数，则返回true。
*
* */

/*
*以下是数字支持的常用方法列表 -

Sr.No	方法和描述
1	abs
返回数字的绝对值。

2	ceil
返回不小于该数字的最小整数。

3	compareTo
将此与其他数字进行比较。

4	Floor
返回不大于当前数字的最大整数。

5	remainder
除以两个数后，返回截断的余数。

6	Round
返回最接近当前数字的整数。

7	toDouble
返回数字的等效值的两倍。

8	toInt
返回该数字的等效整数。

9 toString
返回数字的字符串等效表示形式。

10	truncate
丢弃任何小数位后返回一个整数。
*
* */
void main(){
  int num1 = 10;

  // declare an integer
  double num2 = 10.50;

  // declare a double value
  print(num1);
  print(num2);
  // parse
  print(num.parse('12'));
  print(num.parse('10.91'));
// FormatExcception
  print(num.parse('12A'));
  print(num.parse('AAAA'));
}
