import 'package:flutter/material.dart';
import 'package:project_2/components/my_text.dart';

class PageSection extends StatelessWidget {
  const PageSection({
    super.key,
    this.title,
    required this.widget,
    this.bottomHeight = 32,
  });

  final String? title;
  final Widget widget;
  final double bottomHeight;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (title != null) MyText(title!, fontSize: 40),
        widget,
        SizedBox(height: bottomHeight),
      ],
    );
  }
}
