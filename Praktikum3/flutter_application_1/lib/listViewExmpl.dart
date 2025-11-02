import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Listviewexmpl extends StatelessWidget {
  Listviewexmpl({super.key});

  List<Widget> myWidgets = <Widget>[
    Container(
      height: 50,
      color: Colors.yellow,
      child: const Center(child: Text('Item Pertama')),
    ),
    Container(
      height: 50,
      color: Colors.amber[600],
      child: const Center(child: Text('item 2')),
    ),
    Container(
      height: 50,
      color: Colors.amber[600],
      child: const Center(child: Text('item 3')),
    ),
    Container(
      height: 50,
      color: Colors.amber[600],
      child: const Center(child: Text('item 4')),
    ),
    Container(
      height: 50,
      color: Colors.amber[600],
      child: const Center(child: Text('item 5')),
    ),
    Container(
      height: 50,
      color: Colors.amber[600],
      child: const Center(child: Text('item 6')),
    ),
    Container(
      height: 50,
      color: Colors.amber[600],
      child: const Center(child: Text('item 7')),
    ),
    Container(
      height: 50,
      color: Colors.amber[600],
      child: const Center(child: Text('item 8')),
    ),
    Container(
      height: 50,
      color: Colors.amber[600],
      child: const Center(child: Text('item 6')),
    ),
    Container(
      height: 50,
      color: Colors.amber[600],
      child: const Center(child: Text('item 7')),
    ),
    Container(
      height: 50,
      color: Colors.amber[600],
      child: const Center(child: Text('item 8')),
    ),
    Container(
      height: 50,
      color: Colors.amber[600],
      child: const Center(child: Text('item 6')),
    ),
    Container(
      height: 50,
      color: Colors.amber[600],
      child: const Center(child: Text('item 7')),
    ),
    Container(
      height: 50,
      color: Colors.amber[600],
      child: const Center(child: Text('item 8')),
    ),
    Container(
      height: 50,
      color: Colors.amber[600],
      child: const Center(child: Text('item 6')),
    ),
    Container(
      height: 50,
      color: Colors.amber[600],
      child: const Center(child: Text('item 7')),
    ),
    Container(
      height: 50,
      color: Colors.amber[600],
      child: const Center(child: Text('item 8')),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: const Text('list view Example'),
            ),
            body: ListView.separated(
              //Builder
              // itemCount: myWidgets.length,
              // itemBuilder: (Context, index) => myWidgets[index],
              // // horizontal vertical ?
              // scrollDirection: Axis.horizontal,

              //Separator
              itemCount: myWidgets.length,
              separatorBuilder: (context, index) => const Divider(
                color: Colors.black,
                thickness: 2,
              ),
              itemBuilder: (Context, index) => myWidgets[index],
              // horizontal vertikal ?
              // scrollDerection: Axis.horizontal,
            )));
  }
}
