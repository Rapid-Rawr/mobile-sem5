import 'package:flutter/material.dart';
import 'historyPage.dart';
import 'inputPage.dart';
import 'homePage.dart'; 

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomNavMain(), 
    );
  }
}

class BottomNavMain extends StatefulWidget {
  @override
  _BottomNavMainState createState() => _BottomNavMainState();
}

class _BottomNavMainState extends State<BottomNavMain> {
  int _selectedIndex = 1; 

  
  final List<Widget> _pages = [
    InputPage(),
    DashboardPage(),
    // HistoryPage(),
  ];


  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index; 
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],

      // Bottom navigation bar
      bottomNavigationBar: BottomNavigationBar(

        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.teal,
        unselectedItemColor: Colors.grey,

        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle_outline),
            label: "Input",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: "Dashboard",
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.history),
          //   label: "History",
          // ),
        ],
      ),
    );
  }
}