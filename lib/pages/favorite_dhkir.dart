import 'package:flutter/material.dart';
import 'package:project_2/components/vertical_dhkir.dart';

class FavoriteDhkir extends StatelessWidget {
  const FavoriteDhkir({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              "أذكاري المفضلة",
              style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500, fontSize: 24),
            ),
          ],
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: const SafeArea(
        child: FavoriteCard(),
      ),
    );
  }
}
