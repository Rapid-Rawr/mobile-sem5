import 'package:flutter/material.dart';

class HistoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    List<Widget> historyItems = [
      Container(
        height: 60,
        width: 250,
        color: Colors.amber,
        margin: const EdgeInsets.only(bottom: 10),
        child: const Center(child: Text('Pesanan #001 - Selesai')),
      ),
      Container(
        height: 60,
        width: 250,
        color: Colors.greenAccent,
        margin: const EdgeInsets.only(bottom: 10),
        child: const Center(child: Text('Pesanan #002 - Dikirim')),
      ),
      Container(
        height: 60,
        width: 250,
        color: Colors.redAccent,
        margin: const EdgeInsets.only(bottom: 10),
        child: const Center(child: Text('Pesanan #003 - Dibatalkan')),
      ),
    ];

    return Scaffold(
    
      appBar: AppBar(
        title: const Text("History"),
        backgroundColor: Colors.teal,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            const Text(
              "Riwayat Pesanan",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 20),

            ...historyItems,

            const SizedBox(height: 30),

            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.teal,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                "Semua pesanan sudah ditampilkan",
                style: TextStyle(color: Colors.white),
              ),
            ),

            
          ],
        ),
      ),
    );
  }
}
