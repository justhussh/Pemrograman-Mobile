import 'dart:io';

void main() {
  int minyak = 0;

  stdout.write(
      "Apakah ada telur (y/n): "); // Meminta pengguna untuk memasukkan teks
  String adaTelur = stdin.readLineSync()!;

  if (adaTelur == 'y') {
    minyak += 6;
  } else {
    minyak += 1;
  }

  print("Budi akan membeli $minyak");
}
