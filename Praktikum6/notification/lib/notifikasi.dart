import 'package:flutter/material.dart';

// import '';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
// import 'package:permission_handler/permission_handler.dart';

// inisialisasi plugin notifikasi
final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
        FlutterLocalNotificationsPlugin();

class Notifikasi extends StatelessWidget {
  const Notifikasi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("home page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("dibawah ini adalah tombol interaktif"),
            ElevatedButton(onPressed: (){
              Navigator.pop(context);
            }, child: Text("ini halaman notifikasi")),
            ElevatedButton(onPressed: (){
              showNotifikasi();
            }, 
            child: Text("TAMPILKAN  notifikasi"))
          ],
        ),
      ),
    );
  }
}

Future<void> showNotifikasi() async {
  const AndroidNotificationDetails androidDetails = 
    AndroidNotificationDetails(
      'channel_id',
      'channel_name',
      importance: Importance.max,
      priority: Priority.high,
    );

  const NotificationDetails generalNotificationDetails = 
        NotificationDetails(android: androidDetails);

  await flutterLocalNotificationsPlugin.show(
    0,
    // ini isi notifnya nanti 
    'ini judul ntif', 
    'ini isi notif', 
    generalNotificationDetails,
    );

}