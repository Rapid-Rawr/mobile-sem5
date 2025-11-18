import 'package:flutter/material.dart';

class Catch extends StatelessWidget {
  const Catch({super.key});

  @override
  Widget build(BuildContext context) {
    final data = ModalRoute.of(context)!.settings.arguments as Map;

    return Scaffold(
      appBar: AppBar(title: Text("CATCH data PACKAGE ")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("ini adalah halaman penerioma data"),
            Text("ini adalah dta yang dikirim : ${data['message']} "),
            
            ElevatedButton(
              onPressed: () {
               Navigator.pop(context);
              },
              child: Text("kembali ke halaman utama(ini di catch )"),
            ),
          ],
        ),
      ),
    );
  }
}
