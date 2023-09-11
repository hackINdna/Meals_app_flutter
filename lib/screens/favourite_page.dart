import 'package:flutter/material.dart';

class FavouriteMeals extends StatelessWidget {
  static const String routeName = "/favourite-page";
  const FavouriteMeals({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Favourites"),
    );
  }
}
