import 'package:flutter/material.dart';

class Tabview extends StatelessWidget {
  const Tabview({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(

        appBar: AppBar( //nah agaar ada judulnya kalo mau make menu yang di bawah menggunakan appbar ini
          title: const Text("tab view example"),
        ),

        bottomNavigationBar: const Material(
          // kalo mau iconnya di bawah pake ini
          // appBar: AppBar(
          // title: const Text("tab view example"),
          child: TabBar(
            //dan dibawah ini di commen, lalu yang di aktifkan yang ini
            // bottom: const TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.home),
                text: "home",
              ),
              Tab(
                icon: Icon(Icons.favorite),
                text: "fav",
              ), //index 1, maka tampilannya di tabbarview adalah yang "lov"
              Tab(
                icon: Icon(Icons.settings),
                text: "sett",
              )
            ],
          ),
        ),
        body: const TabBarView(children: [
          //nah tabbarview di sini mnembak dari tabbar diatas, dan di tembak berdasarkan index jadi tidak perlu dipanggil
          Center(
            child: Text("beranda"),
          ),
          Center(
            child: Text("lov"),
          ), //text ini akan di tamppilkan ketika mengklik tombol tab favorit
          Center(
            child: Text("ngagel"),
          ),
        ]),
      ),
    );
  }
}
