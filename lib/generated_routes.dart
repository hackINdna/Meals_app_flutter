import 'package:flutter/material.dart';
import 'screens/category_grid.dart';
import 'screens/category_meal_screen.dart';
import 'screens/meals_detail_screen.dart';
import 'screens/tab_screen.dart';
import 'screens/favourite_page.dart';
import 'screens/filter_page.dart';

Route<dynamic> generatedRoutes(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case CategoryGrid.routename:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (context) => const CategoryGrid(),
      );
    case CategoryMealsPage.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (context) =>
            const CategoryMealsPage(categoryId: "", categoryTitle: ""),
      );
    case MealScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (context) => const MealScreen(mealId: ""),
      );
    case TabsScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (context) => const TabsScreen(),
      );
    case FavouriteMeals.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (context) => const FavouriteMeals(),
      );
    case FilterPage.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (context) => const FilterPage(),
      );

    default:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (context) => const Scaffold(
          body: Center(
            child: Text("404 not found"),
          ),
        ),
      );
  }
}
