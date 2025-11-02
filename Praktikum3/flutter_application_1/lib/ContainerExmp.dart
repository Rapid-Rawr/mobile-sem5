import 'package:flutter/material.dart';

class ContainerExmp extends StatelessWidget {
  const ContainerExmp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('container example'),
        ),
        body: Center(
          child: Container(
            width: 200,
            height: 100,
            // color: Colors.black,

            decoration:
                BoxDecoration(border: Border.all(color: Colors.blue, width: 4)),
            child: Text("niki container"),
          ),
        ),
      ),
    );
  }
}
