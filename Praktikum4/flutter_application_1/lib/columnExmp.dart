import 'package:flutter/material.dart';

class Columnexmp extends StatelessWidget {
  const Columnexmp({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home:  Scaffold(
        appBar: AppBar(
          title: const Text("column example"),
        ),

        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

              // icon di dalam column 
              const Icon(
                Icons.star,
                color: Colors.blue,
                size: 50.0 ,
              ),

              // text did dalam column 
              const Text(
                'ini adal;lah contoh penggunaan column di flutter',
                style: TextStyle(fontSize: 16),
              ),
              
              //container di dalam column 

               Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    border: Border.all(
                        color: const Color.fromARGB(255, 235, 10, 10),
                        width: 4),
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
                        color: const Color.fromARGB(255, 5, 53, 225),
                        width: 4)),
                child: Text("data"),
              ),
            
            ],
          ),
        ),
      ),
    );
  }  
}