import 'package:flutter/material.dart';

class Gridexmp extends StatelessWidget {
  const Gridexmp({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('gridview example'),
        ),
        body: GridView.count(
          // primary: true,
          crossAxisCount: 2, //membuat grid dengan 2 kolumn
          crossAxisSpacing: 5, //menambah jarak antar item
          mainAxisSpacing: 10.0, //menambah jarak antar baris
          padding: const EdgeInsets.all(10.0), //menambahkan paddinh di sekitar grid/jarak tepi

          children: <Widget>[
            Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.red,
                  border: Border.all(
                      color: const Color.fromARGB(255, 235, 10, 10), width: 4),
                ),
                child: Text("container di dalam row")),
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 80, 78, 60),
                  border: Border.all(color: Colors.black, width: 4)),
              child: Text("data"),
            ),
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 80, 78, 60),
                  border: Border.all(
                      color: const Color.fromARGB(255, 5, 53, 225), width: 4)),
              child: Text("data"),
            ),],),),);
  }
}
