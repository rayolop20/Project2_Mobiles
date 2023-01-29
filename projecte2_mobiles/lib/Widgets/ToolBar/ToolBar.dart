import 'package:flutter/material.dart';
import 'package:projecte2_mobiles/Models/Books.dart';
import 'package:projecte2_mobiles/Windows/HomeWindow.dart';
import 'package:projecte2_mobiles/Windows/MarkersWindows.dart';
import 'package:projecte2_mobiles/Windows/SearchWindow.dart';

class ToolBar extends StatefulWidget {
  const ToolBar({super.key});

  @override
  State<ToolBar> createState() => _ToolBarState();
}

class _ToolBarState extends State<ToolBar> {
  int _selectedIndex = 0;
  List<Books> snapshot = [];
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    FirstScreen(),
    SearchWindows(),
    MarkersWindows(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromARGB(255, 68, 68, 68),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.zoom_in),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.turned_in),
            label: '',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        onTap: _onItemTapped,
      ),
    );
  }
}
