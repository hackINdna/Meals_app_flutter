import 'package:flutter/material.dart';

import '../screens/category_meal_screen.dart';

class CategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final Color color;
  const CategoryItem(
      {super.key, required this.id, required this.title, required this.color});

  void selectedMenu(context) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (_) => CategoryMealsPage(
                  categoryId: id,
                  categoryTitle: title,
                )));
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectedMenu(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(
            colors: [color.withOpacity(0.7), color],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Text(
          title,
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
    );
  }
}
