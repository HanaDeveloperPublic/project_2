import 'package:flutter/material.dart';
import 'package:project_2/components/horizontal_night.dart';

class NightDhkir extends StatelessWidget {
  const NightDhkir({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFf5f7f9),
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                " أذكار المساء",
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
              HorizontalNightDhkir()
            ],
          ),
        ));
  }
}
