import 'dart:io';

void main() {
  stdout.write("Siapa Nama Anda: "); // Meminta pengguna untuk memasukkan teks
  String name = stdin.readLineSync()!; // Membaca inputan dari pengguna

  stdout.write("Berapa Umur Anda: "); // Meminta pengguna untuk memasukkan teks
  int age = int.parse(stdin.readLineSync()!);

  stdout.write(
      "Siapa Nama Teman Anda: "); // Meminta pengguna untuk memasukkan teks
  String fname = stdin.readLineSync()!;

  stdout.write(
      "Berapa Umur Teman Anda: "); // Meminta pengguna untuk memasukkan teks
  int fage = int.parse(stdin.readLineSync()!);

  String tambahnama = name + fname;
  int tambahumur = age + fage;

  print("Nama : $tambahnama \nUmur : $tambahumur");
}
