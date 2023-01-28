import 'package:flutter/material.dart';
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
  @override
  Widget build(BuildContext context) {
    final pages = [
      const MorningDhkir(),
      const NightDhkir(),
      const FavoriteDhkir(),
    ];
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          unselectedLabelStyle: const TextStyle(color: Colors.grey, fontSize: 14),
          backgroundColor: Colors.white,
          fixedColor: Colors.black,
          unselectedItemColor: Colors.grey,
          currentIndex: currentIndex,
          onTap: (newIndex) {
            currentIndex = newIndex;
            setState(() {});
          },
          items: const [
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assest/hand.png"),
                color: Colors.black,
                size: 24,
              ),
              label: 'Morning Dhkir',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assest/hand.png"),
                color: Colors.black,
                size: 24,
              ),
              label: 'Night Dhkir',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite,
                color: Colors.black,
                size: 24,
              ),
              label: 'Favorite Dhkir',
            ),
          ],
        ),
        body: pages[currentIndex]);
  }
}
