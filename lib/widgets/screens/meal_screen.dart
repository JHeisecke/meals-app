import 'package:flutter/material.dart';

class MealScreen extends StatelessWidget {
  static const routeName = '/meal';

  @override
  Widget build(BuildContext context) {
    final mealId = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(title: Text(mealId)),
      body: Text("ayuda"),
    );
  }
}
