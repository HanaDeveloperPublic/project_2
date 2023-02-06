import 'package:flutter/material.dart';
import 'package:project_2/components/vertical_ayah.dart';

class FavoriteAyah extends StatelessWidget {
  const FavoriteAyah({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(children: const [
      VerticalAyah(),
    ]);
  }
}
