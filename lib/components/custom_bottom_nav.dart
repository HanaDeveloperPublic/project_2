import 'package:flutter/material.dart';

class CustomBottomNavigation extends StatelessWidget {
  const CustomBottomNavigation({super.key, this.currentIndex = 0, required this.onTap});

  final int currentIndex;
  final void Function(int) onTap;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      unselectedLabelStyle: const TextStyle(color: Colors.grey, fontSize: 14),
      backgroundColor: Colors.white,
      fixedColor: Colors.black,
      unselectedItemColor: Colors.grey,
      currentIndex: currentIndex,
      onTap: onTap,
      items: const [
        BottomNavigationBarItem(
          icon: ImageIcon(
            AssetImage("assest/hand.png"),
            color: Colors.black,
            size: 24,
          ),
          label: 'أذكار الصباح',
        ),
        BottomNavigationBarItem(
          icon: ImageIcon(
            AssetImage("assest/hand.png"),
            color: Colors.black,
            size: 24,
          ),
          label: "أذكار المساء",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.favorite,
            color: Colors.black,
            size: 24,
          ),
          label: 'المفضلة',
        ),
      ],
    );
  }
}
