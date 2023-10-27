import 'dart:io';

void main() {
  stdout.write("Berapa baris awal? "); // Meminta pengguna untuk memasukkan teks
  int baris = int.parse(
      stdin.readLineSync()!); // Jumlah baris bintang yang ingin ditampilkan
  stdout.write("Berapa max baris? "); // Meminta pengguna untuk memasukkan teks
  int maxBaris = int.parse(
      stdin.readLineSync()!); // Jumlah baris bintang yang ingin ditampilkan

  while (maxBaris >= baris) {
    int jumlahBintang =
        maxBaris - baris + 1; // Hitung jumlah bintang pada baris saat ini

    while (jumlahBintang > 0) {
      // Cetak bintang
      stdout.write("*");
      jumlahBintang--;
    }

    // Pindah ke baris berikutnya setelah mencetak bintang
    print("");
    baris++;
  }
}
