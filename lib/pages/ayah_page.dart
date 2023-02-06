import 'package:flutter/material.dart';
import 'package:project_2/components/vertical_ayah.dart';

class AyahPage extends StatelessWidget {
  const AyahPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(mainAxisAlignment: MainAxisAlignment.center, children: const [
          Text(" ايات و فوائد", style: TextStyle(color: Colors.black, fontSize: 24, fontWeight: FontWeight.w500)),
        ]),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: const SafeArea(child: VerticalAyah()),
      backgroundColor: Colors.white,
    );
  }
}
