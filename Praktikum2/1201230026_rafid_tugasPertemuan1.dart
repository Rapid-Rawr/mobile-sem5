import 'dart:io';

class DataMhs {
String kode;
String identitas;
String prodi;

DataMhs(this.kode, this.identitas, this.prodi);
}

List<DataMhs> kumpulanMhs = [];

void main() {
while (true) {
print("");
print("===== SISTEM DATA MAHASISWA =====");
print("1. TAMBAH MAHASISWA");
print("2. TAMPILKAN SEMUA MAHASISWA");
print("3. CARI MAHASISWA (BERDASARKAN NIM)");
print("4. HAPUS MAHASISWA");
print("5. KELUAR");

```
stdout.write("PILIH MENU: ");
String? menuInput = stdin.readLineSync();
try {
  int menu = int.parse(menuInput ?? "");
  switch (menu) {
    case 1:
      tambahData();
      break;
    case 2:
      tampilkanData();
      break;
    case 3:
      cariData();
      break;
    case 4:
      hapusData();
      break;
    case 5:
      print("PROGRAM SELESAI. TERIMAKASIH");
      exit(0);
    default:
      print("Menu Tidak Tersedia");
  }
} catch (e) {
  print("Invalid Input ${e.toString()}");
}
```

}
}

void tambahData() {
stdout.write("MASUKKAN NIM : ");
String? kode = stdin.readLineSync();
stdout.write("MASUKKAN NAMA : ");
String? identitas = stdin.readLineSync();
stdout.write("MASUKKAN JURUSAN : ");
String? prodi = stdin.readLineSync();

kumpulanMhs.add(DataMhs(kode!, identitas!, prodi!));
print("MAHASISWA BERHASIL DITAMBAHKAN");
}

void tampilkanData() {
print("=== DAFTAR MAHASISWA ===");
for (var data in kumpulanMhs) {
print("NIM: ${data.kode} | NAMA: ${data.identitas} | JURUSAN: ${data.prodi}");
}
}

void cariData() {
stdout.write("MASUKKAN NIM YANG DICARI : ");
String? cariKode = stdin.readLineSync();

for (var data in kumpulanMhs) {
if (data.kode == cariKode) {
print("NIM: ${data.kode} | NAMA: ${data.identitas} | JURUSAN: ${data.prodi}");
}
}
}

void hapusData() {
stdout.write("MASUKKAN NIM YANG INGIN DIHAPUS : ");
String? hapusKode = stdin.readLineSync();

for (var data in List.from(kumpulanMhs)) {
if (data.kode == hapusKode) {
kumpulanMhs.remove(data);
print("MAHASISWA DENGAN NIM $hapusKode BERHASIL DIHAPUS");
}
}
}
