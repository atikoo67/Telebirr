import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

class MyBotttomNavBar extends StatelessWidget {
  const MyBotttomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(context, screens: [], items: []);
  }
}
