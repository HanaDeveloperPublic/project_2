import 'package:flutter/material.dart';
import 'package:project_2/components/dhkir_card.dart';
import 'package:project_2/model/Data.dart';

class HorizontalMorningDhkir extends StatelessWidget {
  const HorizontalMorningDhkir({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for (final morningDhkir in Data.morning_dhkir)
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: DhkirCard(dhkir: morningDhkir),
            ),
        ],
      ),
    );
  }
}
