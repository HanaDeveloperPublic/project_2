import 'package:flutter/material.dart';
import 'package:project_2/components/vertical_ayah.dart';
import 'package:project_2/components/vertical_dhkir.dart';

class FavoriteDhkir extends StatelessWidget {
  const FavoriteDhkir({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(" المفضلة", style: TextStyle(color: Colors.black, fontSize: 24, fontWeight: FontWeight.w500)),
        backgroundColor: Colors.white.withOpacity(0.9),
        centerTitle: true,
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/ombreh.jpeg"), fit: BoxFit.cover),
        ),
        child: ListView(
          children: const [
            VerticalDhkir(),
            VerticalAyah(),
          ],
        ),
      ),
    );
  }
}
