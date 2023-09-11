import 'package:flutter/material.dart';

class FilterPage extends StatelessWidget {
  static const String routeName = "/filter-page";
  const FilterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Filter Page"),
      ),
    );
  }
}
