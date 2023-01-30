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
          borderRadius: BorderRadius.circular(8),
          color: Colors.white.withOpacity(0.5),
          border: Border.all(color: Colors.grey.withOpacity(0.3), width: 0.5),
        ),
        child: Row(
          children: [
            Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
              Container(
                height: 50,
                width: 120,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage("assets/sunrais.png"),
                  fit: BoxFit.cover,
                )),
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
