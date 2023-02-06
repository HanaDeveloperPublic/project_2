import 'package:flutter/material.dart';
import 'package:project_2/model/data_model.dart';

import 'my_text.dart';

class LargeCategory extends StatefulWidget {
  const LargeCategory({super.key});

  @override
  State<LargeCategory> createState() => _LargeCategoryState();
}

class _LargeCategoryState extends State<LargeCategory> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.5),
        border: Border.all(color: Colors.grey.withOpacity(0.3), width: 0.5),
        borderRadius: const BorderRadius.all(Radius.circular(8)),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
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
                count < 5
                    ? MyText(Data.quranList[count].name, fontSize: 20)
                    : const MyText(
                        "واذكر اسم ربك وتبتل إليه تبتيلا",
                        fontSize: 20,
                      ),
              ],
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          InkWell(
            onTap: () {
              setState(() {
                count = count + 1;
              });
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(
                  Icons.next_plan_outlined,
                  size: 50,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
