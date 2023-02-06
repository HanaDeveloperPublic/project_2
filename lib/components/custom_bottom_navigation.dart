import 'package:flutter/material.dart';
import 'package:project_2/model/data_model.dart';

class CustomBottomNavigation extends StatelessWidget {
  const CustomBottomNavigation({super.key, this.currentIndex = 0, required this.onTap});

  final int currentIndex;
  final void Function(int) onTap;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        const BottomNavigationBarItem(
          icon: Icon(Icons.home, size: 24, color: Colors.black),
          label: 'الرئيسية',
        ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.front_hand_outlined, color: Colors.black),
          label: ' تسبيح',
        ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.home_max, color: Colors.black),
          label: ' منوعات',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite,
              size: 24,
              color:
                  Data.favoriteAyahList.isNotEmpty && Data.favoriteDhkirList.isNotEmpty ? Colors.purple : Colors.black),
          label: 'المفضلة',
        ),
      ],
      onTap: onTap,
      currentIndex: currentIndex,
      fixedColor: Colors.black,
      backgroundColor: Colors.white,
      unselectedItemColor: Colors.grey,
      unselectedLabelStyle: const TextStyle(color: Colors.grey, fontSize: 14),
    );
  }
}
