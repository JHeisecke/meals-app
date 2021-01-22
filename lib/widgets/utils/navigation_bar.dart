import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import '../screens/categories_screen.dart';
import '../screens/favorite_screen.dart';

class NavigationBar extends StatefulWidget {
  @override
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
  final List<Widget> _pages = [
    CategoriesScreen(),
    FavoriteScreen(),
  ];

  int _selectedPageIndex = 0;

  void _selectedTab(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
        backgroundColor: Theme.of(context).backgroundColor,
        color: Theme.of(context).primaryColor,
        items: <Widget>[
          Icon(Icons.list, size: 30),
          Icon(Icons.star, size: 30),
        ],
        animationDuration: Duration(milliseconds: 300),
        onTap: (index) => _selectedTab(index),
      );
  }
}