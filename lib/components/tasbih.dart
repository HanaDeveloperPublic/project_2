import 'package:flutter/material.dart';

import 'my_text.dart';

class LargeCategory2 extends StatelessWidget {
  const LargeCategory2({super.key});

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
                    ' التسبيح',
                    fontSize: 30,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white.withOpacity(0.5),
                            border: Border.all(color: Colors.grey.withOpacity(0.3), width: 0.5),
                          ),
                          child: const MyText("استغفر الله ", fontSize: 20),
                        ),
                      ]),
                      Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.grey.withOpacity(0.5),
                            border: Border.all(color: Colors.grey.withOpacity(0.3), width: 0.5),
                          ),
                          child: const MyText("استغفر الله ", fontSize: 20),
                        ),
                      ]),
                      Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.black.withOpacity(0.3),
                            border: Border.all(color: Colors.grey.withOpacity(0.3), width: 0.5),
                          ),
                          child: const MyText("استغفر الله ", fontSize: 20),
                        ),
                      ]),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white.withOpacity(0.5),
                            border: Border.all(color: Colors.grey.withOpacity(0.3), width: 0.5),
                          ),
                          child: const MyText("الحمد الله ", fontSize: 20),
                        ),
                      ]),
                      Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.grey.withOpacity(0.5),
                            border: Border.all(color: Colors.grey.withOpacity(0.3), width: 0.5),
                          ),
                          child: const MyText("الحمد الله ", fontSize: 20),
                        ),
                      ]),
                      Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.black.withOpacity(0.3),
                            border: Border.all(color: Colors.grey.withOpacity(0.3), width: 0.5),
                          ),
                          child: const MyText("الحمد الله ", fontSize: 20),
                        ),
                      ]),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white.withOpacity(0.5),
                            border: Border.all(color: Colors.grey.withOpacity(0.3), width: 0.5),
                          ),
                          child: const MyText("سبحان الله", fontSize: 20),
                        ),
                      ]),
                      Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.grey.withOpacity(0.5),
                            border: Border.all(color: Colors.grey.withOpacity(0.3), width: 0.5),
                          ),
                          child: const MyText("سبحان الله", fontSize: 20),
                        ),
                      ]),
                      Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.black.withOpacity(0.3),
                            border: Border.all(color: Colors.grey.withOpacity(0.3), width: 0.5),
                          ),
                          child: const MyText("سبحان الله", fontSize: 20),
                        ),
                      ]),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 12,
            ),
          ],
        ));
  }
}
