import 'package:flutter/material.dart';
import 'package:project_2/components/custom_bottom_navigation.dart';
import 'package:project_2/pages/favorite_dhkir.dart';
import 'package:project_2/pages/morning_dhkir.dart';
import 'package:project_2/pages/night_dhkir.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

var currentIndex = 0;

class _HomeState extends State<Home> {
  void _onItemTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final pages = [
      const MorningDhkir(),
      const NightDhkir(),
      const FavoriteDhkir(),
    ];
    return Scaffold(
        bottomNavigationBar: CustomBottomNavigation(
          currentIndex: currentIndex,
          onTap: _onItemTapped,
        ),
        body: pages[currentIndex]);
  }
}
