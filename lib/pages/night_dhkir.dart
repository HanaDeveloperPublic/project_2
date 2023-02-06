import 'package:flutter/material.dart';
import 'package:project_2/components/horizontal_night_dhkir.dart';

class NightDhkir extends StatelessWidget {
  const NightDhkir({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () => Navigator.pop(context, false),
          child: Icon(Icons.arrow_back_ios, color: Colors.grey.withOpacity(0.8)),
        ),
        title: const Text(" أذكار المساء",
            style: TextStyle(color: Colors.black, fontSize: 24, fontWeight: FontWeight.w500)),
        backgroundColor: Colors.white.withOpacity(0.9),
        centerTitle: true,
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/ombreh.jpeg"), fit: BoxFit.cover),
        ),
        child: ListView(
          padding: const EdgeInsets.all(24),
          children: const [SizedBox(height: 90), HorizontalNightDhkir()],
        ),
      ),
      backgroundColor: const Color(0xFFf5f7f9),
    );
  }
}
