import 'package:flutter/material.dart';

class PageviewExmpl extends StatelessWidget {
  const PageviewExmpl({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("page view example"),
      ),
      body: PageView(
        scrollDirection: Axis.vertical,
        children: [
          Container(
            color: Colors.red,
            child: const Center(
              child:  Text("page 1", 
              style: TextStyle(fontSize: 24),),
            ),
          ),
          Container(
            color: Colors.blue,
            child: const Center(
              child:  Text("page 2", 
              style: TextStyle(fontSize: 24),),
            ),
          ),
          Container(
            color: Colors.green,
            child: const Center(
              child:  Text("page 3", 
              style: TextStyle(fontSize: 24),),
            ),
          )
        ],
      ),
    );
  }
}
