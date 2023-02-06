import 'package:flutter/material.dart';
import 'package:project_2/components/horizontal_morning_dhkir.dart';

class MorningDhkir extends StatelessWidget {
  const MorningDhkir({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () => Navigator.pop(context, false),
          child: Icon(Icons.arrow_back_ios, color: Colors.grey.withOpacity(0.8)),
        ),
        title: const Text(" أذكار الصباح",
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
          children: const [SizedBox(height: 90), HorizontalMorningDhkir()],
        ),
      ),
      backgroundColor: const Color(0xFFf5f7f9),
    );
  }
}
