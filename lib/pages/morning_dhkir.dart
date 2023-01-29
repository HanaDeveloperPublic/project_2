import 'package:flutter/material.dart';
import 'package:project_2/components/horizontal_morning_dhkir.dart';

class MorningDhkir extends StatelessWidget {
  const MorningDhkir({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFf5f7f9),
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              " أذكار الصباح",
              style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500, fontSize: 24),
            ),
          ],
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage("assets/arabic_back.jpeg"),
          fit: BoxFit.cover,
        )),
        child: ListView(
          padding: const EdgeInsets.all(24),
          children: const [
            SizedBox(
              height: 90,
            ),
            HorizontalMorningDhkir(),
          ],
        ),
      ),
    );
  }
}
