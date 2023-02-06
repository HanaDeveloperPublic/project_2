import 'package:flutter/material.dart';
import 'package:project_2/pages/duaa.dart';
import 'package:project_2/pages/night_dhkir.dart';

import '../pages/morning_dhkir.dart';
import '../pages/tabs_page.dart';
import 'my_text.dart';

class Category extends StatelessWidget {
  const Category({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 2,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const NightDhkir()),
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
                      Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
                        Container(
                          decoration: const BoxDecoration(),
                          width: 50,
                          height: 50,
                          child: const Icon(Icons.bedtime_outlined),
                        ),
                      ]),
                      Column(
                        children: const [
                          MyText(" ورد المساء", fontSize: 30),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 4,
            ),
            Expanded(
              flex: 2,
              child: InkWell(
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
                      Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
                        Container(
                          decoration: const BoxDecoration(),
                          width: 50,
                          height: 50,
                          child: const Icon(
                            Icons.sunny,
                            color: Colors.black,
                          ),
                        ),
                      ]),
                      Column(
                        children: const [
                          MyText(' ورد الصباح', fontSize: 30),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 2,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const TabsPage()),
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
                      Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
                        Container(
                          decoration: const BoxDecoration(
                            image: DecorationImage(image: AssetImage("assets/tasbih.png"), fit: BoxFit.cover),
                          ),
                          width: 50,
                          height: 50,
                        ),
                      ]),
                      Column(
                        children: const [
                          MyText('تسبيح', fontSize: 30),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 4,
            ),
            Expanded(
              flex: 2,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Duaa(),
                    ),
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
                      Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
                        Container(
                          decoration: const BoxDecoration(),
                          width: 50,
                          height: 50,
                          child: const ImageIcon(AssetImage("assets/hand.png"), size: 20, color: Colors.black),
                        ),
                      ]),
                      Column(
                        children: const [
                          MyText(' أدعية ', fontSize: 30),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
