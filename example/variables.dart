//Dart uses the var keyword to achieve the same

var name = "Tom";

//type-checking
String name2 = 'Smith';
int num = 10;
//result in a warning
//String name = 1;
//Dart considers all values as objects
int num2;
void main(){
print(num2);
dynamic x = "tom";
print(x);
//Dart throws an exception if an attempt is made to modify variables declared with the final or const keyword.
final v1 = 12;
const v2 = 13;
//v2 = 12; // Error: Setter not found: 'v2'.
}
