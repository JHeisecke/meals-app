import 'package:flutter/material.dart';

import 'widgets/screens/tabs_screen.dart';
import 'widgets/screens/category_meals_screen.dart';
import 'widgets/screens/meal_screen.dart';
import 'widgets/screens/filter_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meals App',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        accentColor: Colors.tealAccent,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
            //sobreescribe fuente por defecto
            bodyText1: TextStyle(
              color: Color.fromRGBO(20, 51, 51, 1),
            ),
            bodyText2: TextStyle(
              color: Color.fromRGBO(20, 51, 51, 1),
            ),
            headline6: TextStyle(
              fontSize: 20,
              fontFamily: 'RobotoCondensed',
              fontWeight: FontWeight.bold,
            )),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => TabsScreen(),
        CategoryMealsScreen.routeName: (context) => CategoryMealsScreen(),
        MealScreen.routeName: (context) => MealScreen(),
        FilterScreen.routeName: (context) => FilterScreen(),
      },
      //Al tratar de entrar a una pantalla que no esté ruteada aca
      //onGenerateRoute especificara donde sera redirigido
      onGenerateRoute: (settings) {
        return MaterialPageRoute(
          builder: (context) => CategoryMealsScreen(),
        );
      },
      //Como ultimo recurso si flutter no encuentra ninguna forma de
      //cargar una pantalla ejecuta onUknownRoute
      //onGenerateRoute is your fallback/ option to have more control about
      //the creation + configuration of routing actions (= MaterialPageRoute
      //that then loads a specific screen widget).
      onUnknownRoute: (settings) {
        return MaterialPageRoute(
          builder: (context) => CategoryMealsScreen(),
        );
      },
    );
  }
}
