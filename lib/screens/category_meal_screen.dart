import 'package:flutter/material.dart';
import '../dummy_data.dart';
import '../widgets/meal_item.dart';

class CategoryMealsPage extends StatelessWidget {
  final String categoryId;
  final String categoryTitle;
  const CategoryMealsPage(
      {super.key, required this.categoryId, required this.categoryTitle});

  static const String routeName = "/category-maeals-page";

  @override
  Widget build(BuildContext context) {
    final categoryMeals = dummyMeals.where((element) {
      return element.categories.contains(categoryId);
    }).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: ListView.builder(
        itemCount: categoryMeals.length,
        itemBuilder: (context, index) {
          return MealItem(
              id: categoryMeals[index].id,
              title: categoryMeals[index].title,
              imageUrl: categoryMeals[index].imageUrl,
              duration: categoryMeals[index].duration,
              affordability: categoryMeals[index].affordability,
              complexity: categoryMeals[index].complexity);
        },
      ),
    );
  }
}
