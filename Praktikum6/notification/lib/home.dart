import 'package:flutter/material.dart';
import 'package:notification/notifikasi.dart';

class homepage extends StatelessWidget {
  const homepage({super.key});

  Widget build(BuildContext cont) {
    return Scaffold(
      appBar: AppBar(title: Text("home page")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("dibawah ini adalah tombol interaktif"),
            ElevatedButton(
              onPressed: () {
                // Navigator.push(
                //   cont,
                //   MaterialPageRoute(builder: (cont) => Notifikasi()),
                // );

                Navigator.pushNamed(cont, "/notif");
              },
              child: Text("ini halaman notifikasi"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(cont, "/send");
              },
              child: Text("ini halaman send"),
            ),
          ],
        ),
      ),
    );
  }
}
