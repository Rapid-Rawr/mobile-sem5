import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF52B7A5), 

      appBar: AppBar(
        backgroundColor: const Color(0xFF52B7A5),
        // elevation: 0,

        title: const Text(
          "Halo bg",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),

        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 12),
            child: Icon(Icons.nightlight_round, color: Colors.white),
          ),
        ],

      ),

      body: ListView(
        children: [

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Selamat Malam",
              style: const TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),

          const SizedBox(height: 20),

          Container(

            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text("Pengeluaran bulan November",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16)),
                    Icon(Icons.visibility_off, color: Colors.grey),
                  ],
                ),

                const SizedBox(height: 10),

                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: const [
                    Text(
                      "Rp 0 ",
                      style:
                          TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 6),
                    Text("0%",
                        style: TextStyle(
                            color: Colors.orange, fontWeight: FontWeight.bold))
                  ],
                ),

                const SizedBox(height: 15),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [

                    Column(
                      children: [
                        Icon(Icons.credit_card, color: Colors.teal),
                        Text("Total Saldo"),
                        Text("Rp 5 M",
                            style: TextStyle(fontWeight: FontWeight.bold))
                      ],
                    ),

                    Column(
                      children: [
                        Icon(Icons.warning, color: Colors.red),
                        Text("Coba lagi"),
                      ],
                    ),

                    Column(
                      children: [
                        Icon(Icons.wallet, color: Colors.brown),
                        Text("Dompet Kamu"),
                        Text("1 Dompet",
                            style: TextStyle(fontWeight: FontWeight.bold))
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),

          const SizedBox(height: 20),

          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Rapid money tracking",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16)),
                    Text("make it or break it"),
                  ],
                ),
                Icon(Icons.arrow_forward_ios, size: 18),
              ],
            ),
          ),

          const SizedBox(height: 15),

          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.notifications, color: Colors.orange),
                        SizedBox(width: 8),
                        Text(
                          "Pengingat Pembayaran",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Text(
                      "Detail",
                      style: TextStyle(color: Colors.blue),
                    ),
                  ],
                ),
                SizedBox(height: 8),
                Text("Tidak Ada Pengingat Saat Ini"),
              ],
            ),
          ),

          const SizedBox(height: 30),

          // Center(
          //   child: ElevatedButton.icon(
          //     onPressed: () {
          //       Navigator.pop(context);
          //     },
          //     icon: const Icon(Icons.arrow_back),
          //     label: const Text("Kembali"),
          //     style: ElevatedButton.styleFrom(
          //       backgroundColor: Colors.teal,
          //       shape: RoundedRectangleBorder(
          //           borderRadius: BorderRadius.circular(10)),
          //     ),
          //   ),
          // ),


        ],
      ),
    );
  }
}
