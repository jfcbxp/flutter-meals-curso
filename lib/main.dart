import 'package:flutter/material.dart';
import 'package:receitas/screens/meal_detail_screen.dart';
import 'screens/categories_screen.dart';
import 'screens/categories_meals_screen.dart';
import 'utils/app_routes.dart';
import 'screens/tabs_screen.dart';

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
      routes: {
        AppRoutes.HOME: (ctx) => TabsScreen(),
        AppRoutes.CATEGORIES_MEALS: (ctx) => CategoriesMealsScreen(),
        AppRoutes.MEAL_DETAIL: (ctx) => MealDetailScreen(),
      },
      onUnknownRoute: ((settings) {
        return MaterialPageRoute(builder: (_) {
          return CategoriesScreen();
        });
      }),
    );
  }
}
