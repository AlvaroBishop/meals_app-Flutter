import 'package:flutter/material.dart';
import 'package:meals_app/categories_screen.dart';
import 'package:meals_app/category_meals_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData();
    return MaterialApp(
      title: 'Meals App',
      theme: ThemeData(
        fontFamily: 'Raleway'
        ).copyWith(
              textTheme: ThemeData.light().textTheme.copyWith(
                bodySmall: TextStyle(
                  color: Color.fromRGBO(20, 51, 51, 1),
                ),
                bodyMedium: TextStyle(
                  color: Color.fromRGBO(20, 51, 51, 1),
                ),
                titleLarge: TextStyle(
                  fontSize: 20,
                  fontFamily: 'RobotoCondensed',
                  fontWeight: FontWeight.bold,
                  color: Colors.black
                ),
              ),
              canvasColor: Color.fromRGBO(255, 254, 229, 1),
              colorScheme: theme.colorScheme.copyWith(
                primary: Colors.orangeAccent,
                secondary: Colors.amber,

                ),
              
              ),
      // home: CategoriesScreen(),
      initialRoute: '/',
      routes: {
        '/' : (context) => CategoriesScreen(),
        CategoryMealsScreen.routeName: (context) => CategoryMealsScreen()
      },
    );
  }
}

