import 'package:flutter/material.dart';

import '../widgets/category_item.dart';
import '../dummy_data.dart';

class CategoryGrid extends StatelessWidget {
  const CategoryGrid({super.key});
  static const String routename = "/category-grid";

  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: const EdgeInsets.all(20),
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
      children: dummyDataCategory.map((catData) {
        return CategoryItem(
            id: catData.id, title: catData.title, color: catData.color);
      }).toList(),
    );
  }
}
