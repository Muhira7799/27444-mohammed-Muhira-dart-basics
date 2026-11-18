
 // Student: Muhira Mohammed Abdulrhman Ibrahim
// Reg no: 27444
const String regNo = '27444';

final int d = int.parse(regNo[regNo.length - 1]);
final int t = int.parse(regNo.substring(regNo.length - 2));

int countVowels(String text) {
  // by MMAI
  int count = 0;
  int i = 0;

  while (i < text.length) {
    String letter = text[i].toLowerCase();

    if ('aeiou'.contains(letter)) {
      count++;
    }

    i++;
  }

  return count;
}

String initials(String fullName) {
  // by MMAI
  String result = '';
  String cleanedName = fullName.trim();

  if (cleanedName.isEmpty) return '';

  List<String> names = cleanedName.split(RegExp(r'\s+'));
  int i = 0;

  while (i < names.length) {
    result += '${names[i][0].toUpperCase()}.';
    i++;
  }

  return result;
}

int momoFee(int amount) {
  // by MMAI
  if (amount <= 0) return -1;
  if (amount <= 1000) return 20;
  if (amount <= 10000) return 100;
  if (amount <= 150000) return 250;

  return 1500;
}

String maskphone(String phone) {
  // by MMAI
  if (phone.length != 10) return 'Invalid phone number';

  return '${phone.substring(0, 3)}*****${phone.substring(8)}';
}

void main() {
  // by MMAI
  print('Reg no: $regNo | D = $d | T = $t');

  String fullName = 'Muhira Mohammed Abdulrhman Ibrahim';
  print('$fullName has ${countVowels(fullName)} vowels');

  print(initials('Muhira Mohammed Abdulrhman Ibrahim'));
  print(initials(' ana uwase '));
  print(initials(' '));

  int x = d;
  int y = t;

  var z = x * 2 + y ~/ 4;
  z += x;

  print(z);
  print(z.isEven);
  print('$z' + '$x');

  drawTriangle(d + 3);
  drawTriangle(0);
  drawTriangle(-2);

  // MoMo receipts
  String phone = '0788123456';
  int totalFees = 0;
  int i = 1;

  while (i <= d + 3) {
    int amount = i * 4000 + t * 100;
    int fee = momoFee(amount);

    print(
      'Receipt $i | $amount RWF | fee $fee RWF | to ${maskphone(phone)}',
    );

    totalFees += fee;
    i++;
  }

  print('Total fees: $totalFees RWF');
}

void drawTriangle(int height) {
  // by MMAI
  int row = 1;

  while (row <= height) {
    String spaces = '';
    int s = 0;

    while (s < height - row) {
      spaces += ' ';
      s++;
    }

    String symbol = row.isOdd ? '*' : '#';
    String result = '';
    int i = 0;

    while (i < row) {
      result += symbol;
      i++;
    }

    print(spaces + result);
    row++;
  }
}
