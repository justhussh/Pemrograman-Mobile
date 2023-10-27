import 'dart:io';

void main() {
  stdout.write("Berapa angka awal? ");
  int firstNumber = int.parse(stdin.readLineSync()!);
  stdout.write("Berapa angka selanjutnya? ");
  int secondNumber = int.parse(stdin.readLineSync()!);

  stdout.write("Operator apa? ");
  String operator = stdin.readLineSync()!;
  switch (operator) {
    case '/':
      print(
          '$firstNumber $operator $secondNumber = ${firstNumber / secondNumber}');
      break;

    case '-':
      print(
          '$firstNumber $operator $secondNumber = ${firstNumber - secondNumber}');
      break;

    case '*':
      print(
          '$firstNumber $operator $secondNumber = ${firstNumber * secondNumber}');
      break;

    case '+':
      print(
          '$firstNumber $operator $secondNumber = ${firstNumber + secondNumber}');
      break;

    default:
      print('Operator tidak ditemukan');
  }
}
