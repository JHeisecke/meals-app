import 'package:flutter/material.dart';

import '../../models/meal.dart';
import '../items/meal_item.dart';

class CategoryMealsScreen extends StatelessWidget {
  static const routeName = '/category-meals';
  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final categoryId = routeArgs['id'];
    final categoryTitle = routeArgs['title'];

    final mealsByCategories = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(categoryId);
    }).toList();

    return Scaffold(
      appBar: AppBar(title: Text(categoryTitle)),
      body: Center(
        child: ListView.builder(
          itemBuilder: (context, index) {
            return MealItem(
              id: mealsByCategories[index].id,
              title: mealsByCategories[index].title,
              affordability: mealsByCategories[index].affordability,
              complexity: mealsByCategories[index].complexity,
              duration: mealsByCategories[index].duration,
              imageUrl: mealsByCategories[index].imageUrl,
            );
          },
          itemCount: mealsByCategories.length,
        ),
      ),
    );
  }
}
