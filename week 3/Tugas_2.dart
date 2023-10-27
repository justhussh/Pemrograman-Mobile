import 'dart:io';

void main() {
  stdout.write(
      "Berapa baris yang ingin di buat? "); // Meminta pengguna untuk memasukkan teks
  int baris = int.parse(
      stdin.readLineSync()!); // Jumlah baris bintang yang ingin ditampilkan

  for (int i = 1; i <= baris; i++) {
    for (int j = 1; j <= i; j++) {
      // Mencetak bintang sebanyak 'i' pada setiap iterasi
      stdout.write("*");
    }
    print(""); // Pindah ke baris berikutnya setelah mencetak bintang
  }
}
