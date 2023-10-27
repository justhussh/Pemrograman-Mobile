import 'dart:io';

void main() {
  print("Masukkan banyak *:");
  int banyak = int.parse(stdin.readLineSync()!);

  for (int i = 1; i < banyak; i++) {
    for (int j = 1; j <= banyak - i; j++) {
      stdout.write(" ");
    }

    // Print asterisks
    for (int k = 1; k <= 2 * i - 1; k++) {
      stdout.write('*');
    }

    // Move to the next line
    stdout.writeln("");
  }
  // Print the last line with the specified number of asterisks
  for (int k = 1; k <= banyak; k++) {
    stdout.write('*');
    stdout.write(" ");
  }
  stdout.writeln("");
}
