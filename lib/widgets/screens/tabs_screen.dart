import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import './categories_screen.dart';
import './favorite_screen.dart';
import '../utils/main_drawer.dart';

class TabsScreen extends StatefulWidget {
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  final List<Map<String, Object>> _pages = [
    {
      'page': CategoriesScreen(),
      'title': 'Meal Categories',
    },
    {
      'page': FavoriteScreen(),
      'title': 'Favorites',
    },
  ];
  int _selectedPageIndex = 0;

  void _selectedTab(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_pages[_selectedPageIndex]['title']),
      ),
      drawer: MainDrawer(),
      body: _pages[_selectedPageIndex]['page'],
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Theme.of(context).backgroundColor,
        color: Theme.of(context).primaryColor,
        items: <Widget>[
          Icon(Icons.list, size: 30),
          Icon(Icons.star, size: 30),
        ],
        animationDuration: Duration(milliseconds: 300),
        onTap: (index) => _selectedTab(index),
      ),
    );
  }
}
