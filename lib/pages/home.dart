import 'package:flutter/material.dart';
import 'package:project_2/components/custom_bottom_navigation.dart';
import 'package:project_2/pages/favorite_dhkir.dart';
import 'package:project_2/pages/mix_page.dart';
import 'package:project_2/pages/tabs_page.dart';

import 'home_page_test.dart';

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
      const HomePageTest(),
      const TabsPage(),
      const MixPage(),
      // const MorningDhkir(),
      // const NightDhkir(),
      const FavoriteDhkir(),
    ];
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: CustomBottomNavigation(currentIndex: currentIndex, onTap: _onItemTapped),
    );
  }
}
