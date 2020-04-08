import 'package:flutter/material.dart';
import 'package:marvel_app/screens/categories_heroes_screen.dart';
import 'package:marvel_app/screens/event_heroes_screen.dart';
import 'package:marvel_app/screens/home_page_screen.dart';

class TabsScreen extends StatefulWidget {
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  int _selectedScreenIndex = 0;

  final List<Map<String, Object>> _screens = [
    {'title': 'Home', 'screen': HomePage()},
    {'title': 'Catagories', 'screen': CategoriesHeroesScreen()},
    {'title': 'Favorites', 'screen': EventHeroeScreen()},
  ];

  _selectScreen(int index) {
    setState(() {
      _selectedScreenIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedScreenIndex]['screen'], 
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white ,
          currentIndex: _selectedScreenIndex,
          unselectedItemColor: Colors.grey,
          selectedItemColor: Color.fromRGBO(231, 45, 150, 0.9),
          onTap: _selectScreen,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Home'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.category),
              title: Text('Categories'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.developer_board),
              title: Text('Event Heroes'),
            )
          ]),
    );
  }
}
