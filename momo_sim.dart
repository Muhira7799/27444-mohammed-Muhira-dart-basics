 // Student: Muhira Mohammed Abdulrhman Ibrahim
// Reg no: 27444
const String regNo = "27444";
final int d = int.parse(regNo[regNo.length - 1]);
final int t = int.parse(regNo.substring(regNo.length - 2));

int momoFee(int amount) {
  // by MMAI
  if (amount <= 0) return -1;
  if (amount <= 1000) return 20;
  if (amount <= 10000) return 100;
  if (amount <= 150000) return 250;
  return 1500;
}

String formatRwf(int amount) {
  // by MMAI
  bool isNegative = amount < 0;
  String digits = amount.abs().toString();
  String formatted = '';
  int i = 0;

  while (i < digits.length) {
    if (i > 0 && (digits.length - i) % 3 == 0) {
      formatted += ',';
    }
    formatted += digits[i];
    i++;
  }

  if (isNegative) {
    formatted = '-$formatted';
  }

  return '$formatted RWF';
}

bool isValidPin(String pin) {
  // by MMAI
  if (pin.length != 5) return false;
  if (!RegExp(r'^[0-9]+$').hasMatch(pin)) return false;
  if (pin == '12345') return false;
  if (RegExp(r'^(\d)\1{4}$').hasMatch(pin)) return false;

  return true;
}

int sendMoney(int balance, int amount) {
  // by MMAI
  int fee = momoFee(amount);

  if (fee == -1) {
    print('Failed: invalid amount');
    return balance;
  }

  if (amount + fee > balance) {
    print('Failed: insufficient balance');
    return balance;
  }

  int newBalance = balance - amount - fee;

  print(
    'Sent ${formatRwf(amount)} (fee ${formatRwf(fee)}). '
    'New balance: ${formatRwf(newBalance)}',
  );

  return newBalance;
}

int buyAirtime(int balance, int amount) {
  // by MMAI
  if (amount < 100 || amount > 50000) {
    print('Failed: invalid airtime amount');
    return balance;
  }

  if (amount > balance) {
    print('Failed: insufficient balance');
    return balance;
  }

  int newBalance = balance - amount;

  print(
    'Airtime bought: ${formatRwf(amount)}. '
    'New balance: ${formatRwf(newBalance)}',
  );

  return newBalance;
}

void main() {
  // by MMAI
  print('PIN 12345: ${isValidPin('12345')}');
  print('PIN 77777: ${isValidPin('77777')}');
  print('PIN 4821: ${isValidPin('4821')}');
  print('PIN 48a21: ${isValidPin('48a21')}');
  print('PIN 48214: ${isValidPin('48214')}');

  int balance = 20000 + t * 500;
  print('Starting balance: ${formatRwf(balance)}');

  balance = sendMoney(balance, (d + 1) * 3000);
  balance = sendMoney(balance, (d + 1) * 3000);
  balance = sendMoney(balance, (d + 1) * 3000);

  balance = buyAirtime(balance, 1000);
  balance = sendMoney(balance, 0);
  balance = sendMoney(balance, 200000);

  print('Final balance: ${formatRwf(balance)}');

  // Additional tests — expected output in comments
  print(formatRwf(0));         // Expected: 0 RWF
  print(formatRwf(-5000));     // Expected: -5,000 RWF
  print(formatRwf(1250000));   // Expected: 1,250,000 RWF
  print(isValidPin('54321'));  // Expected: true
  print(isValidPin('99999'));  // Expected: false
  print(isValidPin('12a45'));  // Expected: false
}