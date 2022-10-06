import 'package:flutter/material.dart';
import 'screens/categories_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliMeals',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch().copyWith(
            primary: Colors.pink,
            secondary: Colors.amber,
          ),
          fontFamily: 'Raleway',
          canvasColor: Color.fromARGB(255, 255, 234, 229),
          textTheme: ThemeData.light().textTheme.copyWith(
              titleLarge:
                  TextStyle(fontSize: 20, fontFamily: 'RobotoCondensed'))),
      home: CategoriesScreen(),
    );
  }
}
