import 'package:flutter/material.dart';
import 'package:project_2/model/data_model.dart';

import 'my_text.dart';

class LargeCategory extends StatefulWidget {
  const LargeCategory({super.key});

  @override
  State<LargeCategory> createState() => _LargeCategoryState();
}

class _LargeCategoryState extends State<LargeCategory> {
  late List<Quran> quranList;
  // static const currentIndex = 0;
  // void next() {
  //   setState(() {
  //     var next = quranList[currentIndex + 1];
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white.withOpacity(0.5),
          border: Border.all(color: Colors.grey.withOpacity(0.3), width: 0.5),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  // MyText(' أهلا بك ', fontSize: 30),
                  MyText(
                    'بلغوا عني و لو بآية ',
                    fontSize: 30,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  for (var quran in Data.quranList) MyText(quran.name, fontSize: 20),
                ],
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            //next
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(
                  Icons.next_plan_outlined,
                  size: 50,
                )
              ],
            ),
          ],
        ));
  }
}
