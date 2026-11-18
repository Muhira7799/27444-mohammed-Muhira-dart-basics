//Student: Muhira Mohammed Abdulrhman Ibrahim
//Reg no: 27444
const String regNo = "27444";
final int d = int.parse(regNo[regNo.length - 1]);
final int t = int.parse(regNo.substring(regNo.length - 2));

void main() {
  // by MM
  print('Reg no: $regNo | D= $d | T = $t');
int x = d; // your D
int y = t; // your T
var z = x * 2 + y ~/ 4;
z += x;
print(z);
print(z.isEven);
print('$z' + '$x');
}
