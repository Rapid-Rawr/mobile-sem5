import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  //pada kasusu ini harus menggunakan stateful, karena butuh perubahan status
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String msg = "niki dereng di touch touch";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(

        //popup
        appBar: AppBar(
          title: Text("pertemuan 5"),

          actions: [
            //starting dari syntax ini adalah untuk membuat menu 3 di atas kanan yang ketika di klik menjadi popup
            PopupMenuButton(
              itemBuilder: (context) => [
                PopupMenuItem(
                  child: Text("profile"),
                  onTap: () {
                    setState(() {
                      msg = "ini sudah di klik";
                    });
                  },
                ),
                PopupMenuItem(
                  child: Text("pengaturan"),
                  onTap: () {
                    setState(() {
                      msg = "ini sudah di klik";
                    });
                  },
                ),
                PopupMenuItem(
                  child: Text("ini menu yang popup"),
                  onTap: () {
                    setState(() {
                      msg = "ini sudah di klik";
                    });
                  },
                ),
              ],
            ),
          ],
        ),

        //alasan popupmenu tidak di dalam "drawer"  karena di anggap berbeda widget
        
        drawer: Drawer(
          //ini menjadi syntax agar memiliki sidebar
          child: ListView(
            children: [
              DrawerHeader(
                child: Icon(
                  Icons.person,
                  size: 100,
                  color: Colors.red,
                ), //Text("Menu draw"),
                decoration: BoxDecoration(color: Colors.blue),
              ),
              ListTile(
                leading: Icon(Icons.menu),
                title: Text("menu 1 "),
                onTap: () {
                  // Navigator.pop(context);
                  setState(() {
                    msg = "menu 1 sudah di klik";
                  });
                },
              ),
              ListTile(
                title: Text("menu 2 "),
                leading: Icon(Icons.home),

                onTap: () {
                  // Navigator.pop(context);  //syntax ini dibuat agar ketika setelah di klik langsuung tertutup
                  setState(() {
                    msg = "menu 2 sudah di klik";
                  });
                },
              ),
            ],
          ),
        ),

        //event listener, snakecase, dan dialog
        body: Builder(
          builder: (context) => Center(
            child: Column(
              children: [
                Text(msg),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      //pada method setstate ini lah letak event listenernya, jadi ketika tombolnya di klik maka akan langsung mengubah pesan yang tampil
                      msg = "tombol sudah di touch";
                    });
                  },
                  child: Text("Event Listener button "),
                ),

                ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text("snakbar sudah di klik sir"),
                        action: SnackBarAction(
                          label: "yessir",
                          onPressed: () {
                            msg = "ini yang di snack bar";
                          },
                        ),
                        duration: Duration(seconds: 2),
                      ),
                    );
                  },
                  child: Text("snackbutton"),
                ),

                ElevatedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text("Konfirmasi"),
                          content: Text("apakah anda yakin ingin melanjukan "),
                          actions: [
                            TextButton(
                              onPressed: () {
                                setState(() {
                                  msg = "dialog sudah di klik";
                                });
                              },
                              child: Text("yakin"),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text("ora, lapo?"),
                            ),
                            // TextButton(
                            //   onPressed: () {
                            //     Navigator.of(context).pop();
                            //   },
                            //   child: Text("bingung yoan?"),
                            // ),
                          ],
                        );
                      },
                    );
                  },
                  child: Text("Tampilkan dialog "),
                ),
              ],
            ),
          ),
        ),

        
      ),
    );
  }
}
