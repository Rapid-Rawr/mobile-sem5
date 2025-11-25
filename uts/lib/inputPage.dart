import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String _judul = "Pembelian Pakan";
  String _jumlah = "150000";
  String _kategori = "Pengeluaran";

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: Text("Input Keuangan"),
        backgroundColor: Colors.teal,
      ),

      backgroundColor: const Color(0xFFF2F2F2),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: ListView(
          children: [

            Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey.shade400),
              ),

              child: Row(
                children: [
                  Icon(Icons.title, color: Colors.teal),
                  const SizedBox(width: 10),
                  Text(
                    "Judul Transaksi: $_judul",
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 15),

            Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey.shade400),
              ),
              
              child: Row(
                children: [
                  Icon(Icons.attach_money, color: Colors.teal),
                  const SizedBox(width: 10),
                  Text(
                    "Jumlah (Rp): $_jumlah",
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 15),

            Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey.shade400),
              ),
              child: Row(
                children: [
                  Icon(Icons.category, color: Colors.teal),
                  const SizedBox(width: 10),
                  Text(
                    "Kategori: $_kategori",
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 30),

            ElevatedButton.icon(
              onPressed: () {

                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      "Data disimpan: $_judul, Rp $_jumlah, $_kategori",
                    ),
                    duration: const Duration(seconds: 2),
                  ),
                );
              },
              
              icon: Icon(Icons.save, color: Colors.grey,),
              label: Text("Simpan"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal,
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
