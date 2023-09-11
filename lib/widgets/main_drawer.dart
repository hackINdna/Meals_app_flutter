import 'package:flutter/material.dart';

import '../screens/filter_page.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key});

  Widget _buildListTile(String title, IconData icon, VoidCallback tapHandler) {
    return ListTile(
      leading: Icon(
        icon,
        color: Colors.grey,
      ),
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 18,
          color: Colors.black,
          fontWeight: FontWeight.w900,
        ),
      ),
      onTap: tapHandler,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 150,
            alignment: Alignment.centerLeft,
            decoration: const BoxDecoration(
              color: Colors.amber,
            ),
            child: Text(
              "Cooking Time...",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w900,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
          _buildListTile("Meals", Icons.restaurant, () {
            Navigator.pushReplacementNamed(context, '/');
          }),
          _buildListTile("Filters", Icons.settings, () {
            Navigator.pushReplacementNamed(context, FilterPage.routeName);
          })
        ],
      ),
    );
  }
}
