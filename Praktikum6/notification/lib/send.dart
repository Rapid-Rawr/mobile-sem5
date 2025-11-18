import 'package:flutter/material.dart';

class Send extends StatelessWidget {
  const Send({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("send data paket ")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("sewnd data"),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/catch",
                arguments: {'massage': "ini data dari send"});
              },
              child: Text("kirim data"),
            ),
          ],
        ),
      ),
    );
  }
}