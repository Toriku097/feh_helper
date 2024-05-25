import 'package:flutter/material.dart';
import 'package:feh_toolkit/view/home_view.dart';
import 'package:feh_toolkit/view/collection/collection_view.dart';
import 'package:feh_toolkit/view/battle/one_vs_one_view.dart';
import 'package:feh_toolkit/view/battle/one_vs_many_view.dart';

void main() {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    Collection(),
    VsOneBattle(),
    VsManyBattle()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Title
      title: 'Feh Toolkit',

      // Theme
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      themeMode: ThemeMode.dark,

      // Home
      home: Scaffold(
        // Appbar
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 39, 39, 39),
          title:
              const Text("Feh Toolkit", style: TextStyle(color: Colors.white)),
          iconTheme: const IconThemeData(color: Colors.white),
        ),

        // Drawer
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration:
                    BoxDecoration(color: Color.fromARGB(255, 244, 54, 54)),
                child: Center(
                  child: Text(
                    'Feh Toolkit',
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                ),
              ),

              // Option
              Builder(
                builder: (context) => ListTile(
                  title: const Text('Encyclopedia'),
                  selected: _selectedIndex == 0,
                  onTap: () {
                    Navigator.pop(context);
                    _onItemTapped(0);
                  },
                ),
              ),
              Builder(
                builder: (context) => ListTile(
                  title: const Text('Collection'),
                  selected: _selectedIndex == 1,
                  onTap: () {
                    Navigator.pop(context);
                    _onItemTapped(1);
                  },
                ),
              ),
              Builder(
                builder: (context) => ListTile(
                  title: const Text('One-vs-One (IN PROGRESS...)'),
                  selected: _selectedIndex == 2,
                  onTap: () {
                    Navigator.pop(context);
                    _onItemTapped(2);
                  },
                ),
              ),
              Builder(
                builder: (context) => ListTile(
                  title: const Text('One-vs-All (IN PROGRESS...)'),
                  selected: _selectedIndex == 3,
                  onTap: () {
                    Navigator.pop(context);
                    _onItemTapped(3);
                  },
                ),
              ),
            ],
          ),
        ),

        // Content
        body: Center(
          child: _widgetOptions[_selectedIndex],
        ),
      ),
    );
  }
}
