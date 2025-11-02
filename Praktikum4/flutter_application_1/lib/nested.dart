import 'package:flutter/material.dart';

class Nested extends StatelessWidget {
  const Nested({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("nested row dan colom"),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment
              .spaceEvenly, //buat ngasih jarak antar item secara per line
          children: [
            Container(
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.blue, width: 2),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column( //disinilah penerapan nested terjadi karena ada column yang berada di dalam container yang tersusun secara row
                children: [
                  Icon(Icons.home, size: 50, color: Colors.red,),
                  SizedBox(height: 5,),
                  Text("home"),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.blue, width: 2),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column( //disinilah penerapan nested terjadi karena ada column yang berada di dalam container yang tersusun secara row
                children: [
                  Icon(Icons.favorite, size: 50, color: Colors.red,),
                  SizedBox(height: 5,),
                  Text("fav"),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.blue, width: 2),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column( //disinilah penerapan nested terjadi karena ada column yang berada di dalam container yang tersusun secara row
                children: [
                  Icon(Icons.settings, size: 50, color: Colors.red,),
                  SizedBox(height: 5,),
                  Text("Setting"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
