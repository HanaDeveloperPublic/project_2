import 'package:flutter/material.dart';
import 'package:project_2/pages/morning_dhkir.dart';

import 'my_text.dart';

class FeatureCard extends StatelessWidget {
  const FeatureCard({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const MorningDhkir()),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.5),
          border: Border.all(color: Colors.grey.withOpacity(0.3), width: 0.5),
          borderRadius: const BorderRadius.all(Radius.circular(8)),
        ),
        child: Row(
          children: [
            Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
              Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(image: AssetImage("assets/sunrais.png"), fit: BoxFit.cover),
                ),
                width: 120,
                height: 50,
              ),
            ]),
            Column(
              children: const [
                MyText(' أهلا بك ', fontSize: 30),
                MyText(' إبدأ يومك بأذكار الصباح  ', fontSize: 20),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
