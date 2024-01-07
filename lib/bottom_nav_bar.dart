import 'package:bottom_navbar/pages/homepage.dart';
import 'package:flutter/material.dart';
import 'package:bottom_navbar/pages/settingpage.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;
  static const List<Widget> itemLists = <Widget>[
    HomePage(),
    SettingPage(),
    Text('Setting Page',
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Center(child: itemLists.elementAt(_selectedIndex))),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Setting"),
        ],
        // type: BottomNavigationBarType.shifting,
        backgroundColor: Colors.orangeAccent,
        selectedItemColor: Colors.pink,
        unselectedItemColor: Colors.black,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
