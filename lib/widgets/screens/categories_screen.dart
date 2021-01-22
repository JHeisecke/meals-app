import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import '../../models/category.dart';
import '../items/category_item.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Meals App")),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Theme.of(context).backgroundColor,
        color: Colors.purple,
        items: <Widget>[
          Icon(Icons.list, size: 30),
          Icon(Icons.add, size: 30),
          Icon(Icons.compare_arrows, size: 30),
        ],
        onTap: (index) {
          //Handle button tap
        },
      ),
      body: GridView(
        padding: const EdgeInsets.all(25),
        children: DUMMY_CATEGORIES
            .map((cat) => CategoryItem(cat.id, cat.title, cat.color))
            .toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
      ),
    );
  }
}
