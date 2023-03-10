import 'package:flutter/material.dart';

import 'ayah_card.dart';
import 'my_text.dart';

class Ayah extends StatelessWidget {
  const Ayah({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const AyahCard()),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.5),
          border: Border.all(color: Colors.grey.withOpacity(0.3), width: 0.5),
          borderRadius: const BorderRadius.all(Radius.circular(8)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(image: AssetImage("assets/benefit.png"), fit: BoxFit.cover),
                ),
                width: 50,
                height: 50,
              ),
              const MyText('  فوائد آيات ', fontSize: 30),
            ],
          ),
        ),
      ),
    );
  }
}
